package pe.egcc.condominio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pe.egcc.condominio.model.Persona;
import pe.egcc.condominio.service.LogonService;

@Controller
public class AppController {

  @Autowired
  private LogonService logonService;
  
  @RequestMapping(value="index.htm", method=RequestMethod.GET)
  public String index(){
    return "index";
  }
  
  @RequestMapping(value="ingresar.htm", method=RequestMethod.POST)
  public String ingresar(
      @RequestParam("usuario") String usuario, 
      @RequestParam("clave") String clave,
      Model model){
    
    String destino;
    
    try {
      
      Persona bean = logonService.validarUsuario(usuario, clave);
      model.addAttribute("bean", bean);
      destino = "main";
      
    } catch (Exception e) {
    
      model.addAttribute("error", e.getMessage());
      destino = "index";
    }
    
    return destino;
  }
  
  
  
}
