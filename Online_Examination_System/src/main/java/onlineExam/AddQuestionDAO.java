package onlineExam;
import java.sql.*;
public class AddQuestionDAO
{ 
	public int k=0;
	public int insert(QuestionBean pb)
	{
		try
		{
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("insert into Question values(?,?,?,?,?,?)");
			ps.setString(1,pb.getQuestion());
			ps.setString(2,pb.getOption1());
			ps.setString(3, pb.getOption2());
			ps.setString(4, pb.getOption3());
			ps.setString(5, pb.getOption4());
			ps.setString(6, pb.getAnswer());
			k=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}

}
