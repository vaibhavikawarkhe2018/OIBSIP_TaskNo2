<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         import="onlineExam.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Question List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/index_background.png');
            background-size: cover;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 50px auto;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 20px;
        }
        .content h2 {
            text-align: center;
            color: #333;
            font-size:24px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        table, th, td {
            border: 1px solid #000;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color:  #482B29;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .nav-links {
            text-align: center;
            margin-top: 20px;
        }
        .nav-links a {
            text-decoration: none;
            padding: 10px 20px;
            background-color: #482B29;
            color: white;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .nav-links a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="content">
            <h2>Questions List</h2>
            <%
            ArrayList<QuestionBean> al = (ArrayList<QuestionBean>) session.getAttribute("alist");
            if (al == null || al.size() == 0) {
                out.print("<p>No Questions available.</p>");
            } else {
            %>
            <table>
                <thead>
                    <tr>
                        <th>Question</th>
                        <th>Option 1</th>
                        <th>Option 2</th>
                        <th>Option 3</th>
                        <th>Option 4</th>
                        <th>Answer</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    for (QuestionBean pb : al) {
                    %>
                    <tr>
                        <td><%= pb.getQuestion() %></td>
                        <td><%= pb.getOption1() %></td>
                        <td><%= pb.getOption2() %></td>
                        <td><%= pb.getOption3() %></td>
                        <td><%= pb.getOption4() %></td>
                        <td><%= pb.getAnswer() %></td>
                        <td>
                            <a href="edit?question=<%= pb.getQuestion() %>">Edit</a>
                            &nbsp;|&nbsp;
                            <a href="delete?question=<%= pb.getQuestion() %>">Delete</a>
                        </td>
                    </tr>
                    <%
                    }
                    %>
                </tbody>
            </table>
            <%
            }
            %>
            <div class="nav-links">
                <a href="logout">Logout</a>
            </div>
        </div>
    </div>
</body>
</html>
