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
 * Servlet implementation class ServletAddPaciente
 */
@WebServlet("/ServletAddPaciente.do")
public class ServletAddPaciente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAddPaciente() {
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
		Paciente ps=new Paciente();
		ps.setNombres(request.getParameter("nombres"));
		ps.setApellidos(request.getParameter("apellidos"));
		ps.setDireccion(request.getParameter("direccion"));
		ps.setSexo(request.getParameter("sexo"));
		ps.setTelefono(request.getParameter("telefono"));
		//ps.setFechaNac(request.getParameter("fecha"));
		ps.setFechaNac("2015-05-05");
		
		
		Conexion.getInstancia().agregar(ps);
		
		des=request.getRequestDispatcher("ServletVerPacientes.do");
		des.forward(request, response);
		
	}

}
