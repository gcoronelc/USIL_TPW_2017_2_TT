package pe.egcc.condominio.model;

public class Estado {

  private int code;
  private String mensaje;
  
  public Estado() {
  }

  public Estado(int code, String mensaje) {
    super();
    this.code = code;
    this.mensaje = mensaje;
  }

  public int getCode() {
    return code;
  }

  public void setCode(int code) {
    this.code = code;
  }

  public String getMensaje() {
    return mensaje;
  }

  public void setMensaje(String mensaje) {
    this.mensaje = mensaje;
  }
  
  
}
