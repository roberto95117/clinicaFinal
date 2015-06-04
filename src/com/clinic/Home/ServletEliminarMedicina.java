package com.clinic.Home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clinic.bean.Medicina;
import com.clinic.conexion.Conexion;

/**
 * Servlet implementation class ServletEliminarMedicina
 */
@WebServlet("/ServletEliminarMedicina.do")
public class ServletEliminarMedicina extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEliminarMedicina() {
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
		Medicina med=(Medicina)(Conexion.getInstancia().Buscar(Medicina.class, Integer.parseInt(request.getParameter("idmedicina"))));		
		med.setExiste(0);
		Conexion.getInstancia().modificar(med);
		des=request.getRequestDispatcher("ServletVerMedicina.do");
		des.forward(request, response);
	}

}
