package pe.egcc.app.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AppController {
  
  @RequestMapping(value = "/index.htm", method = RequestMethod.GET)
  public String index(){
    return "index";
  }
  
  @RequestMapping(value = "/procesar.htm", method = RequestMethod.POST)
  public String procesar(HttpServletRequest request, Model model){
    // Dato
    int n = Integer.parseInt(request.getParameter("num"));
    // Proceso
    int cua = n * n;
    // Reporte
    model.addAttribute("num", n);
    model.addAttribute("cua", cua);
    // forward
    return "index";
  }
  
  @RequestMapping(value = "/procesar2.htm", method = RequestMethod.POST)
  public String procesar2(@RequestParam("num") int n, Model model){
    // Proceso
    int cua = n * n;
    // Reporte
    model.addAttribute("num", n);
    model.addAttribute("cua", cua);
    // forward
    return "index";
  }
  
}
