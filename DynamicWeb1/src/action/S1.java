/*
 * https://www.html.it/articoli/tomcat-lapplicazione-servita/
 * http://localhost:8080/manager/html
 * 
Java EE 6 spec (in general) and Servlet 3.0 spec (in particular) attempt 
to de-emphasize deployment descriptors.

You can use annotation to provide all the data that had been included in the web.xml file. 
You should read through the Servlet 3.0 spec from the jcp.org site to get a bit 
more explanatory text.

To change the url-mapping for a Servlet 3.0 servlet, the first place to look 
is in the source code for the servlet. Look for (and change) the value of the 
urlPatterns element.

If you are trying to create a web app based on Servlet 3.0, try to avoid creating a web.xml file.
 */
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
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("S1 | request.getContextPath()="+request.getContextPath());
		String prefix = request.getParameter("authorname");
 		System.out.println("prefix="+prefix );
 		
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
		request.setAttribute("fullName", fullName);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/authorpage.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
