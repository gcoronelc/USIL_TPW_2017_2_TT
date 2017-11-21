package pe.egcc.condominio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProcesosController {

  @RequestMapping(value="cuotamante.htm", method = RequestMethod.GET)
  public String cuotaMante(){
    
    return "generaCuotaMant";
  }
  
}
