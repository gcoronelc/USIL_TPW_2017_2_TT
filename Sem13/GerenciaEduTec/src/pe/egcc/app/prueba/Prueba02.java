package pe.egcc.app.prueba;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import pe.egcc.app.service.ReporteService;

/**
 *
 * @author Gustavo Coronel
 */
public class Prueba02 {

  public static void main(String[] args) {

    // Instanciar contexto
    String contexto = "/pe/egcc/app/prueba/contexto.xml";
    BeanFactory beanFactory;
    beanFactory = new ClassPathXmlApplicationContext(contexto);

    // Acceso a la clase Service
    ReporteService service;
    service = beanFactory.getBean(ReporteService.class);
    
    // Prueba de la clase Service
    String periodo = "2017";
    List<Map<String, Object>> lista;
    lista = service.repoMejorCurso(periodo);
    
    // Reporte
    for(Map<String, Object> r: lista){
      String repo = "";
      repo += r.get("periodo").toString() + " - ";
      repo += r.get("ciclo").toString() + " - ";
      repo += r.get("curso").toString() + " - ";
      repo += r.get("nomcurso").toString() + " - ";
      repo += r.get("secciones").toString() + " - ";
      repo += r.get("matriculados").toString() ;
      System.out.println(repo);
    }
    
        
  }

}
