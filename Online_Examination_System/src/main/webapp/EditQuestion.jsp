<%@ page language="java" 
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="onlineExam.*,java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update the Question</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/image3.jpeg');
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
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            border:1px solid black;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            width: 100%;
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        input[type="text"], input[type="hidden"] {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            background-color: #482B29;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        p {
            color: #ff0000;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update The Question Details</h2>
        <%
        AdminBean ab = (AdminBean) session.getAttribute("abean");
        ArrayList<QuestionBean> al = (ArrayList<QuestionBean>) session.getAttribute("alist");
        String Que = request.getParameter("question");

        if (ab != null && al != null && Que != null) {
            Iterator<QuestionBean> it = al.iterator();
            while (it.hasNext()) {
                QuestionBean pb = it.next();
                if (Que.equals(pb.getQuestion())) {
        %>
            <form action="update" method="post">
                <input type="hidden" name="question" value="<%= pb.getQuestion() %>">
                <input type="text" name="option1" value="<%= pb.getOption1() %>" placeholder="Option 1" required>
                <input type="text" name="option2" value="<%= pb.getOption2() %>" placeholder="Option 2" required>
                <input type="text" name="option3" value="<%= pb.getOption3() %>" placeholder="Option 3" required>
                <input type="text" name="option4" value="<%= pb.getOption4() %>" placeholder="Option 4" required>
                <input type="text" name="answer" value="<%= pb.getAnswer() %>" placeholder="Answer" required>
                <input type="submit" value="Update Question">
            </form>
        <%
                    break;
                }
            }
        } else {
            out.print("<p>Invalid question or session. Please try again.</p>");
        }
        %>
    </div>
</body>
</html>
