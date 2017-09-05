package pe.egcc.fabricausil.model;

public class FabricaModel {

  // INPUT
  private String nombre;
  private double costoProd;
  private double factProd;
  private double porcGastosAdm;
  private double porcGanancia;

  // OUTPUT
  private double costoTotalProd;
  private double gastosAdm;
  private double costoTotal;
  private double ganancia;
  private double precioVenta;
  private double precioPublico;

  public FabricaModel() {
  }

  public FabricaModel(String nombre, double costoProd, double factProd, double porcGastosAdm, double porcGanancia) {
    super();
    this.nombre = nombre;
    this.costoProd = costoProd;
    this.factProd = factProd;
    this.porcGastosAdm = porcGastosAdm;
    this.porcGanancia = porcGanancia;
  }

  public String getNombre() {
    return nombre;
  }

  public void setNombre(String nombre) {
    this.nombre = nombre;
  }

  public double getCostoProd() {
    return costoProd;
  }

  public void setCostoProd(double costoProd) {
    this.costoProd = costoProd;
  }

  public double getFactProd() {
    return factProd;
  }

  public void setFactProd(double factProd) {
    this.factProd = factProd;
  }

  public double getPorcGastosAdm() {
    return porcGastosAdm;
  }

  public void setPorcGastosAdm(double porcGastosAdm) {
    this.porcGastosAdm = porcGastosAdm;
  }

  public double getPorcGanancia() {
    return porcGanancia;
  }

  public void setPorcGanancia(double porcGanancia) {
    this.porcGanancia = porcGanancia;
  }

  public double getCostoTotalProd() {
    return costoTotalProd;
  }

  public void setCostoTotalProd(double costoTotalProd) {
    this.costoTotalProd = costoTotalProd;
  }

  public double getGastosAdm() {
    return gastosAdm;
  }

  public void setGastosAdm(double gastosAdm) {
    this.gastosAdm = gastosAdm;
  }

  public double getCostoTotal() {
    return costoTotal;
  }

  public void setCostoTotal(double costoTotal) {
    this.costoTotal = costoTotal;
  }

  public double getGanancia() {
    return ganancia;
  }

  public void setGanancia(double ganancia) {
    this.ganancia = ganancia;
  }

  public double getPrecioVenta() {
    return precioVenta;
  }

  public void setPrecioVenta(double precioVenta) {
    this.precioVenta = precioVenta;
  }

  public double getPrecioPublico() {
    return precioPublico;
  }

  public void setPrecioPublico(double precioPublico) {
    this.precioPublico = precioPublico;
  }

}
