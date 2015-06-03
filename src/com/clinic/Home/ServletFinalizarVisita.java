package com.clinic.Home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clinic.bean.Cita;
import com.clinic.conexion.Conexion;

/**
 * Servlet implementation class ServletFinalizarVisita
 */
@WebServlet("/ServletFinalizarVisita.do")
public class ServletFinalizarVisita extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletFinalizarVisita() {
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
		Cita c= (Cita)(Conexion.getInstancia().Buscar(Cita.class, Integer.parseInt(request.getParameter("citaeliminar"))));
		c.setCumplido("si");
		Conexion.getInstancia().modificar(c);
		
		des=request.getRequestDispatcher("ServletVerCitas.do");
		des.forward(request, response);
		
				
	}

}
