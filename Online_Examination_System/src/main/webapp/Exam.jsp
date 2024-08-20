<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList, onlineExam.QuestionBean" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Examination</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/index_background.png'); 
            background-size: cover;
            background-position: center;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 800px;
            width: 100%;
        }

        h1 {
            text-align: center;
            color: #482B29;
        }

        .question-block {
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px;
        }

        .question-text {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .options {
            margin-left: 20px;
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        .submit-button {
            background-color: #482B29;
            color: white;
            padding: 12px 24px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 20px;
            border-radius: 4px;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        .submit-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Online Examination</h1>
        <form action="SubmitExamServlet.jsp" method="post">
            <%
                ArrayList<QuestionBean> questions = (ArrayList<QuestionBean>) session.getAttribute("alist_u");
                int questionNumber = 1;

                if (questions != null) {
                    for (QuestionBean question : questions) {
            %>
                        <div class="question-block">
                            <div class="question-text">
                                <%= questionNumber++ + ". " + question.getQuestion() %>
                            </div>
                            <div class="options">
                                <input type="radio" name="question_<%= questionNumber %>" value="A" required> <%= question.getOption1() %><br>
                                <input type="radio" name="question_<%= questionNumber %>" value="B" required> <%= question.getOption2() %><br>
                                <input type="radio" name="question_<%= questionNumber %>" value="C" required> <%= question.getOption3() %><br>
                                <input type="radio" name="question_<%= questionNumber %>" value="D" required> <%= question.getOption4() %><br>
                            </div>
                        </div>
            <%
                    }
                } else {
                    out.println("<p>No questions available.</p>");
                }
            %>
            <button type="submit" class="submit-button">Submit Exam</button>
        </form>
    </div>
</body>
</html>
