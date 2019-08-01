package comi.controllers.client;
import comi.entities.*;
import comi.paypal.PayPalResult;
import comi.paypal.PayPalSucess;
import comi.services.*;
import comi.viewmodels.Item;
import comi.viewmodels.UserViewModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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

    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelMap, HttpSession session, Principal principal) {
        List<Item> fakeSession = new ArrayList<Item>();
        fakeSession.add(new Item(productService.find(5), 1));
        fakeSession.add(new Item(productService.find(5), 1));
        session.setAttribute("cart", fakeSession);

        List<Item> cart = (List<Item>) session.getAttribute("cart");
        double subTotal = 0;

        if(cart == null || cart.isEmpty()) {
            return "redirect:/cart";
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
            modelMap.put("product", fakeSession);

            return "client.checkout";
        }
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(@ModelAttribute("user") UserViewModel userViewModel,
                         @RequestParam(required = false, value = "cod") String save,
                         @RequestParam(required = false, value = "paypal") String paypal,
                         Principal principal,
                         HttpSession session) {
        Date date = new Date();

        if(paypal != null ){
            System.out.println("paypal");
        }

        if(save != null) {
            System.out.println("save");
        }

        Shipper shipper = new Shipper();
        shipper.setId(1);

        Payment payment = new Payment();
        payment.setId(1);

        User user = new User();
        Saleorder saleorder = new Saleorder();
        saleorder.setUser(userService.getByUsername(principal.getName()));
        saleorder.setStatus("Confirmed");
        saleorder.setDeliveryprice(deliveryService.find(userViewModel.deliveryId).getPrice());
        saleorder.setTotalprice((Double) session.getAttribute("subtotal"));
        saleorder.setShipdate(date);
        saleorder.setShipper(shipper);
        saleorder.setPayment(payment);
        saleorder.setDelivery(deliveryService.find(userViewModel.deliveryId));
        saleorder.setOrdernumber(UUID.randomUUID().toString());

        saleOrderService.save(saleorder);
        return "redirect:/";
    }

    @RequestMapping(value = "success", method = RequestMethod.GET)
    public String success(HttpServletRequest request) {
        PayPalSucess payPalSucess = new PayPalSucess();
        PayPalResult payPalResult = payPalSucess.getPayPal(request, payPalService.getPayPalConfig());
        String addressStreet = payPalResult.getAddress_street();
        return "client.checkout.success";
    }
}
