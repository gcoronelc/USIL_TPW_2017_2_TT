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
public class Prueba01 {

  public static void main(String[] args) {

    // Instanciar contexto
    String contexto = "/pe/egcc/app/prueba/contexto.xml";
    BeanFactory beanFactory;
    beanFactory = new ClassPathXmlApplicationContext(contexto);

    // Acceso a la clase Service
    ReporteService service;
    service = beanFactory.getBean(ReporteService.class);
    
    // Prueba de la clase Service
    String ciclo = "2017-02";
    List<Map<String, Object>> lista;
    lista = service.repoResumenCurso(ciclo);
    
    // Reporte
    for(Map<String, Object> r: lista){
      String repo = "";
      repo += r.get("curso").toString() + " - ";
      repo += r.get("secciones").toString() + " - ";
      repo += r.get("matriculados").toString() + " - ";
      repo += r.get("ingresos").toString() + " - ";
      repo += r.get("pagoprof").toString() + " - ";
      System.out.println(repo);
    }
    
        
  }

}
