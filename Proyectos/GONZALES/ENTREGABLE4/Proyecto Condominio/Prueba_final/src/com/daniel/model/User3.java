package com.daniel.model;


public class User3 {

	private int idinmueble;
	private String idpersona;
	private String idtinmueble;
	private String nombre;
	private String apellido;
	public int getIdinmueble() {
		return idinmueble;
	}
	public void setIdinmueble(int idinmueble) {
		this.idinmueble = idinmueble;
	}
	public String getIdpersona() {
		return idpersona;
	}
	public void setIdpersona(String idpersona) {
		this.idpersona = idpersona;
	}
	public String getIdtinmueble() {
		return idtinmueble;
	}
	public void setIdtinmueble(String idtinmueble) {
		this.idtinmueble = idtinmueble;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	@Override
	public String toString() {
		return "User3 [idinmueble=" + idinmueble + ", idpersona=" + idpersona + ", idtinmueble=" + idtinmueble
				+ ", nombre=" + nombre + ", apellido=" + apellido + "]";
	}
	
	}
	
	

