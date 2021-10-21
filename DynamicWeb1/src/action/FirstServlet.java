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
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FirstServlet
 */
@WebServlet("/FirstServlet")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /** 
     * @see HttpServlet#HttpServlet()
     */
    public FirstServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("request.getContextPath()="+request.getContextPath());
		//http://localhost:8080/DynamicWeb1/FirstServlet?firstname=Mario&lasttname=Rossi
		String firstname = request.getParameter("firstname");
		String lasttname = request.getParameter("lastname");
		System.out.println("firstname="+firstname+" lasttname="+lasttname);
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>HelloServlet</title></head>");
		out.println("<body>Hello "+firstname + " " + lasttname + "! from FirstServlet</body>");
		out.println("</html>");		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
