package com.clinic.bean;

public class Cita implements java.io.Serializable {
	private int idCita;
	private Paciente idPaciente;
	private Usuario idUsuario;
	private String horaFecha;
	private String cumplido;
	private int existe;
	/**
	 * @return the idCita
	 */
	public int getIdCita() {
		return idCita;
	}
	/**
	 * @param idCita the idCita to set
	 */
	public void setIdCita(int idCita) {
		this.idCita = idCita;
	}
	/**
	 * @return the idPaciente
	 */
	public Paciente getIdPaciente() {
		return idPaciente;
	}
	/**
	 * @param idPaciente the idPaciente to set
	 */
	public void setIdPaciente(Paciente idPaciente) {
		this.idPaciente = idPaciente;
	}
	/**
	 * @return the idUsuario
	 */
	public Usuario getIdUsuario() {
		return idUsuario;
	}
	/**
	 * @param idUsuario the idUsuario to set
	 */
	public void setIdUsuario(Usuario idUsuario) {
		this.idUsuario = idUsuario;
	}
	/**
	 * @return the horaFecha
	 */
	public String getHoraFecha() {
		return horaFecha;
	}
	/**
	 * @param horaFecha the horaFecha to set
	 */
	public void setHoraFecha(String horaFecha) {
		this.horaFecha = horaFecha;
	}
	/**
	 * @return the cumplido
	 */
	public String getCumplido() {
		return cumplido;
	}
	/**
	 * @param cumplido the cumplido to set
	 */
	public void setCumplido(String cumplido) {
		this.cumplido = cumplido;
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
	public Cita(int idCita, Paciente idPaciente, Usuario idUsuario,
			String horaFecha, String cumplido, int existe) {
		super();
		this.idCita = idCita;
		this.idPaciente = idPaciente;
		this.idUsuario = idUsuario;
		this.horaFecha = horaFecha;
		this.cumplido = cumplido;
		this.existe = existe;
	}
	public Cita(int idCita, Paciente idPaciente, Usuario idUsuario,
			String horaFecha, String cumplido) {
		super();
		this.idCita = idCita;
		this.idPaciente = idPaciente;
		this.idUsuario = idUsuario;
		this.horaFecha = horaFecha;
		this.cumplido = cumplido;
	}
	public Cita() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
