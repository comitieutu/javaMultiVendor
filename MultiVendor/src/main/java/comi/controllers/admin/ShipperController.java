package comi.controllers.admin;

import comi.entities.Shipper;
import comi.services.ShipperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("admin/shipper")
public class ShipperController {

    @Autowired
    private ShipperService shipperService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        modelMap.put("shippers", shipperService.findAll());
        return "admin.shipper.index";
    }

    @RequestMapping(value = "create", method = RequestMethod.GET)
    public String create(ModelMap modelMap) {
        modelMap.put("shipper", new Shipper());
        return "admin.shipper.create";
    }

    @RequestMapping(value = "create", method = RequestMethod.POST)
    public String create(@ModelAttribute("shipper") Shipper shipper) {
        shipperService.save(shipper);
        return "redirect:/admin/shipper";
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.GET)
    public String create(@PathVariable("id") int id, ModelMap modelMap) {
        modelMap.put("shipper", shipperService.find(id));
        return "admin.shipper.update";
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(@ModelAttribute("category") Shipper shipper) {
        shipperService.save(shipper);
        return "redirect:/admin/shipper";
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id, ModelMap modelMap){
        modelMap.put("id", id);
        return "admin.shipper.delete";
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.DELETE)
    public String delete(@PathVariable("id") int id){
        shipperService.delete(id);
        return "redirect:/admin/shipper";
    }
}
