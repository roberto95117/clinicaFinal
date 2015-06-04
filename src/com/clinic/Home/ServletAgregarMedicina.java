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
 * Servlet implementation class ServletAgregarMedicina
 */
@WebServlet("/ServletAgregarMedicina.do")
public class ServletAgregarMedicina extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAgregarMedicina() {
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
		Medicina med=new Medicina();
		med.setCantDisp(Integer.parseInt(request.getParameter("cantidadmedicina")));
		med.setExiste(1);
		med.setNombre(request.getParameter("nombremedicina"));
		med.setPrecio(request.getParameter("preciomedicina"));
		Conexion.getInstancia().agregar(med);
		des=request.getRequestDispatcher("ServletVerMedicina.do");
		des.forward(request, response);
	}

}
