package com.clinic.Home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
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
		
		if(nombre.length()>0){
				p.setNombres(request.getParameter("nombresE"));
		}
		
		Session session=Conexion.getInstancia().getSession();
		session.beginTransaction();
		session.merge(p);
		session.getTransaction().commit();
		
		des=request.getRequestDispatcher("ServletVerPacientes.do");
		des.forward(request, response);
		
	}

}
