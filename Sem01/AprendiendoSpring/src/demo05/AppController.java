package demo05;

/**
 *
 * @author Gustavo Coronel
 */
public class AppController {

  private MateService mateService;
  private String nombre;
  private String ciudad;

  /**
   * Constructor por defecto
   */
  public AppController() {
  }

  /**
   * Constructor adicional. 
   * Para hacer la inyección.
   *
   * @param mateService
   */
  public AppController(MateService mateService) {
    this.mateService = mateService;
  }

  /**
   * Constructor adicional.
   * 
   * @param mateService
   * @param nombre 
   */
  public AppController(MateService mateService, String nombre) {
    this.mateService = mateService;
    this.nombre = nombre;
    System.out.println("Hola " + nombre);
  }

  public AppController(MateService mateService, String nombre, String ciudad) {
    this.mateService = mateService;
    this.nombre = nombre;
    this.ciudad = ciudad;
    System.out.println("Hola " + nombre + " de " + ciudad);
  }
  
  

  public int sumar(int n1, int n2) {
    return this.mateService.sumar(n1, n2);
  }

}
