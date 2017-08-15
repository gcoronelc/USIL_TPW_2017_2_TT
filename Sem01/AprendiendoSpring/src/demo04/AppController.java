package demo04;

/**
 *
 * @author Gustavo Coronel
 */
public class AppController {
  
  private MateService mateService;

  // Inyección por método setter
  public void setMateService(MateService mateService) {
    this.mateService = mateService;
  }
  
  public int sumar(int n1, int n2){
    return this.mateService.sumar(n1, n2);
  }
  
}
