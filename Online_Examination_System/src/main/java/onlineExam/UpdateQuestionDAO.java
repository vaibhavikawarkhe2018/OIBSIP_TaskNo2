package onlineExam;
import java.sql.*;
public class UpdateQuestionDAO
{
	public int k=0;
	public int update(QuestionBean pb)
	{
		try
		{
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("update Question set option1=?,option2=?,option3=?,option4=?,answer=? where question=?");
			ps.setString(1,pb.getOption1());
			ps.setString(2,pb.getOption2());
			ps.setString(3,pb.getOption3());
			ps.setString(4,pb.getOption4());
			ps.setString(5,pb.getAnswer());
			
			ps.setString(6,pb.getQuestion());
			k=ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return k;
	}

}
