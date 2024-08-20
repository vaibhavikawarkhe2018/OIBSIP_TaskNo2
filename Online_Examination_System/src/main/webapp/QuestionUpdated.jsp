<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="onlineExam.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book Updated</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('images/Image2.jpeg');
            background-size: cover;
            background-position: center;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.85);
            padding: 30px;
            border-radius: 10px;
            border:1px solid black;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }
        .message {
            font-size: 1.5em;
            font-weight:bold;
            margin-bottom: 20px;
            color: #482B29;
        }
        .nav-links a {
            display: block;
            margin: 10px 0;
            color: #007BFF;
            text-decoration: none;
            padding: 10px;
            background-color: #f8f9fa;
            border-radius: 5px;
            border:0.5px solid black;
            transition: background-color 0.3s ease;
        }
        .nav-links a:hover {
            background-color: #007BFF;
            color: white;
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
                out.print(msg);
            } else {
                out.print("No message available.");
            }
            %>
        </div>
        <div class="nav-links">
            <a href="AddQuestion.html">Add the Question</a>
            <a href="viewQuestions">View All Questions</a>
            <a href="logout">Logout</a>
        </div>
    </div>
</body>
</html>
