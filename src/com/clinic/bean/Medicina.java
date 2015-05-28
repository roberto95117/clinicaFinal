package com.clinic.bean;

public class Medicina implements java.io.Serializable {
	private int idMedicina;
	private String nombre;
	private String precio;
	private int cantDisp;
	private int existe;
	/**
	 * @return the idMedicina
	 */
	public int getIdMedicina() {
		return idMedicina;
	}
	/**
	 * @param idMedicina the idMedicina to set
	 */
	public void setIdMedicina(int idMedicina) {
		this.idMedicina = idMedicina;
	}
	/**
	 * @return the nombre
	 */
	public String getNombre() {
		return nombre;
	}
	/**
	 * @param nombre the nombre to set
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	/**
	 * @return the precio
	 */
	public String getPrecio() {
		return precio;
	}
	/**
	 * @param precio the precio to set
	 */
	public void setPrecio(String precio) {
		this.precio = precio;
	}
	/**
	 * @return the cantDisp
	 */
	public int getCantDisp() {
		return cantDisp;
	}
	/**
	 * @param catDisp the catDisp to set
	 */
	public void setCantDisp(int catDisp) {
		this.cantDisp = catDisp;
	}
	/**
	 * @return the existe
	 */
	public int getExiste() {
		return existe;
	}
	/**
	 * @param existe the existe to set
	 */
	public void setExiste(int existe) {
		this.existe = existe;
	}
	public Medicina(int idMedicina, String nombre, String precio, int catDisp,
			int existe) {
		super();
		this.idMedicina = idMedicina;
		this.nombre = nombre;
		this.precio = precio;
		this.cantDisp = catDisp;
		this.existe = existe;
	}
	public Medicina() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Medicina(int idMedicina, String nombre, String precio, int catDisp) {
		super();
		this.idMedicina = idMedicina;
		this.nombre = nombre;
		this.precio = precio;
		this.cantDisp = catDisp;
	}
	
	
}
