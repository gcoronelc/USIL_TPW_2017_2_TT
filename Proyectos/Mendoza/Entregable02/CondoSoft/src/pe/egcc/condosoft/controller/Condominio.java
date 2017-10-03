package pe.egcc.condosoft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class Condominio {
    @RequestMapping(value="index.htm",method=RequestMethod.GET) 
	public String index(){
    	 return "index";
     }
    
    @RequestMapping(value="reporte.htm",method=RequestMethod.GET) 
	public String reporte(){
    	 return "reporte";
     }
}
