package pe.egcc.fabricausil.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pe.egcc.fabricausil.model.FabricaModel;
import pe.egcc.fabricausil.service.FabricaService;

@Controller
public class FabricaController {

  @Autowired
  private FabricaService service;
  
  @RequestMapping(value="/index.htm",method=RequestMethod.GET)
  public String index(){
    return "index";
  }
  
  
  @RequestMapping(value="/procesar.htm",method=RequestMethod.POST)
  public String procesar(
      @ModelAttribute FabricaModel bean, 
      Model model){
    
    // Proceso
    bean = service.procesar(bean);
    
    // Reporte
    model.addAttribute("bean", bean);
    
    return "index";
  }
  
}
