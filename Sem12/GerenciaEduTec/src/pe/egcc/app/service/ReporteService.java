package pe.egcc.app.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class ReporteService {
  
  @Autowired
  private JdbcTemplate jdbcTemplate;

  public List<Map<String, Object>> repoResumenCurso(String ciclo){
    
    List<Map<String, Object>> lista;
    
    String sql = "select periodo, ciclo, tarifa, "
        + "nomtarifa, curso, nomcurso, horas, "
        + "precio, pagohora, secciones, vacantes, "
        + "matriculados, disponibles, ingresos, "
        + "pagoprof, utilidad "
        + "from v_resumen_curso "
        + "where ciclo = ?";
    
    lista = jdbcTemplate.queryForList(sql, ciclo);
    
    return lista;
    
  }
  
  
}
