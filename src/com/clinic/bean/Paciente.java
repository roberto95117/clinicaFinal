package com.clinic.bean;

public class Paciente implements java.io.Serializable {

	private int idPaciente;
	private String nombres;
	private String apellidos;
	private String fechaNac;
	private String direccion;
	private String telefono;
	private String sexo;
	/**
	 * @return the sexo
	 */
	public String getSexo() {
		return sexo;
	}
	/**
	 * @param sexo the sexo to set
	 */
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	private int existe;
	/**
	 * @return the idPaciente
	 */
	public int getIdPaciente() {
		return idPaciente;
	}
	/**
	 * @param idPaciente the idPaciente to set
	 */
	public void setIdPaciente(int idPaciente) {
		this.idPaciente = idPaciente;
	}
	/**
	 * @return the nombres
	 */
	public String getNombres() {
		return nombres;
	}
	/**
	 * @param nombres the nombres to set
	 */
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	/**
	 * @return the apellidos
	 */
	public String getApellidos() {
		return apellidos;
	}
	/**
	 * @param apellidos the apellidos to set
	 */
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	/**
	 * @return the fechaNac
	 */
	public String getFechaNac() {
		return fechaNac;
	}
	/**
	 * @param fechaNac the fechaNac to set
	 */
	public void setFechaNac(String fechaNac) {
		this.fechaNac = fechaNac;
	}
	/**
	 * @return the direccion
	 */
	public String getDireccion() {
		return direccion;
	}
	/**
	 * @param direccion the direccion to set
	 */
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	/**
	 * @return the telefono
	 */
	public String getTelefono() {
		return telefono;
	}
	/**
	 * @param telefono the telefono to set
	 */
	public void setTelefono(String telefono) {
		this.telefono = telefono;
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
	public Paciente() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Paciente(int idPaciente, String nombres, String apellidos,
			String fechaNac, String direccion, String telefono,String sexo, int existe) {
		super();
		this.idPaciente = idPaciente;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.fechaNac = fechaNac;
		this.direccion = direccion;
		this.telefono = telefono;
		this.existe = existe;
		this.sexo=sexo;
	}
	
	public Paciente(int idPaciente, String nombres, String apellidos,
			String fechaNac, String direccion, String telefono,String sexo) {
		super();
		this.idPaciente = idPaciente;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.fechaNac = fechaNac;
		this.direccion = direccion;
		this.telefono = telefono;
		this.sexo=sexo;
	}
}
