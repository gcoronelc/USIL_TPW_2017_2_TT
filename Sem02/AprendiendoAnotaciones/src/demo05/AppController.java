package demo05;

import javax.inject.Inject;
import javax.inject.Named;

/**
 *
 * @author Gustavo Coronel
 */
@Named
public class AppController {
  
  @Inject
  private MateService mateService;

  public int sumar(int n1, int n2){
    return this.mateService.sumar(n1, n2);
  }
  
}
