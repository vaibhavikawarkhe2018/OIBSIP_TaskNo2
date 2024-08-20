package onlineExam;
import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@WebServlet("/update")
@SuppressWarnings("serial")
public class UpdateQuestionServlet extends HttpServlet
{
   @SuppressWarnings("unchecked")
   @Override
   protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
   {
	   HttpSession hs=req.getSession(false);
	   if(hs==null)
	   {
		   req.setAttribute("msg","Session Expired..<br>");
		   req.getRequestDispatcher("Msg.jsp").forward(req, res);
	   }
	   else
	   {
		   ArrayList<QuestionBean>al=(ArrayList<QuestionBean>)hs.getAttribute("alist");
		   String Que=req.getParameter("question");
		   Iterator<QuestionBean>it=al.iterator();
		   while(it.hasNext())
		   {
			   QuestionBean pb=(QuestionBean)it.next();
			   if(Que.equals(pb.getQuestion()))
			   {
				   pb.setOption1(req.getParameter("option1"));
				   pb.setOption2(req.getParameter("option2"));
				   pb.setOption3(req.getParameter("option3"));
				   pb.setOption4(req.getParameter("option4"));
				   pb.setAnswer(req.getParameter("answer"));
				   
				  
				   int k=new UpdateQuestionDAO().update(pb);
				   if(k>0)
				   {
					   req.setAttribute("msg","Question Updated Successfully...<br>");
					   req.getRequestDispatcher("QuestionUpdated.jsp").forward(req, res);
				   }
				   break;
			   }
		   }
	   }
   }
}
