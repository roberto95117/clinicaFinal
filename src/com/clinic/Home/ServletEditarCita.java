package com.clinic.Home;

import java.io.IOException;

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
 * Servlet implementation class ServletEditarCita
 */
@WebServlet("/ServletEditarCita.do")
public class ServletEditarCita extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEditarCita() {
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
		Cita c=(Cita)Conexion.getInstancia().Buscar(Cita.class, Integer.parseInt(request.getParameter("idCitaE")));
		//c.setExiste(1);
		//c.setCumplido("no");
		String hora=request.getParameter("horacitaE").trim();
		String fecha=request.getParameter("fechacitaE").trim();
		if(hora.length()>0){
			c.setHora(hora);
		}
		if(fecha.length()>0){
			c.setFecha(fecha);
		}
		
		
		//c.setFecha(request.getParameter("fechacitaE"));
		//c.setHora(request.getParameter("horacitaE"));
		c.setIdPaciente((Paciente)Conexion.getInstancia().Buscar(Paciente.class,Integer.parseInt( request.getParameter("pacientecitaE"))));
		c.setIdUsuario((Usuario)Conexion.getInstancia().Buscar(Usuario.class,Integer.parseInt(request.getParameter("doctorcitaE"))));
		Conexion.getInstancia().modificar(c);
		
		des=request.getRequestDispatcher("ServletVerCitas.do");
		des.forward(request, response);
	}

}
