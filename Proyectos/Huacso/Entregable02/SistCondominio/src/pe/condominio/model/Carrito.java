package pe.condominio.model;

import java.util.ArrayList;
import java.util.List;

public class Carrito {
  
  private List<Item> lista;
  private double importe;
  private double impuesto;
  private double total;
  
  public Carrito() {
    lista = new ArrayList<>();
  }
  
  public List<Item> getLista() {
    return lista;
  }
  
  public double getImporte() {
    return importe;
  }
  
  public double getImpuesto() {
    return Math.rint(impuesto);
  }
  
  public double getTotal() {
    return Math.rint(total);
  }

  public void agregar(Item item){
    // Variable de control
    Item itemBuscar = null;
    // Buscar Item
    for(Item i: lista){
      if(i.getProducto().equals(item.getProducto())){
        itemBuscar = i;
      }
    }
    // Proceso
    if(itemBuscar == null){
      lista.add(item);
      item.setSubtotal(item.getPrecio() * item.getCant());
    } else {
      itemBuscar.setCant( itemBuscar.getCant() + item.getCant() );
      itemBuscar.setPrecio( Math.min(itemBuscar.getPrecio(), item.getPrecio()));
      itemBuscar.setSubtotal(itemBuscar.getPrecio() * itemBuscar.getCant());
    }
    // Paso finales
    ordenarIds();
    calcularTotal();
  }
  
  public void eliminar(int id){
    // Proceso
    for(Item item: lista){
      if( item.getId() == id ){
        lista.remove(item);
        break;
      }
    }
    // Paso finales
    ordenarIds();
    calcularTotal();
  }
  
  public void limpiar(){
    lista.clear();
    ordenarIds();
    calcularTotal();
  }

  private void calcularTotal() {
    total = 0.0;
    for(Item item: lista){
      total += item.getSubtotal();
    }
    importe = total / 1.18;
    impuesto = total - importe;
  }

  private void ordenarIds() {
    for(int i=0; i < lista.size(); i++){
      lista.get(i).setId(i + 1);
    }
  }
  
}
