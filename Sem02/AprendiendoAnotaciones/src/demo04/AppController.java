package demo04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 *
 * @author Gustavo Coronel
 */
@Component
public class AppController {
  
  @Autowired
  private MateService mateService;

  public int sumar(int n1, int n2){
    return this.mateService.sumar(n1, n2);
  }
  
}
