package comi.controllers.admin;

import comi.entities.Saleorder;
import comi.services.SaleOrderDetailService;
import comi.services.SaleOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("admin/saleorder")
public class SaleOrderController {

	@Autowired
	private SaleOrderService saleOrderService;

	@Autowired
	private SaleOrderDetailService saleOrderDetailService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("saleOrder", saleOrderService.findAll());
		return "admin.saleorder.index";
	}
	
	@RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
	public String update(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.put("saleorderdetail", saleOrderDetailService.getSaleOrderDetail(id));
		return "admin.saleorder.detail";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@ModelAttribute("saleorder") Saleorder saleorder) {
		saleOrderService.save(saleorder);
		return "redirect:/admin/category";
	}

	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id, ModelMap modelMap){
		modelMap.put("id", id);
		return "admin.saleorder.delete";
	}

	@RequestMapping(value = "delete/{id}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("id") int id){
		saleOrderService.delete(id);
		return "redirect:/admin/saleorder";
	}
	
}
