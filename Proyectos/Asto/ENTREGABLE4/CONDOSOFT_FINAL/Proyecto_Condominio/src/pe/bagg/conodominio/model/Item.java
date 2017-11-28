package pe.bagg.conodominio.model;



public class Item {

	private int idpro;
	private String nombres;
	private String apellidos;
	private String fechanac;
	private int  telefono;
	private String estadocivil;
	private String correo;
	private String fecharegistro;
	private String estado;
	public Item(){
		
	}
public Item(String idpro,
		String nombres,
		String apellidos,
		String fechanac,
		int telefono,
		String estadocivil,
		String correo,
		String fecharegistro,
		String estado ){
	super();
	this.nombres=nombres;
	this.apellidos=apellidos;
	this.fechanac=fechanac;
	this.telefono=telefono;
	this.estadocivil=estadocivil;
	this.correo=correo;
	this.fecharegistro=fecharegistro;
	this.estado=estado;
}
public int getIdpro() {
	return idpro;
}
public void setIdpro(int idpro) {
	this.idpro = idpro;
}
public String getNombres() {
	return nombres;
}
public void setNombres(String nombres) {
	this.nombres = nombres;
}
public String getApellidos() {
	return apellidos;
}
public void setApellidos(String apellidos) {
	this.apellidos = apellidos;
}
public String getFechanac() {
	return fechanac;
}
public void setFechanac(String fechanac) {
	this.fechanac = fechanac;
}
public int getTelefono() {
	return telefono;
}
public void setTelefono(int telefono) {
	this.telefono = telefono;
}
public String getEstadocivil() {
	return estadocivil;
}
public void setEstadocivil(String estadocivil) {
	this.estadocivil = estadocivil;
}
public String getCorreo() {
	return correo;
}
public void setCorreo(String correo) {
	this.correo = correo;
}
public String getFecharegistro() {
	return fecharegistro;
}
public void setFecharegistro(String fecharegistro) {
	this.fecharegistro = fecharegistro;
}
public String getEstado() {
	return estado;
}
public void setEstado(String estado) {
	this.estado = estado;
}
	
}
