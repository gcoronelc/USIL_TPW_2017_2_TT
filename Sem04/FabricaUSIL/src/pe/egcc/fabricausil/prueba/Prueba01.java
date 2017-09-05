package pe.egcc.fabricausil.prueba;

import pe.egcc.fabricausil.model.FabricaModel;
import pe.egcc.fabricausil.service.FabricaService;

public class Prueba01 {
  
  public static void main(String[] args) {
    // Datos
    FabricaModel bean = new FabricaModel("pantalon", 55.00, 1.2, 0.05, 0.80);
    // Proceso
    FabricaService service = new FabricaService();
    bean = service.procesar(bean);
    // Reporte
    System.out.println("Costo total de produccion: " + bean.getCostoTotalProd());
    System.out.println("Gastos administrativos: " + bean.getGastosAdm());
    System.out.println("Costo total: " + bean.getCostoTotal());
    System.out.println("Ganancia: " + bean.getGanancia());
    System.out.println("Precio de Venta: " + bean.getPrecioVenta());
    System.out.println("Precio al Publico: " + bean.getPrecioPublico());
  }
  
}
