package onlineExam;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/studentEnrolled")
public class StudentRegisterServlet extends HttpServlet
{
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
{
StudentBean ub = new StudentBean();
ub.setRollNo(req.getParameter("rollNo"));
ub.setName(req.getParameter("name"));
ub.setAddress(req.getParameter("address"));
ub.setGender(req.getParameter("gender"));
ub.setMailId(req.getParameter("mailId"));
ub.setContactNo(Long.parseLong(req.getParameter("contactNo")));
int k = new StudentRegisterDAO().insertUser(ub);

if(k>0) 
{
//req.setAttribute("fname", ub.getFirstName());
req.setAttribute("msg","Student Registered Successfully...<br>");

RequestDispatcher rd =req.getRequestDispatcher("StudentRegisterSuccess.jsp");
rd.forward(req, res);
}
}

}