package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Save_Client
 */
@WebServlet("/Save_Client")
public class Save_Client extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Save_Client() {
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
		boolean b=true;
		ArrayList<User> list=AdminDAO.GetAllUsers();
		for(User uu:list)
		{
			if(uu.getEmail().equals(request.getParameter("email")) || uu.getPhone().equals(request.getParameter("contact"))) b=false;
		}
		if(b)
		{
			if(request.getParameter("psw1").toString().equals(request.getParameter("psw2").toString()))
			{
				User u=new User();
				u.setFn(request.getParameter("fn"));
				u.setLn(request.getParameter("ln"));
				u.setEmail(request.getParameter("email"));
				u.setGender(request.getParameter("gender"));
				u.setPhone(request.getParameter("contact"));
				u.setPassword(request.getParameter("psw1"));
				if(AdminDAO.SaveUser(u)>0)
				{
					out.println("<script>alert('User Saved Successfully')</script>");
					request.getRequestDispatcher("MainPage.jsp").include(request, response);
				}
				else
				{
					out.println("<script>alert('Error in Saving User')</script>");
					request.getRequestDispatcher("Client_SignUp.jsp").include(request, response);
				}
			}
			else
			{
				out.println("<script>alert('Please Re-Enter Password Correctly')</script>");
				request.getRequestDispatcher("Client_SignUp.jsp").include(request, response);
			}
		}
		else
		{
			out.println("<script>alert('Enter Unique Email and Contact')</script>");
			request.getRequestDispatcher("Client_SignUp.jsp").include(request, response);
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
