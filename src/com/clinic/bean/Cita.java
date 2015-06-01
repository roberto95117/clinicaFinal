package com.clinic.bean;

public class Cita implements java.io.Serializable {
	private int idCita;
	private Paciente idPaciente;
	private Usuario idUsuario;
	private String hora;
	private String cumplido;
	private int existe;
	private String fecha;
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
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
	 * @return the hora
	 */
	public String getHora() {
		return hora;
	}
	/**
	 * @param horaFecha the hora to set
	 */
	public void setHora(String horaFecha) {
		this.hora = horaFecha;
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
			String hora,String fecha, String cumplido, int existe) {
		super();
		this.idCita = idCita;
		this.idPaciente = idPaciente;
		this.idUsuario = idUsuario;
		this.hora = hora;
		this.cumplido = cumplido;
		this.fecha=fecha;
		this.existe = existe;
	}
	public Cita(int idCita, Paciente idPaciente, Usuario idUsuario,
			String hora, String cumplido,String fecha) {
		super();
		this.idCita = idCita;
		this.idPaciente = idPaciente;
		this.idUsuario = idUsuario;
		this.hora = hora;
		this.cumplido = cumplido;
		this.fecha=fecha;
	}
	public Cita() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
