package com.clinic.bean;

public class Medicacion implements java.io.Serializable {
	private int idMedicacion;
	private Cita idCita;
	private int existe;
	/**
	 * @return the idMedicacion
	 */
	public int getIdMedicacion() {
		return idMedicacion;
	}
	/**
	 * @param idMedicacion the idMedicacion to set
	 */
	public void setIdMedicacion(int idMedicacion) {
		this.idMedicacion = idMedicacion;
	}
	/**
	 * @return the idCita
	 */
	public Cita getIdCita() {
		return idCita;
	}
	/**
	 * @param idCita the idCita to set
	 */
	public void setIdCita(Cita idCita) {
		this.idCita = idCita;
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
	public Medicacion(int idMedicacion, Cita idCita, int existe) {
		super();
		this.idMedicacion = idMedicacion;
		this.idCita = idCita;
		this.existe = existe;
	}
	public Medicacion() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Medicacion(int idMedicacion, Cita idCita) {
		super();
		this.idMedicacion = idMedicacion;
		this.idCita = idCita;
	}
	
}
