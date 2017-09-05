package pe.egcc.fabricausil.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FabricaController {

  @RequestMapping(value="/index.htm",method=RequestMethod.GET)
  public String index(){
    return "index";
  }
  
}
