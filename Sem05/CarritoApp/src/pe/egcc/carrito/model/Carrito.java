package pe.egcc.carrito.model;

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
    return impuesto;
  }
  
  public double getTotal() {
    return total;
  }

  public void agregar(Item item){
    lista.add(item);
    item.setSubtotal(item.getPrecio() * item.getCant());
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
