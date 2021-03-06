package com.clinic.Home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.clinic.bean.Paciente;
import com.clinic.conexion.Conexion;

/**
 * Servlet implementation class ServletModificarPaciente
 */
@WebServlet("/ServletModificarPaciente.do")
public class ServletModificarPaciente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletModificarPaciente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher des=null;
		int id=Integer.parseInt(request.getParameter("idPacienteE"));
		Paciente p=(Paciente) Conexion.getInstancia().Buscar(Paciente.class, id);
		
		String nombre=request.getParameter("nombresE").trim();
		String apellido=request.getParameter("apellidosE").trim();
		String direccion=request.getParameter("direccionE").trim();
		String telefono=request.getParameter("telefonoE").trim();
		String fecha=request.getParameter("fechaE").trim();
		String sexo=request.getParameter("sexoE").trim();
		if(nombre.length()>0){
				p.setNombres(nombre);
		}
		if(apellido.length()>0){
			p.setApellidos(apellido);
		}
		if(direccion.length()>0){
			p.setDireccion(direccion);
		}
		if(telefono.length()>0){
			p.setTelefono(telefono);
		}
		if(fecha.length()>0){
			p.setFechaNac(fecha);
		}
		p.setSexo(sexo);
		Conexion.getInstancia().modificar(p);
		
		des=request.getRequestDispatcher("ServletVerPacientes.do");
		des.forward(request, response);
		
	}

}
