package onlineExam;

import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/startExam")
public class ExamServlet extends HttpServlet
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
    		ArrayList<QuestionBean> al=new ExamDAO().retrieve();
    		hs.setAttribute("alist_u",al);
    		req.getRequestDispatcher("Exam.jsp").forward(req, res);
    	}
    }
}
