package demo05;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 *
 * @author Gustavo Coronel
 */
public class Prueba01 {

  public static void main(String[] args) {

    // Instanciar contexto
    String contexto = "/demo05/contexto.xml";
    BeanFactory beanFactory;
    beanFactory = new ClassPathXmlApplicationContext(contexto);

    // Acceso al bean
    AppController control;
    control = beanFactory.getBean(AppController.class);
    
    // Prueba del bean
    System.out.println("3 + 2 = " + control.sumar(3, 2));
        
  }

}
