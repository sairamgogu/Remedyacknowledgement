package Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Random;

public class AdminDAO 
{
	public static Connection GetConnection()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sairamgogu","root","root");
		}
		catch(Exception e)
		{
			System.out.println("Error in getting connection "+e);
		}
		return con;
	}
	
	public static int SaveUser(User u)
	{
		int s=0;
		Connection con=null;
		PreparedStatement ps;
		try
		{
			con=AdminDAO.GetConnection();
			ps=con.prepareStatement("insert into student values(?,?,?,?,?,?)");
			ps.setString(1,u.getFn());
			ps.setString(2,u.getLn());
			ps.setString(4,u.getPhone());
			ps.setString(3,u.getGender());
			ps.setString(5,u.getEmail());
			ps.setString(6,u.getPassword());
			s+=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			System.out.println("Error in Saving User "+e);
		}
		return s;
	}
	
	public static ArrayList<User> GetAllUsers()
	{
		ArrayList<User> list=new ArrayList<>();
		Connection con=null;
		PreparedStatement ps;
		try
		{
			con=AdminDAO.GetConnection();
			ps=con.prepareStatement("select * from student");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				User u=new User();
				u.setFn(rs.getString(1));
				u.setLn(rs.getString(2));
				u.setPhone(rs.getString(3));
				u.setGender(rs.getString(4));
				u.setEmail(rs.getString(5));
				u.setPassword(rs.getString(6));	
				list.add(u);
			}
			
		}
		catch(Exception e)
		{
			System.out.println("Error in Getting All Users "+e);
		}
		return list;
	}
	
	public static User GetUser(String email)
	{
		User u=new User();
		Connection con=null;
		PreparedStatement ps;
		try
		{
			con=AdminDAO.GetConnection();
			ps=con.prepareStatement("select * from student where email=?");
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				u.setFn(rs.getString(1));
				u.setLn(rs.getString(2));
				u.setPhone(rs.getString(3));
				u.setGender(rs.getString(4));
				u.setEmail(rs.getString(5));
				u.setPassword(rs.getString(6));	
			}
			
		}
		catch(Exception e)
		{
			System.out.println("Error in Getting User "+e);
		}
		return u;
	}
	
	public static int SaveIssue(Issue i)
	{
		int s=0;
		Connection con=null;
		PreparedStatement ps;
		try
		{
			con=AdminDAO.GetConnection();
			ps=con.prepareStatement("insert into issues values(?,?,?,?,?)");
			ps.setString(1,i.getEmail());
			ps.setString(2,i.getTicketid());
			ps.setString(3,i.getIssue());
			ps.setString(4,i.getDescription());
			ps.setString(5,i.getStatus());	
			s+=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("Error in Saving Issue "+e);
		}
		return s;
	}
	
	public static ArrayList<Issue> GetIssue(String email)
	{
		ArrayList<Issue> list=new ArrayList();
		Connection con=null;
		PreparedStatement ps;
		try
		{
			con=AdminDAO.GetConnection();
			ps=con.prepareStatement("select * from issues where email=?");
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Issue i=new Issue();
				i.setEmail(email);
				i.setTicketid(rs.getString("ticketid"));
				i.setIssue(rs.getString("issue"));
				i.setStatus(rs.getString("status"));
				i.setDescription(rs.getString("description"));
				list.add(i);
			}
			
		}
		catch(Exception e)
		{
			System.out.println("Error in Getting Issue "+e);
		}
		return list;
	}
	
	public static ArrayList<Issue> GetAllIssues(String resolved)
	{
		ArrayList<Issue> list=new ArrayList<>();
		Connection con=null;
		PreparedStatement ps;
		try
		{
			con=AdminDAO.GetConnection();
			ps=con.prepareStatement("select * from issues where not status=?");
			ps.setString(1,resolved);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				Issue i=new Issue();
				i.setEmail(rs.getString("email"));
				i.setTicketid(rs.getString("ticketid"));
				i.setIssue(rs.getString("issue"));
				i.setStatus(rs.getString("status"));
				i.setDescription(rs.getString("description"));
				list.add(i);
			}
		}
		catch(Exception e)
		{
			System.out.println("Error in Getting All Issues "+e);
		}
		return list;
	}
	
	public static int UpdateStatus(String status, String email, String ticketid)
	{
		int s=0;
		try
		{
			Connection con=AdminDAO.GetConnection();
			PreparedStatement ps=con.prepareStatement("update issues set status=? where email=? and ticketid=?");
			ps.setString(1,status);
			ps.setString(2,email);
			ps.setString(3,ticketid);
			s=+ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("Error in Updating Status "+e);
		}
		return s;
	}
}
