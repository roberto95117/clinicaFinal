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
import javax.swing.JOptionPane;

import com.clinic.bean.Cita;
import com.clinic.bean.DetalleMedicacion;
import com.clinic.bean.Medicacion;
import com.clinic.bean.Paciente;
import com.clinic.bean.Usuario;
import com.clinic.conexion.Conexion;

/**
 * Servlet implementation class ServletIniciarVisita
 */
@WebServlet("/ServletIniciarVisita.do")
public class ServletIniciarVisita extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletIniciarVisita() {
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
		List<Paciente> pacientes=new ArrayList<Paciente>(Conexion.getInstancia().listaPacientes("from Paciente where existe=1"));
		List<Usuario> doctores=new ArrayList<Usuario>(Conexion.getInstancia().listaUsuarios("from Usuario where existe=1"));
		List<Medicacion> medicacion=new ArrayList<Medicacion>(Conexion.getInstancia().listaMedicacion("from Medicacion"));
		int tiene=0;
		//JOptionPane.showMessageDialog(null, request.getParameter("idVisita"));
		//System.out.println(request.getParameter("idVisita"));
		for(Medicacion med: medicacion){
			if(med.getIdCita().getIdCita()==Integer.parseInt(request.getParameter("idVisita"))){
				tiene=1;
			}
		}
		if(tiene==0){
			Medicacion nmed=new Medicacion();
			nmed.setExiste(1);
			nmed.setIdCita((Cita)Conexion.getInstancia().Buscar(Cita.class, Integer.parseInt(request.getParameter("idVisita"))));
			Conexion.getInstancia().agregar(nmed);
		}
		List<DetalleMedicacion> detmedi=new ArrayList<DetalleMedicacion>(Conexion.getInstancia().listaDetalleMedicacion("from DetalleMedicacion where existe=1"));
		List<DetalleMedicacion> detmedifinal=new ArrayList<DetalleMedicacion>();
		request.setAttribute("medicaciones", "no");
		Medicacion med=new Medicacion();
		medicacion=new ArrayList<Medicacion>(Conexion.getInstancia().listaMedicacion("from Medicacion"));
		
		for(Medicacion m :medicacion){
			if(m.getIdCita().getIdCita()==Integer.parseInt(request.getParameter("idVisita"))){
				med=m;
			}
		}
		double total=0;
		for(DetalleMedicacion dm: detmedi){
			if(dm.getIdMedicacion().getIdMedicacion()==med.getIdMedicacion()){
				request.setAttribute("medicaciones", "si");
				total=total + Double.parseDouble(dm.getTotal());
				detmedifinal.add(dm);
			}
		}
		request.setAttribute("totalpagar", total);
		request.setAttribute("idMedicacion", med.getIdMedicacion());
		request.setAttribute("medicinaasignada", detmedifinal);
		request.setAttribute("medicinas", Conexion.getInstancia().hacerConsulta("from Medicina where existe=1"));
		request.setAttribute("pacientes", pacientes);
		request.setAttribute("doctores", doctores);
		request.setAttribute("cita", Conexion.getInstancia().Buscar(Cita.class, Integer.parseInt(request.getParameter("idVisita"))));
		des=request.getRequestDispatcher("Visita/Index.jsp");
		des.forward(request, response);
	}

}
