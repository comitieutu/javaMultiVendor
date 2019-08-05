package comi.controllers.client;
import comi.entities.*;
import comi.paypal.PayPalResult;
import comi.paypal.PayPalSucess;
import comi.services.*;
import comi.viewmodels.Item;
import comi.viewmodels.SubmitForm;
import comi.viewmodels.UserViewModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.security.Principal;
import java.util.*;

@Controller
@RequestMapping("checkout")
public class CheckoutController {

    @Autowired
    private ProductService productService;

    @Autowired
    private DeliveryService deliveryService;

    @Autowired
    private UserService userService;

    @Autowired
    private SaleOrderService saleOrderService;

    @Autowired
    private PayPalService payPalService;

    @Autowired
    private SaleOrderDetailService saleOrderDetailService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelMap, HttpSession session, Principal principal) {
        List<Item> cartSession = new ArrayList<Item>();

        if(session.getAttribute("cart") == null){
            return "redirect:/";
        }
        else {
            cartSession = (List<Item>) session.getAttribute("cart");
        }


        List<Item> cart = (List<Item>) session.getAttribute("cart");
        double subTotal = 0;

        if(cart == null || cart.isEmpty()) {
            return "redirect:/";
        } else {
            for (Item item: cart) {
                subTotal += item.getQuantity() * item.getProduct().getUnitprice();
            }
            session.setAttribute("subtotal", subTotal);



            List<Delivery> deliveries = new ArrayList<>();
            deliveryService.findAll().forEach(deliveries :: add);
            modelMap.put("delivery", deliveryService.findAll());

            User user = userService.getByUsername(principal.getName());
            Personinfo personinfo = user.getPersoninfos().get(0);
            UserViewModel userViewModel = new UserViewModel();
            userViewModel.address = personinfo.getAddress();
            userViewModel.firstName = personinfo.getFirstname();
            userViewModel.lastName = personinfo.getLastname();
            userViewModel.email = user.getEmail();
            userViewModel.id = user.getId();

            modelMap.put("user", userViewModel);
            modelMap.put("paypalConfig", payPalService.getPayPalConfig());
            modelMap.put("product", cartSession);

            return "client.checkout";
        }
    }

    @RequestMapping(value = "create", method = RequestMethod.GET)
    public String create() {
        return "redirect:/";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(@ModelAttribute("user") UserViewModel userViewModel,
                         Principal principal,
                         HttpSession session) {
        if (session.getAttribute("cart") == null) {
            return "redirect:/";
        }

        Date date = new Date();

        Shipper shipper = new Shipper();
        shipper.setId(1);

        Payment payment = new Payment();
        payment.setId(1);

        Saleorder saleorder = new Saleorder();
        saleorder.setUser(userService.getByUsername(principal.getName()));
        saleorder.setStatus("Confirmed & Pay on Delivery");
        saleorder.setDeliveryprice(deliveryService.find(userViewModel.deliveryId).getPrice());
        saleorder.setTotalprice((Double) session.getAttribute("subtotal"));
        saleorder.setShipdate(date);
        saleorder.setShipper(shipper);
        saleorder.setPayment(payment);
        saleorder.setDelivery(deliveryService.find(userViewModel.deliveryId));
        saleorder.setOrdernumber(UUID.randomUUID().toString());
        SaveSaveOrderDetailToDb(session, saleorder);
        ClearCheckOutSession(session);
        return "client.checkout.success";
    }

    private void SaveSaveOrderDetailToDb(HttpSession session, Saleorder saleorder) {


        saleorder = saleOrderService.save(saleorder);

        List<Saleorderdetail> saleorderdetails = new ArrayList<>();
        saleorderdetails = SetUpSaleOrderDetail(session, saleorder);
        for (Saleorderdetail saleorderdetail :
                saleorderdetails) {
            saleOrderDetailService.save(saleorderdetail);
        }
    }

    @RequestMapping(value = "success", method = RequestMethod.GET)
    public String success(HttpServletRequest request, HttpSession session, Principal principal) {

        if (session.getAttribute("cart") == null) {
            return "redirect:/";
        }

        PayPalSucess payPalSucess = new PayPalSucess();
        PayPalResult payPalResult = payPalSucess.getPayPal(request, payPalService.getPayPalConfig());

        String total = payPalResult.getPayment_gross();

        SubmitForm submitForm = new SubmitForm();
        submitForm = (SubmitForm) session.getAttribute("submitForm");

        Shipper shipper = new Shipper();
        shipper.setId(1);

        Payment payment = new Payment();
        payment.setId(2);

        Saleorder saleorder = new Saleorder();
        saleorder.setUser(userService.getByUsername(principal.getName()));
        saleorder.setStatus("Payed by Paypal");
        saleorder.setDeliveryprice((Double)deliveryService.find(submitForm.getDeliveryId()).getPrice());
        saleorder.setTotalprice(Double.valueOf(total));
        saleorder.setShipdate(new Date());
        saleorder.setShipper(shipper);
        saleorder.setPayment(payment);
        saleorder.setDelivery(deliveryService.find(submitForm.getDeliveryId()));
        saleorder.setOrdernumber(UUID.randomUUID().toString());
        SaveSaveOrderDetailToDb(session, saleorder);

        ClearCheckOutSession(session);
        return "client.checkout.success";
    }

    @RequestMapping(value = "savesubmitform", method = RequestMethod.GET)
    public void saveSubmitForm(HttpServletRequest request, HttpSession session) {
        SubmitForm submitForm = new SubmitForm();
        submitForm.setFirstName(request.getParameter("firstName"));
        submitForm.setLastName(request.getParameter("lastName"));
        submitForm.setAddress(request.getParameter("address"));
        submitForm.setEmail(request.getParameter("email"));
        submitForm.setDeliveryId(Integer.parseInt(request.getParameter("delivery")));

        session.setAttribute("submitForm", submitForm);
    }

    public List<Saleorderdetail> SetUpSaleOrderDetail(HttpSession session, Saleorder saleorder) {
        List<Saleorderdetail> saleorderdetails = new ArrayList<>();
        List<Item> items = new ArrayList<>();
        items = (List<Item>) session.getAttribute("cart");
        for (Item item :
                items) {
            saleorderdetails.add(
                    new Saleorderdetail(
                            item.getProduct(),
                            saleorder,
                            item.getQuantity(),
                            item.getProduct().getUnitprice(),
                            0)
            );
        }
        return saleorderdetails;
    }

    private void ClearCheckOutSession(HttpSession session) {
        session.removeAttribute("cart");
    }
}
