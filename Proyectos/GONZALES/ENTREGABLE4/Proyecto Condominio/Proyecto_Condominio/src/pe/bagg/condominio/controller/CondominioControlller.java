package pe.bagg.condominio.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pe.bagg.conodominio.model.Item;
import pe.bagg.conodominio.model.Persona;
import pe.bagg.condominio.service.LogonService;
import pe.bagg.conodominio.model.Gesinmueble;


@Controller

public class CondominioControlller {
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
	  
@RequestMapping(value="lisinmueble.htm", method=RequestMethod.GET)
public String lisinmueble(Model model){
	 establecerCSS(model, "lisinmueble");
	    return "lisinmueble";
}
@RequestMapping(value="proinmueble.htm", method=RequestMethod.GET)
public String proinmueble(Model model){
	 establecerCSS(model, "proinmueble");
	    return "proinmueble";
}
@RequestMapping(value="obagua.htm", method=RequestMethod.GET)
public String obagua(Model model){
	 establecerCSS(model, "obagua");
	    return "obagua";
}
@RequestMapping(value="obmant.htm", method=RequestMethod.GET)
public String obmant(Model model){
	 establecerCSS(model, "obmant");
	    return "obmant";
}
@RequestMapping(value="auditorio.htm", method=RequestMethod.GET)
public String auditorio(Model model){
	 establecerCSS(model, "auditorio");
	    return "auditorio";
}
@RequestMapping(value="gastos.htm", method=RequestMethod.GET)
public String gastos(Model model){
	 establecerCSS(model, "gastos");
	    return "gastos";
}
@RequestMapping(value="ingresos.htm", method=RequestMethod.GET)
public String ingresos(Model model){
	 establecerCSS(model, "ingresos");
	    return "ingresos";
}
@RequestMapping(value="regispro.htm", method=RequestMethod.GET)
public String regispro(Model model){
  establecerCSS(model, "regispro");
  return "regispro";
}

@RequestMapping(value="main.htm", method=RequestMethod.GET)
public String main(Model model){
	 establecerCSS(model, "main");
	    return "main";
}
@RequestMapping(value="regispro.htm", method=RequestMethod.POST)
public String regispro(
    @ModelAttribute Item item,
    HttpSession session,
    Model model
    ){
  
  Gesinmueble gesinmueble = obtenerinmueble( session );
  
  gesinmueble.regispro(item);
  model.addAttribute("mensaje","Proceso ejecutado correctamente.");
  
  establecerCSS(model, "regispro");
  return "regispro";
}

@RequestMapping(value="gesinmueble.htm", method=RequestMethod.GET)
public String gesinmueble(HttpSession session, Model model){
  
  model.addAttribute( "gesinmueble", obtenerinmueble(session) );
      
  establecerCSS(model, "gesinmueble");
  return "gesinmueble";
}

private Gesinmueble obtenerinmueble(HttpSession session){
	if(session.getAttribute("gesinmueble")==null){
		session.setAttribute("gesinmueble", new Gesinmueble());
		
	}
	Gesinmueble gesinmueble=(Gesinmueble) session.getAttribute("gesinmueble");
			return gesinmueble;
}
private void establecerCSS(Model model,String page){
	model.addAttribute("cssIndex","botonDefault");
    model.addAttribute("cssRegispro", "botonDefault");
    model.addAttribute("cssGesinmueble", "botonDefault");
    model.addAttribute("cssLisinmueble", "botonDefault");
    model.addAttribute("cssProinmueble", "botonDefault");
    model.addAttribute("cssObmant", "botonDefault");
    model.addAttribute("cssAuditorio", "botonDefault");
    model.addAttribute("cssGastos", "botonDefault");
    model.addAttribute("cssIngresos", "botonDefault");
    model.addAttribute("cssMain", "botonDefault");

    switch(page){
    	case "index":
    		model.addAttribute("cssIndex","botonActive");
    		break;
    		case "regispro":
    			model.addAttribute("cssRegispro","botonActive");
    			break;
    		case "gesinmueble":
    			model.addAttribute("cssGesInmueble","botonActive");
    			break;
    		case "lisinmueble":
    			model.addAttribute("cssLisinmueble","botonActive");
    			break;
    		case "proinmueble":
    			model.addAttribute("cssProinmueble","botonActive");
    			break;
    		case "obagua":
    			model.addAttribute("cssObagua","botonActive");
    			break;
    		case "obmant":
    			model.addAttribute("cssMant","botonActive");
    			break;
    		case "auditorio":
    			model.addAttribute("cssAuditorio","botonActive");
    			break;
    		case "gastos":
    			model.addAttribute("cssGastos","botonActive");
    			break;
    		case "ingresos":
    			model.addAttribute("cssIngresos","botonActive");
    			break;
    		case "main":
    			model.addAttribute("cssMain","botonActive");
    			break;
    }
}
}
