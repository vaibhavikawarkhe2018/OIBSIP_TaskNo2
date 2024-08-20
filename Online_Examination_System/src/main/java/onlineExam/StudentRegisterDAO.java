package onlineExam;
import java.sql.*;
public class StudentRegisterDAO 
{
	public int k=0;
	public int insertUser(StudentBean ub)
	{
		try
		{
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?,?)");
			ps.setString(1, ub.getRollNo());
			ps.setString(2, ub.getName());
			ps.setString(3, ub.getAddress());
			ps.setString(4, ub.getGender());
			ps.setString(5, ub.getMailId());
			ps.setLong(6, ub.getContactNo());
			
			k=ps.executeUpdate();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return k;
	}

}
