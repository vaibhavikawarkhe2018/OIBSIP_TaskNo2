<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/image3.jpeg');
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        .message {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            text-align: center;
            max-width: 600px;
            width: 100%;
        }

        h1 {
            color: #482B29;
            margin-bottom: 20px;
        }

        p {
            margin: 10px 0;
        }

        .instructions {
            text-align: left;
            margin-top: 20px;
            border-top: 1px solid #ccc;
            padding-top: 10px;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 24px;
            background-color:#482B29 ;
            color: white;
            text-decoration: none;
            font-weight: bold;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="message">
        <%
            String msg = (String) request.getAttribute("msg");
            out.print("<p>" + msg + "</p>");
        %>
        <h1>Welcome to the Online Examination</h1>

        <div class="instructions">
            <h3>General Instructions:</h3>
            <ul>
                <li>Please ensure a stable internet connection during the exam.</li>
                <li>Read each question carefully before answering.</li>
                <li>Do not refresh the page during the exam.</li>
                <li>You have a limited time to complete the exam. Manage your time wisely.</li>
                <li>Once you submit the exam, you cannot go back and make changes.</li>
                <li>Good luck!</li>
            </ul>
        </div>

        <a href="startExam">Start the Exam</a>
    </div>
</body>
</html>
