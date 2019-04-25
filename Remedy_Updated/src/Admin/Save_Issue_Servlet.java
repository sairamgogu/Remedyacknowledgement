package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Save_Issue_Servlet
 */
@WebServlet("/Save_Issue_Servlet")
public class Save_Issue_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Save_Issue_Servlet() {
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
		String ticketid=request.getParameter("tid");
		boolean b=true;
		ArrayList<Issue> list=AdminDAO.GetIssue(sc.getAttribute("user_email").toString());
		for(Issue ii:list)
		{
			if(ii.getTicketid().equals(ticketid)) b=false;
		}
		if(b)
		{
			Issue i=new Issue();
			i.setEmail(sc.getAttribute("user_email").toString());
			i.setTicketid(ticketid);
			i.setIssue(request.getParameter("issue"));
			i.setStatus("In Progress");
			i.setDescription(request.getParameter("description"));
			
			if(AdminDAO.SaveIssue(i)>0)
			{
				out.println("<script>alert('Issue Saved Successfully')</script>");
				sc.setAttribute("user_email", sc.getAttribute("user_email"));
				request.getRequestDispatcher("Client_HomePage.jsp").include(request, response);
			}
			else
			{
				out.println("<script>alert('Error in Saving Issue')</script>");
				request.getRequestDispatcher("Client_HomePage.jsp").include(request, response);
			}
		}
		else
		{
			out.println("<script>alert('Please Enter Another Ticket Id')</script>");
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
