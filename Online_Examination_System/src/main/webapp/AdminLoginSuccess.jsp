<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="onlineExam.AdminBean"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('images/Image2.jpeg'); /* Background image */
            background-size: cover;
            background-position: center;
            color: white;
        }

        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: rgba(0, 0, 0, 0.5); /* Transparent dark overlay */
        }

        .header {
            text-align: center;
            margin-bottom: 40px;
        }

        .welcome-message {
            font-size: 1.5em;
            color: #fff;
        }

        .content {
            text-align: center;
        }

        .nav-links a {
            display: block;
            margin: 15px 0;
            padding: 15px 25px;
            background: rgba(255, 255, 255, 0.2);
            color: #fff;
            font-size: 1.4em;
            text-decoration: none;
            border-radius: 10px;
            border:2px solid black;
            transition: background 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        .nav-links a:hover {
            background: rgba(255, 255, 255, 0.4);
        }

        .nav-links a img {
            vertical-align: middle;
            margin-right: 10px;
            width: 24px;
            height: 24px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="welcome-message">
                <%
                AdminBean ab = (AdminBean) session.getAttribute("abean");
                %>
            </div>
        </div>
        <div class="content">
            <div class="nav-links">
                <a href="AddQuestion.html">
                    <img src="images/add_new_question.png" alt="Add"> Add New Question
                </a>
                <a href="viewQuestions">
                    <img src="images/all_questions.png" alt="View"> View All Questions
                </a>
                <a href="viewResult">
                    <img src="images/all_student_result.png" alt="Result"> View All Student Results
                </a>
                <a href="logout">
                    <img src="images/Logout.png" alt="Logout"> Logout
                </a>
            </div>
        </div>
    </div>
</body>
</html>