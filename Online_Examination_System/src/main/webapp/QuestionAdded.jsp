<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="onlineExam.AdminBean"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Question Added</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/index_background.png');
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
        }
        h2 {
            color: #482B29;
            font-size: 24px;
            margin-bottom: 20px;
        }
        .nav-links {
            margin-top: 20px;
        }
        .nav-links a {
            display: inline-block;
            margin: 10px 0;
            padding: 6px 15px;
            text-decoration: none;
            color: white;
            font-size:14px;
            font-weight: bold;
            border-radius: 5px;
            background-size: contain;
            background-repeat: no-repeat;
            transition: opacity 0.3s ease;
            width: 200px;
            height: 40px;
        }
        .nav-links a.add-question {
            background-image: url('images/add_new_question.png');
            background-color: #808080;
        }
        .nav-links a.view-questions {
            background-image: url('images/all_questions.png');
            background-color: #808080;
        }
        .nav-links a.logout {
            background-image: url('images/Logout.png');
            background-color: #808080;
        }
        .nav-links a:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
        AdminBean ab = (AdminBean) session.getAttribute("abean");
        String msg = (String) request.getAttribute("msg");
        if (msg != null) {
            out.print("<h2>" + msg +"</h2>");
        }
        %>
        <div class="nav-links">
            <a href="AddQuestion.html" class="add-question">Add the Question</a>
            <a href="viewQuestions" class="view-questions">View All Questions</a>
            <a href="logout" class="logout">Logout</a>
        </div>
    </div>
</body>
</html>
