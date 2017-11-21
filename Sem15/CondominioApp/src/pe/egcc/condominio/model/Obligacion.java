package pe.egcc.condominio.model;

import java.util.Date;

public class Obligacion {

	private int id;
	private int inmueble;
	private String codigo;
	private int torre;
	private int piso;
	private String descripcion;
	private int obligacion;
	private String nomobligacio;
	private int anio;
	private int mes;
	private Date vencimiento;
	private int importe;
	private String pagada;

	public Obligacion() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getInmueble() {
		return inmueble;
	}

	public void setInmueble(int inmueble) {
		this.inmueble = inmueble;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public int getTorre() {
		return torre;
	}

	public void setTorre(int torre) {
		this.torre = torre;
	}

	public int getPiso() {
		return piso;
	}

	public void setPiso(int piso) {
		this.piso = piso;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public int getObligacion() {
		return obligacion;
	}

	public void setObligacion(int obligacion) {
		this.obligacion = obligacion;
	}

	public String getNomobligacio() {
		return nomobligacio;
	}

	public void setNomobligacio(String nomobligacio) {
		this.nomobligacio = nomobligacio;
	}

	public int getAnio() {
		return anio;
	}

	public void setAnio(int anio) {
		this.anio = anio;
	}

	public int getMes() {
		return mes;
	}

	public void setMes(int mes) {
		this.mes = mes;
	}

	public Date getVencimiento() {
		return vencimiento;
	}

	public void setVencimiento(Date vencimiento) {
		this.vencimiento = vencimiento;
	}

	public int getImporte() {
		return importe;
	}

	public void setImporte(int importe) {
		this.importe = importe;
	}

	public String getPagada() {
		return pagada;
	}

	public void setPagada(String pagada) {
		this.pagada = pagada;
	}

}
