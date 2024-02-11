<%@ page import="java.sql.*" %>
<%@ include file = "connect.jsp" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Created</title>
    <link type="image/png" rel="icon" href="movie.png">
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            justify-content:  center;
            align-items: center;
            height: 100vh;
        }

        .success-message {
            top: 50%;
            left: 50%;
            background-color: #ffffff;
            padding: 80px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1{
            color: #555;
            margin-bottom: 20px;
        }

        button {
            background-color: #2bd88d;
            /* margin: 20px auto; */
            padding: 12px 24px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #26a46c;
        }
    </style>
</head>
<body>
    <div class="success-message">
        <div><img src="verify.png" alt="confarm" width="150" height="150"></div>
    <%
    String nm = request.getParameter("nm");
    String mob = request.getParameter("mob");
    String pass = request.getParameter("pass");

    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "1234");
    PreparedStatement pst = con.prepareStatement("insert into suvadip.emp_movie values(?,?,?)");
    pst.setString(1, nm);
    pst.setString(2, mob);
    pst.setString(3, pass);
    int t = pst.executeUpdate();
    if (t > 0)
        out.println("<div class='congo'><h1>Congratulations! <br>Your account has been created successfully!</h1></div>");
    %>
    <button onclick="window.location.href='index.html'">Home</button>
    <button onclick="window.location.href='user_signIn.html'">Login</button>
    </div>
</body>
</html>

<%
    con.close();
%>
