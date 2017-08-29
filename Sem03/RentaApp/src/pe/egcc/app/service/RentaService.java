package pe.egcc.app.service;

import org.springframework.stereotype.Service;

import pe.egcc.app.model.RentaModel;

@Service
public class RentaService {

  public RentaModel procesarRenta( RentaModel bean) {
    // Variables
    double ingresos, pagoProfesor, gastos, renta;
    // Proceso
    ingresos = bean.getPrecio() * bean.getCantAlu();
    pagoProfesor = bean.getHoras() * bean.getPagoHora();
    double gasAdm = ingresos * 0.05;
    double gasPub = ingresos * 0.08;
    double gasMat = ingresos * 0.03;
    double gasEqu = ingresos * 0.04;
    gastos = gasAdm + gasPub + gasMat + gasEqu;
    renta = ingresos - gastos - pagoProfesor;
    // Reporte
    bean.setIngresos(ingresos);
    bean.setPagoProfesor(pagoProfesor);
    bean.setGastos(gastos);
    bean.setRenta(renta);
    // Retorno
    return bean;
  }
  
}
