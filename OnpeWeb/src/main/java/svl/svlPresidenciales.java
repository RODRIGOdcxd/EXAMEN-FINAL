package svl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class svlPresidenciales extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public svlPresidenciales() {
        super();
        
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		dao.OnpeDAO daoOnpe = new dao.OnpeDAO();
		Object presidencial = null;
		String idDepartamento = request.getParameter("cboDepartamento");
		String idProvincia = request.getParameter("cboProvincia");
		String idDistrito = request.getParameter("cboDistrito");
		String idLocalVotacion = request.getParameter("cboLocalVotacion");
			
		String id = request.getParameter("id");
		if ( idDepartamento == null ) idDepartamento = "-1";
		if (id == null) {
			presidencial =  daoOnpe.getTotalPresidenciales();
		}
		
		if ( id == null && session.getAttribute("departamentos") == null )
			session.setAttribute("departamentos", daoOnpe.getDepartamentos(1,25) );
		
		if (id == "Presidencial") {
			presidencial =  daoOnpe.getTotalPeru();
		}
		if (id == "Tipo") {
			presidencial =  daoOnpe.getTotalExtranjero();
		}
		
		String sDPD = idDepartamento + "," + idProvincia + "," + idDistrito + "," + idLocalVotacion;
		session.setAttribute("dPresidencial", presidencial);
		session.setAttribute("id", id);
		response.sendRedirect("presidenciales.jsp");
	}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}


}