package demo03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 *
 * @author Gustavo Coronel
 */
@Component
public class AppController {
  
  private MateService mateService;

  @Autowired
  public AppController(MateService mateService) {
    this.mateService = mateService;
  }

  public int sumar(int n1, int n2){
    return this.mateService.sumar(n1, n2);
  }
  
}
