package onlineExam;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/delete")
public class DeleteQuestionServlet extends HttpServlet
{
	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null) 
		{
			req.setAttribute("msg", "Session expired..<br>");
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		}
		else
		{
		
			ArrayList<QuestionBean> al=(ArrayList<QuestionBean>)hs.getAttribute("alist");
			String Que=req.getParameter("question");
			Iterator<QuestionBean> it=al.iterator();
			while(it.hasNext())
			{
				QuestionBean pb=(QuestionBean)it.next();
				if(Que.equals(pb.getQuestion())) 
				{
					al.remove(pb);
					int k=new DeleteQuestionDAO().deleteQuestion(pb);
					if(k>0)
					{
						req.setAttribute("msg", "Question Deleted Succefully..<br>");
						req.getRequestDispatcher("DeleteQuestion.jsp").forward(req, res);
					}
				}
			}//loop
		}
	}
}
