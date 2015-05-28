package com.clinic.login;

import java.io.IOException;
/*
import java.util.ArrayList;
import java.util.List;
*/
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import javax.swing.JOptionPane;

import com.clinic.bean.Usuario;
import com.clinic.conexion.Conexion;

/**
 * Servlet implementation class ServletLogin
 */
@WebServlet("/ServletLogin.do")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher despachador;
		String user = request.getParameter("txtUser");
		String pass = request.getParameter("txtPass");
		
		
//		JOptionPane.showMessageDialog(null, "HOla mundo");
		if(esInyeccion(pass)==0 && esInyeccion(user)==0){
			if(Conexion.getInstancia().hacerConsulta("from Usuario us where us.nickName='"+user+"' and us.pass='"+pass+"'").size()>0){
				Usuario usuario=(Usuario)Conexion.getInstancia().hacerConsulta("from Usuario us where us.nickName='"+user+"' and us.pass='"+pass+"'").get(0);
				HttpSession sesion=request.getSession(true);
				sesion.setAttribute("usuario", usuario);
				despachador = request.getRequestDispatcher("ServletIndex.do");
				despachador.forward(request, response);
				}else{
					despachador = request.getRequestDispatcher("Index.jsp");
					despachador.forward(request, response);
				}
		}else{
			despachador = request.getRequestDispatcher("Index.jsp");
			despachador.forward(request, response);
		}
		
		
	}
	
	public int esInyeccion(String cadena){
		int es=0;
		for(int i=0;i<cadena.length();i++){
			if(!Character.isLetterOrDigit(cadena.charAt(i))){
			//	//////System.out.println("es inyeccion");
				es=1;
			}
		}
		return es;
	}


}