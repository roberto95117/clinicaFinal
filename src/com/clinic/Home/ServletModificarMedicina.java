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
 * Servlet implementation class ServletModificarMedicina
 */
@WebServlet("/ServletModificarMedicina.do")
public class ServletModificarMedicina extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletModificarMedicina() {
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
		Medicina med=(Medicina) Conexion.getInstancia().Buscar(Medicina.class, Integer.parseInt(request.getParameter("idMedicinaE")));
		if (request.getParameter("cantidadmedicinaE").trim().length()>0){
			med.setCantDisp(Integer.parseInt(request.getParameter("cantidadmedicinaE")));
		}
		if (request.getParameter("nombremedicinaE").trim().length()>0){
			med.setNombre(request.getParameter("nombremedicinaE"));
		}
		if (request.getParameter("preciomedicinaE").trim().length()>0){
			med.setPrecio(request.getParameter("preciomedicinaE"));
		}
		
		
		Conexion.getInstancia().modificar(med);
		des=request.getRequestDispatcher("ServletVerMedicina.do");
		des.forward(request, response);
		
		
	}

}
