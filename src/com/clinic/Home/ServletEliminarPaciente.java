package com.clinic.Home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clinic.conexion.Conexion;
import com.clinic.bean.Paciente;
/**
 * Servlet implementation class ServletEliminar
 */
@WebServlet("/ServletEliminarPaciente.do")
public class ServletEliminarPaciente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEliminarPaciente() {
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
		int idPaciente=Integer.parseInt(request.getParameter("idPaciente"));
		Paciente p=(Paciente)( Conexion.getInstancia().hacerConsulta("from Paciente where idPaciente="+idPaciente)).get(0);
		p.setExiste(0);
		Conexion.getInstancia().modificar(p);
		RequestDispatcher des=null;
		des=request.getRequestDispatcher("ServletVerPacientes.do");
		des.forward(request, response);
		
	}

}
