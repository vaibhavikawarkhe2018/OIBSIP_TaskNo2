package onlineExam;
import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/viewQuestions")
public class ViewAllQuestionsServlet extends HttpServlet
{
    protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
    {
    	HttpSession hs=req.getSession(false);
    	if(hs==null)
    	{
    		req.setAttribute("msg","Session Expired...<br>");
    		req.getRequestDispatcher("Msg.jsp").forward(req, res);
    	}
    	else
    	{
    		ArrayList<QuestionBean>al=new ViewAllQuestionsDAO().retrieve();
    		hs.setAttribute("alist",al);
    		req.getRequestDispatcher("ViewAllQuestions.jsp").forward(req, res);
    	}
    }
}
