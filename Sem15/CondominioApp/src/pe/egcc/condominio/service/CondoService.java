package pe.egcc.condominio.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import pe.egcc.condominio.model.Obligacion;

@Service
public class CondoService extends AbstractDBSupport {

  @Transactional(propagation=Propagation.REQUIRED,
      rollbackFor=Exception.class)
  public void generaCuotaMant(int anio, int mes, int idpersona){
    
    // Los immuebles
    String sql = "select i.idinmueble, ti.mantenimiento "
        + "from tinmueble ti "
        + "join inmueble i "
        + "on ti.idtinmueble = i.idtinmueble "
        + "where ti.mantenimiento > 0";
    
    List<Map<String,Object>> lstImuebles;
    lstImuebles = jdbcTemplate.queryForList(sql);
    
    // Fecha
    String fecha = anio + "-" + mes + "-01";
    
    // Proceso
    sql = "insert into obligacion(idtobligacion,idinmueble, "
        + "anio,mes,fvence,importe,fecha,audidpersona) values "
        + "(2,?,?,?, last_day(?), ?, sysdate(), ?)";
    for (Map<String,Object> r : lstImuebles) {
      Object[] args = {
          r.get("idinmueble"),
          anio,
          mes,
          fecha,
          r.get("mantenimiento"),
          idpersona
      };
      jdbcTemplate.update(sql, args);
    }
  }
  
  
  public List<Obligacion> leerObligaciones(int anio, int mes, int obligacion){
	  List<Obligacion> lista;
	  
	  String sql = "select id,inmueble,codigo,torre,piso,"
	  		+ "descripcion,obligacion,nomobligacio,"
	  		+ "anio,mes,vencimiento,importe,pagada "
	  		+ "from v_obligacion "
	  		+ "where anio = ? and mes = ? "
	  		+ "and obligacion = ? ";
	  lista = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Obligacion>(Obligacion.class), anio, mes, obligacion);
			  
	  return lista;
  }
  
  
  public List<Obligacion> generaOblMantenimiento(int anio, int mes){
	  
	  List<Obligacion> lista = new ArrayList<>();
  
	  // Los immuebles
	  String sql = "select i.idinmueble, i.piso, i.codigo, i.descripcion, "
	      + "i.idtorre, i.descripcion, ti.mantenimiento "
			+ "from tinmueble ti "
			+ "join inmueble i "
			+ "on ti.idtinmueble = i.idtinmueble "
			+ "where ti.mantenimiento > 0";
	    
	  List<Map<String,Object>> lstImuebles;
	  lstImuebles = jdbcTemplate.queryForList(sql);
	    
    // Fecha
    String fecha = anio + "-" + mes + "-01";
	  sql = "select last_day(?) fecha";
	  Date fechaVence = jdbcTemplate.queryForObject(sql, new Object[]{fecha}, Date.class);
	  
	  
    return lista;
  }
}
