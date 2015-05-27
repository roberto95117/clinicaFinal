package com.clinic.bean;

public class DetalleMedicacion implements java.io.Serializable {
	private int idDetalleMed;
	private Medicina idMedicina;
	private Medicacion idMedicacion;
	private String cantidad;
	private String total;
	private String detalle;
	private int existe;
	/**
	 * @return the idDetalleMed
	 */
	public int getIdDetalleMed() {
		return idDetalleMed;
	}
	/**
	 * @param idDetalleMed the idDetalleMed to set
	 */
	public void setIdDetalleMed(int idDetalleMed) {
		this.idDetalleMed = idDetalleMed;
	}
	/**
	 * @return the idMedicina
	 */
	public Medicina getIdMedicina() {
		return idMedicina;
	}
	/**
	 * @param idMedicina the idMedicina to set
	 */
	public void setIdMedicina(Medicina idMedicina) {
		this.idMedicina = idMedicina;
	}
	/**
	 * @return the idMedicacion
	 */
	public Medicacion getIdMedicacion() {
		return idMedicacion;
	}
	/**
	 * @param idMedicacion the idMedicacion to set
	 */
	public void setIdMedicacion(Medicacion idMedicacion) {
		this.idMedicacion = idMedicacion;
	}
	/**
	 * @return the cantidad
	 */
	public String getCantidad() {
		return cantidad;
	}
	/**
	 * @param cantidad the cantidad to set
	 */
	public void setCantidad(String cantidad) {
		this.cantidad = cantidad;
	}
	/**
	 * @return the total
	 */
	public String getTotal() {
		return total;
	}
	/**
	 * @param total the total to set
	 */
	public void setTotal(String total) {
		this.total = total;
	}
	/**
	 * @return the detalle
	 */
	public String getDetalle() {
		return detalle;
	}
	/**
	 * @param detalle the detalle to set
	 */
	public void setDetalle(String detalle) {
		this.detalle = detalle;
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
	public DetalleMedicacion(int idDetalleMed, Medicina idMedicina,
			Medicacion idMedicacion, String cantidad, String total,
			String detalle, int existe) {
		super();
		this.idDetalleMed = idDetalleMed;
		this.idMedicina = idMedicina;
		this.idMedicacion = idMedicacion;
		this.cantidad = cantidad;
		this.total = total;
		this.detalle = detalle;
		this.existe = existe;
	}
	public DetalleMedicacion() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DetalleMedicacion(int idDetalleMed, Medicina idMedicina,
			Medicacion idMedicacion, String cantidad, String total,
			String detalle) {
		super();
		this.idDetalleMed = idDetalleMed;
		this.idMedicina = idMedicina;
		this.idMedicacion = idMedicacion;
		this.cantidad = cantidad;
		this.total = total;
		this.detalle = detalle;
	}
	
}
