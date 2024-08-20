package onlineExam;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteQuestionDAO 
{
	public int k=0;
	public int deleteQuestion(QuestionBean pb) 
	{
		try 
		{
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("Delete from Question where question=?");
			ps.setString(1, pb.getQuestion());
			k=ps.executeUpdate();
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		return k;
	}

}
