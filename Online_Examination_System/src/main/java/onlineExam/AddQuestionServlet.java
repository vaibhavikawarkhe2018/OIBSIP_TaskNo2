
package onlineExam;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/addQuestion")
public class AddQuestionServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg","Session Expired...<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else
		{
			QuestionBean pb=new QuestionBean();
			pb.setQuestion(req.getParameter("question"));
			pb.setOption1(req.getParameter("option1"));
			pb.setOption2(req.getParameter("option2"));
			pb.setOption3(req.getParameter("option3"));
			pb.setOption4(req.getParameter("option4"));
			pb.setAnswer(req.getParameter("answer"));
			int k=new AddQuestionDAO().insert(pb);
			if(k>0)
			{
				req.setAttribute("msg","Question Added Successfully...<br>");
				req.getRequestDispatcher("QuestionAdded.jsp").forward(req, res);
			}
		}
	}

}
