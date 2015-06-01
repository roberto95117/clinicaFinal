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
 * Servlet implementation class ServletAgregarCita
 */
@WebServlet("/ServletAgregarCita.do")
public class ServletAgregarCita extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAgregarCita() {
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
		Cita c=new Cita();
		c.setExiste(1);
		c.setCumplido("no");
		c.setFecha(request.getParameter("fechacita"));
		c.setHora(request.getParameter("horacita"));
		c.setIdPaciente((Paciente)Conexion.getInstancia().Buscar(Paciente.class,Integer.parseInt( request.getParameter("pacientecita"))));
		c.setIdUsuario((Usuario)Conexion.getInstancia().Buscar(Usuario.class,Integer.parseInt(request.getParameter("doctorcita"))));
		Conexion.getInstancia().agregar(c);
		
		List<Paciente> pacientes=new ArrayList<Paciente>(Conexion.getInstancia().listaPacientes("from Paciente where existe=1"));
		List<Usuario> doctores=new ArrayList<Usuario>(Conexion.getInstancia().listaUsuarios("from Usuario where existe=1"));
		request.setAttribute("pacientes", pacientes);
		request.setAttribute("doctores", doctores);
		des=request.getRequestDispatcher("ServletVerCitas.do");
		des.forward(request, response);
	}

}
