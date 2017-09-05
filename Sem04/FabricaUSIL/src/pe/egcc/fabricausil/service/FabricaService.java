package pe.egcc.fabricausil.service;

import org.springframework.stereotype.Service;

import pe.egcc.fabricausil.model.FabricaModel;

@Service
public class FabricaService {

  public FabricaModel procesar(FabricaModel bean) {
    // Variables
    double costoTotalProd;
    double gastosAdm;
    double costoTotal;
    double ganancia;
    double precioVenta;
    double precioPublico;
    // Proceso
    costoTotalProd = bean.getCostoProd() * bean.getFactProd();
    gastosAdm = costoTotalProd * bean.getPorcGastosAdm();
    costoTotal = costoTotalProd + gastosAdm;
    ganancia = costoTotal * bean.getPorcGanancia();
    precioVenta = costoTotal + ganancia;
    precioPublico = precioVenta * 1.18;
    // Reporte
    bean.setCostoTotalProd(costoTotalProd);
    bean.setGastosAdm(gastosAdm);
    bean.setCostoTotal(costoTotal);
    bean.setGanancia(ganancia);
    bean.setPrecioVenta(precioVenta);
    bean.setPrecioPublico(precioPublico);
    // Retorno
    return bean;
  }
  
}
