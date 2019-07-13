package comi.controllers.admin;

import comi.entities.Delivery;
import comi.services.DeliveryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("admin/delivery")
public class DeliveryController {

    @Autowired
    private DeliveryService deliveryService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        modelMap.put("delivery", deliveryService.findAll());
        return "admin.delivery.index";
    }

    @RequestMapping(value = "create", method = RequestMethod.GET)
    public String create(ModelMap modelMap) {
        modelMap.put("delivery", new Delivery());
        return "admin.delivery.create";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(@ModelAttribute("delivery") Delivery delivery) {
        deliveryService.save(delivery);
        return "redirect:/admin/delivery";
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.GET)
    public String update(@PathVariable("id") int id, ModelMap modelMap) {
        modelMap.put("delivery", deliveryService.find(id));
        return "admin.delivery.update";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(@ModelAttribute("delivery") Delivery delivery) {
        deliveryService.save(delivery);
        return "redirect:/admin/delivery";
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id, ModelMap modelMap){
        modelMap.put("id", id);
        return "admin.delivery.delete";
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.DELETE)
    public String delete(@PathVariable("id") int id){
        deliveryService.delete(id);
        return "redirect:/admin/delivery";
    }
}
