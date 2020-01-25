package MyModel;

import java.sql.*;

import ImagePath.ImageUpload;
import MyBeans.*;

public class DBModel {

	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	
	public DBModel()
	{
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:mydsn");		
		}
		catch(Exception e)
		{
			System.out.println("Constructor : "+e);
		}
	}
	public UserDetail checklogin(String email,String pass)
	{
		UserDetail u=null;
		try
		{
			PreparedStatement ps=con.prepareStatement("SELECT * FROM USERDETAILS WHERE USERNAME=? AND PASSWORD=?");
			ps.setString(1,email);
			ps.setString(2,pass);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				System.out.print("result");
				
				u=new UserDetail();
				u.setFirstname(rs.getString(2));
				u.setLastname(rs.getString(3));
				u.setMobile(rs.getString(4));
				u.setEmail(rs.getString(5));
				u.setUsername(rs.getString(6));
			}
		}
		catch(Exception ee)
		{
			System.out.println("User Login : "+ee);
		}
		return u;
	}
	public int createuser(UserDetail a)
	{
		int i=0;
		try
		{
			CallableStatement ps=con.prepareCall("{call prcInsertUserDetails(?,?,?,?,?,?,?)}");
			ps.setString(1, a.getFirstname());
			ps.setString(2, a.getLastname());
			ps.setString(3, a.getMobile());
			ps.setString(4, a.getEmail());
			ps.setString(5, a.getUsername());
			ps.setString(6, a.getPassword());
			ps.registerOutParameter(7, Types.INTEGER);
			
			ps.executeUpdate();
			i=ps.getInt(7);
		}
		catch(Exception ee)
		{
			System.out.println("Register User: "+ee);
		}
		return i;
	}
	
	public int updateuser(UserDetail a)
	{
		int i=0;
		try
		{
			ps=con.prepareStatement("update UserDetails set firstName=?,lastName=?,mobile=?,email=? where userName=?");
			ps.setString(1, a.getFirstname());
			ps.setString(2, a.getLastname());
			ps.setString(3, a.getMobile());
			ps.setString(4, a.getEmail());
			ps.setString(5, a.getUsername());
			
			i=ps.executeUpdate();
		}
		catch(Exception ee)
		{
			System.out.println("Update User: "+ee);
		}
		return i;
	}
	public Admindetail checkAdminLogin(String username,String password)
	{
		Admindetail a=null;
		try {
			ps=con.prepareStatement("select * from admindetails where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			rs=ps.executeQuery();
			if(rs.next())
			{
				a=new Admindetail();
				System.out.print("sdfghdsjf");
				a.setUsername(rs.getString(1));
				a.setPasword(rs.getString(2));
			}
		} catch (Exception e) {
			System.out.println("Check Admin Login : "+e);
		}
		return a;
	}
	
	public int insertProperty(PropertyDetail v)
	{
		int i=0;
		try
		{
		
			ps=con.prepareStatement("insert into property values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, v.getPropertyid().trim());
			ps.setString(2, v.getArea().trim());
			ps.setString(3, v.getBedroom().trim());
			ps.setString(4, v.getBathroom().trim());
			ps.setString(5, v.getKitchen().trim());
			ps.setString(6, v.getGarage().trim());
			ps.setString(7, v.getCity().trim());
			ps.setString(8, v.getDescription().trim());
			ps.setString(9, v.getPrice().trim());
			ps.setString(10, v.getBalcony().trim());
			ps.setString(11, v.getPool().trim());
			ps.setString(12, v.getStatus().trim());
			ps.setString(13, v.getAddress().trim());
			ps.setString(14, ImageUpload.path);
			
			 i=ps.executeUpdate();
			
		}
		catch (Exception e) {
			System.out.println("insert Property "+e);
		}
		return i;
	}
	
	
}