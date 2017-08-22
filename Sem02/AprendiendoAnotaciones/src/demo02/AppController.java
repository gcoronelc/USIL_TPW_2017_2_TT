package demo02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 *
 * @author Gustavo Coronel
 */
@Component
public class AppController {
  
  private MateService mateService;

  // Inyección por método setter
  @Autowired
  public void setMateService(MateService mateService) {
    this.mateService = mateService;
  }
  
  public int sumar(int n1, int n2){
    return this.mateService.sumar(n1, n2);
  }
  
}
