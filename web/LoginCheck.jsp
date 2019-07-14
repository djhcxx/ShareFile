<%--
  Created by IntelliJ IDEA.
  User: cxxdj
  Date: 2019/6/30
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="Dao.DBcon" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="Bll.Query" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    String a = request.getParameter("account");
    String p = request.getParameter("pwd");
    DBcon dBcon=new DBcon();
    dBcon.conWhichDB("Shop");
    ResultSet resultSet=dBcon.execQuerySQL("select * from Customer where account=" + "'" + a + "'" + "and  pwd=" + "'" + p + "'");

    if (resultSet != null && resultSet.next()) {
        try {
            Cookie cookie = new Cookie("account", resultSet.getString(1));
            response.addCookie(cookie);
            Cookie cookie2 = new Cookie("email", resultSet.getString(2));
            response.addCookie(cookie2);
            Cookie cookie1 = new Cookie("nickname", resultSet.getString(4));
            response.addCookie(cookie1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("Login.jsp");
    }
    dBcon.close();
%>
</body>
</html>
