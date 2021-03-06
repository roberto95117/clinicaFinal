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

import com.clinic.bean.Cita;
import com.clinic.bean.Paciente;
import com.clinic.bean.Usuario;
import com.clinic.conexion.Conexion;

/**
 * Servlet implementation class ServletVerCitas
 */
@WebServlet("/ServletVerCitas.do")
public class ServletVerCitas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletVerCitas() {
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
		
		List<Cita> citas=new ArrayList<Cita>(Conexion.getInstancia().listaCitas("from Cita where existe=1 and cumplido='no'"));
		List<Paciente> pacientes=new ArrayList<Paciente>(Conexion.getInstancia().listaPacientes("from Paciente where existe=1"));
		List<Usuario> doctores=new ArrayList<Usuario>(Conexion.getInstancia().listaUsuarios("from Usuario where existe=1"));
		request.setAttribute("pacientes", pacientes);
		request.setAttribute("doctores", doctores);
		request.setAttribute("citas", citas);
		des=request.getRequestDispatcher("Citas/Lista.jsp");
		des.forward(request, response);
	}

}
