<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="onlineExam.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Question Deleted...</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/image3.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 350px;
        }
        .message h2 {
            margin-bottom: 20px;
            color: #482B29; /* Change color if needed */
        }
        .nav-links {
            margin-top: 20px;
        }
        .nav-links a {
            display: inline-block;
            margin: 10px;
            padding: 10px 25px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .nav-links a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
       
        <div class="message">
            <%
            AdminBean ab = (AdminBean) session.getAttribute("abean");
            String msg = (String) request.getAttribute("msg");
            if (msg != null) {
                out.print("<h2>"+msg+"</h2>");
            } else {
                out.print("<h2>No message available.</h2>");
            }
            %>
        </div>
        <div class="nav-links">
            <a href="AddQuestion.html">Add Another Question</a>
            <a href="viewQuestions">View All Questions</a>
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>
