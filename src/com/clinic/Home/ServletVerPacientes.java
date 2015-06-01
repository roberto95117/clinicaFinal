package com.clinic.Home;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clinic.bean.Paciente;
import com.clinic.bean.Usuario;
import com.clinic.conexion.Conexion;

/**
 * Servlet implementation class ServletVerPacientes
 */
@WebServlet("/ServletVerPacientes.do")
public class ServletVerPacientes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletVerPacientes() {
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
		List<Paciente> pacientes=new ArrayList<Paciente>();
		pacientes=Conexion.getInstancia().listaPacientes("from Paciente where existe=1");
		List<Usuario> doctores=new ArrayList<Usuario>(Conexion.getInstancia().listaUsuarios("from Usuario where existe=1"));
		request.setAttribute("pacientes", pacientes);
		request.setAttribute("doctores", doctores);
		des=request.getRequestDispatcher("Pacientes/Lista.jsp");
		des.forward(request, response);
		
		
		
	}

}
