package demo02;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 *
 * @author Gustavo Coronel
 */
public class Prueba01 {

  public static void main(String[] args) {

    // Instanciar contexto
    String contexto = "/demo02/contexto.xml";
    BeanFactory beanFactory;
    beanFactory = new ClassPathXmlApplicationContext(contexto);

    // Acceso al bean
    MateService service;
    service = beanFactory.getBean("mate", MateService.class);
    
    // Prueba del bean
    System.out.println("3 + 2 = " + service.sumar(3, 2));
        
  }

}