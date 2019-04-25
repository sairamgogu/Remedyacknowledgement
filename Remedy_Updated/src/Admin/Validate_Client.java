package Admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Validate_Client
 */
@WebServlet("/Validate_Client")
public class Validate_Client extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Validate_Client() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		ServletContext sc=request.getServletContext();
		
		User u=AdminDAO.GetUser(request.getParameter("email"));
		if(u.getPassword().equals(request.getParameter("psw")))
		{
			out.println("<script>alert('Sign in Successfully')</script>");
			sc.setAttribute("user_email",u.getEmail());
			request.getRequestDispatcher("Client_HomePage.jsp").include(request, response);
			
		}
		else
		{
			out.println("<script>alert('Error in User Sing In')</script>");
			request.getRequestDispatcher("Client_SignIn.jsp").include(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
