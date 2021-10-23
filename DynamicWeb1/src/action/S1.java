package action;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/S1")
public class S1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /** 
     * @see HttpServlet#HttpServlet()
     */
    public S1() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("S1 | request.getContextPath()="+request.getContextPath());
		String prefix = request.getParameter("authorname");
 		System.out.println("S1 | prefix="+prefix );
 		
 		AuthorNames resource = new action.AuthorNames();
 		resource.setPrefix(prefix);
 		String fullName = resource.getUniqueName();
		
		/*
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>HelloServlet</title></head>");
		out.println("<body>S1 | Found "+fullName + " for " + prefix + "</body>");
		out.println("</html>");	
		*/
		//Ripropongo la pagina con il prefix o il nome completo
 		if( fullName.length() == 0 ) request.setAttribute("fullName",prefix);
 		else {
 			request.setAttribute("fullName", fullName);
 			request.setAttribute("fullNameFound", "true");
 		}
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/authorpage.jsp");
		dispatcher.forward(request, response);
		System.out.println("S1 | ends with prefix ="+prefix );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
