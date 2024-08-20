package onlineExam;
import java.util.*;
import java.sql.*;
public class ViewAllQuestionsDAO 
{
    public ArrayList<QuestionBean>al=new ArrayList<QuestionBean>();
    public ArrayList<QuestionBean>retrieve()
    {
    	try
    	{
    		Connection con=DBConnection.getCon();
    		PreparedStatement ps=con.prepareStatement("select * from Question");
    		ResultSet rs=ps.executeQuery();
    		while(rs.next())
    		{
    			QuestionBean pb=new QuestionBean();
    			pb.setQuestion(rs.getString(1));
    			pb.setOption1(rs.getString(2));
    			pb.setOption2(rs.getString(3));
    			pb.setOption3(rs.getString(4));
    			pb.setOption4(rs.getString(5));
    			pb.setAnswer(rs.getString(6));
    			al.add(pb);
    		}
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return al;
    }
}
