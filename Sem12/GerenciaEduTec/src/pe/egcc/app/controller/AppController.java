package pe.egcc.app.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pe.egcc.app.service.ReporteService;

@Controller
public class AppController {
  
  @Autowired
  private ReporteService reporteService;

  @RequestMapping(value="index.htm", method=RequestMethod.GET)
  public String index(){
    return "index";
  }
  
  @RequestMapping(value="resumen.htm", method=RequestMethod.GET)
  public String resumen(Model model){
    
    List<String> ciclos = reporteService.leerCiclos();
    model.addAttribute("ciclos", ciclos);
    
    return "resumen";
  }
  
  @RequestMapping(value="resumen.htm", method=RequestMethod.POST)
  public String resumen(
      @RequestParam("ciclo") String ciclo,
      Model model
      ){
    
    // Ciclos
    List<String> ciclos = reporteService.leerCiclos();
    model.addAttribute("ciclos", ciclos);
    
    // Resumen
    List<Map<String, Object>> lista;
    lista = reporteService.repoResumenCurso(ciclo);
    model.addAttribute("lista", lista);
    
    return "resumen";
  }
  
  
}
