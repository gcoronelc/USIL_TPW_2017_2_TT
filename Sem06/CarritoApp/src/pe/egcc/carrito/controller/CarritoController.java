package pe.egcc.carrito.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pe.egcc.carrito.model.Carrito;
import pe.egcc.carrito.model.Item;

@Controller
public class CarritoController {

  @RequestMapping(value="index.htm", method=RequestMethod.GET)
  public String index(Model model){
    establecerCSS(model, "index");
    return "index";
  }
  
  

  @RequestMapping(value="agregar.htm", method=RequestMethod.GET)
  public String agregar(Model model){
    establecerCSS(model, "agregar");
    return "agregar";
  }
  
  
  @RequestMapping(value="agregar.htm", method=RequestMethod.POST)
  public String agregar(
      @ModelAttribute Item item,
      HttpSession session,
      Model model
      ){
    
    Carrito carrito = dameMiCarrito( session );
    
    carrito.agregar(item);
    model.addAttribute("mensaje", "Proceso ejecutado correctamente.");
    
    establecerCSS(model, "agregar");
    return "agregar";
  }
  
  @RequestMapping(value="eliminar.htm", method=RequestMethod.GET)
  public String agregar(
      @RequestParam("id") int id,
      Model model,
      HttpSession session
      ){
    
    Carrito carrito = dameMiCarrito( session );
    carrito.eliminar(id);
    
    establecerCSS(model, "carrito");
    return "carrito";
  }
  
  @RequestMapping(value="limpiar.htm", method=RequestMethod.GET)
  public String limpiar(
      HttpSession session,
      Model model
      ){
    
    Carrito carrito = dameMiCarrito( session );
    carrito.limpiar();
    
    establecerCSS(model, "carrito");
    return "carrito";
  }
  
  @RequestMapping(value="carrito.htm", method=RequestMethod.GET)
  public String carrito(HttpSession session, Model model){
    
    model.addAttribute( "carrito", dameMiCarrito(session) );
        
    establecerCSS(model, "carrito");
    return "carrito";
  }
  
  @RequestMapping(value="pagar.htm", method=RequestMethod.GET)
  public String pagar(Model model){
    establecerCSS(model, "pagar");
    return "pagar";
  }
  
  @RequestMapping(value="pagar.htm", method=RequestMethod.POST)
  public String pagar(
      @RequestParam("nombre") String nombre,
      @RequestParam("email") String email,
      HttpSession session,
      Model model){
    
    // Acceder al carrito
    Carrito carrito = dameMiCarrito(session);
    
    // Grabar transacción
    // Falta, es un reto para ti
    
    // Limpiar carrito
    carrito.limpiar();
    model.addAttribute("mensaje", "Proceso ok");
    
    establecerCSS(model, "pagar");
    return "pagar";
    
  }

  private Carrito dameMiCarrito(HttpSession session) {
    
    if( session.getAttribute("carrito") == null){
      session.setAttribute("carrito", new Carrito());
    }
    
    Carrito carrito = (Carrito) session.getAttribute("carrito");
    return carrito;
    
  }
  
  private void establecerCSS(Model model, String page) {
    model.addAttribute("cssIndex", "botonDefault");
    model.addAttribute("cssAgregar", "botonDefault");
    model.addAttribute("cssCarrito", "botonDefault");
    model.addAttribute("cssPagar", "botonDefault");
    model.addAttribute("cssLimpiar", "botonDefault");
    switch (page) {
    case "index":
      model.addAttribute("cssIndex", "botonActive");
      break;
    case "agregar":
      model.addAttribute("cssAgregar", "botonActive");
      break;
    case "carrito":
      model.addAttribute("cssCarrito", "botonActive");
      break;  
    case "pagar":
      model.addAttribute("cssPagar", "botonActive");
      break;      
    }
  }
}
