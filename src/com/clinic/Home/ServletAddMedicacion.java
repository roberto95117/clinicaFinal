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
import com.clinic.bean.Medicina;
import com.clinic.bean.Paciente;
import com.clinic.bean.Usuario;
import com.clinic.conexion.Conexion;

/**
 * Servlet implementation class ServletAddMedicacion
 */
@WebServlet("/ServletAddMedicacion.do")
public class ServletAddMedicacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAddMedicacion() {
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
		DetalleMedicacion det=new DetalleMedicacion();
		det.setCantidad(request.getParameter("cantidad"));
		det.setDetalle(request.getParameter("detalle"));
		det.setExiste(1);
		det.setIdMedicacion((Medicacion)(Conexion.getInstancia().Buscar(Medicacion.class, Integer.parseInt(request.getParameter("idMedicacion")))));
		det.setIdMedicina((Medicina)(Conexion.getInstancia().Buscar(Medicina.class, Integer.parseInt(request.getParameter("idMedicina")))));
		int total=0;
		total=Integer.parseInt(det.getCantidad()) * Integer.parseInt(det.getIdMedicina().getPrecio());
		det.setTotal(String.valueOf(total));
		Conexion.getInstancia().agregar(det);
		
		List<Paciente> pacientes=new ArrayList<Paciente>(Conexion.getInstancia().listaPacientes("from Paciente where existe=1"));
		List<Usuario> doctores=new ArrayList<Usuario>(Conexion.getInstancia().listaUsuarios("from Usuario where existe=1"));
		List<Medicacion> medicacion=new ArrayList<Medicacion>(Conexion.getInstancia().listaMedicacion("from Medicacion"));
		int tiene=0;
		//JOptionPane.showMessageDialog(null, request.getParameter("idVisita"));
		//System.out.println(request.getParameter("idVisita"));
		for(Medicacion med: medicacion){
			if(med.getIdCita().getIdCita()==Integer.parseInt(request.getParameter("idCita"))){
				tiene=1;
			}
		}
		if(tiene==0){
			Medicacion nmed=new Medicacion();
			nmed.setExiste(1);
			nmed.setIdCita((Cita)Conexion.getInstancia().Buscar(Cita.class, Integer.parseInt(request.getParameter("idCita"))));
			Conexion.getInstancia().agregar(nmed);
		}
		List<DetalleMedicacion> detmedi=new ArrayList<DetalleMedicacion>(Conexion.getInstancia().listaDetalleMedicacion("from DetalleMedicacion where existe=1"));
		List<DetalleMedicacion> detmedifinal=new ArrayList<DetalleMedicacion>();
		request.setAttribute("medicaciones", "no");
		Medicacion med=new Medicacion();
		for(Medicacion m :medicacion){
			if(m.getIdCita().getIdCita()==Integer.parseInt(request.getParameter("idCita"))){
				med=m;
			}
		}
		for(DetalleMedicacion dm: detmedi){
			if(dm.getIdMedicacion().getIdMedicacion()==med.getIdMedicacion()){
				request.setAttribute("medicaciones", "si");
				detmedifinal.add(dm);
			}
		}
		
		request.setAttribute("idMedicacion", med.getIdMedicacion());
		request.setAttribute("medicinaasignada", detmedifinal);
		request.setAttribute("medicinas", Conexion.getInstancia().hacerConsulta("from Medicina where existe=1"));
		request.setAttribute("pacientes", pacientes);
		request.setAttribute("doctores", doctores);
		request.setAttribute("cita", Conexion.getInstancia().Buscar(Cita.class, Integer.parseInt(request.getParameter("idCita"))));
		des=request.getRequestDispatcher("Visita/Index.jsp");
		des.forward(request, response);
		
				
	}

}
