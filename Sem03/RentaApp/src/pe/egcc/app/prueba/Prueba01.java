package pe.egcc.app.prueba;

import pe.egcc.app.model.RentaModel;
import pe.egcc.app.service.RentaService;

public class Prueba01 {

  public static void main(String[] args) {
    // Dato
    RentaModel bean = new RentaModel("Spring", 600.0, 30, 30, 160.0);
    // Proceso
    RentaService service = new RentaService();
    bean = service.procesarRenta(bean);
    // Reporte
    System.out.println("Curso: " + bean.getCurso());
    System.out.println("Ingresos: " + bean.getIngresos());
    System.out.println("Pago al profesor: " + bean.getPagoProfesor());
    System.out.println("Gastos: " + bean.getGastos());
    System.out.println("Renta: " + bean.getRenta());
  }
  
  
}
