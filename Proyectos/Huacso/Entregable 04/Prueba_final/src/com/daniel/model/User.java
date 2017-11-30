package com.daniel.model;

import java.util.Date;

public class User {

	private int idpersona;
	private String idtpersona;
	private String nombre;
	private String apellido;
	private int dni;
	private int telefono;
	private String direccion;
	private String email;
	



	public int getIdpersona() {
		return idpersona;
	}




	public void setIdpersona(int idpersona) {
		this.idpersona = idpersona;
	}




	public String getIdtpersona() {
		return idtpersona;
	}




	public void setIdtpersona(String idtpersona) {
		this.idtpersona = idtpersona;
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




	public int getDni() {
		return dni;
	}




	public void setDni(int dni) {
		this.dni = dni;
	}




	public int getTelefono() {
		return telefono;
	}




	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}




	public String getDireccion() {
		return direccion;
	}




	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}






	@Override
	public String toString() {
		return "User [idpersona=" + idpersona + ", idtpersona=" + idtpersona + ", nombre=" + nombre + ", apellido="
				+ apellido + ", dni=" + dni + ", telefono=" + telefono + ", direccion=" + direccion + ", email=" + email
				+"]";
	}


		
	}




	
	
