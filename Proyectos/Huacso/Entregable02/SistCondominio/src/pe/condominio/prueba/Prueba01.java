package pe.condominio.prueba;

import pe.condominio.model.Carrito;
import pe.condominio.model.Item;

public class Prueba01 {

  public static void main(String[] args) {
    
    // Carrito
    Carrito carrito = new Carrito();
    
    // Items
    carrito.agregar(new Item("Producto 1", 100, 5));
    carrito.agregar(new Item("Producto 2", 90, 8));
    carrito.agregar(new Item("Producto 3", 135, 7));
    
    // Reporte
    for(Item item: carrito.getLista()){
      System.out.println(item.getId() + " | " + item.getProducto() 
        + " | " + item.getPrecio() + " | " + item.getCant() + " | " + item.getSubtotal());
    }
    System.out.println("Importe: " + carrito.getImporte());
    System.out.println("Impuesto: " + carrito.getImpuesto());
    System.out.println("Total: " + carrito.getTotal());
    
  }
  
  
}
