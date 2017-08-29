package pe.egcc.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pe.egcc.app.model.RentaModel;
import pe.egcc.app.service.RentaService;

@Controller
public class RentaController {
  
  @Autowired
  private RentaService rentaService;

	@RequestMapping( value="index.egcc", method=RequestMethod.GET)
	public String index(){
		return "index";
	}
	
	@RequestMapping(value="procesar.egcc", method=RequestMethod.POST)
	public String procesar(@ModelAttribute RentaModel bean, Model model){
	  
	  // Proceso
	  bean = rentaService.procesarRenta(bean);
	  
	  // Reporte
	  model.addAttribute("bean", bean);
	  
	  return "index";
	}
	
}
