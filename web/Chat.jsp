<%@ page import="Dao.DBcon" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: cxxdj
  Date: 2019/7/14
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String account = request.getParameter("account");
String withwho = request.getParameter("withwho");
    String talkwords = request.getParameter("talkwords");
DBcon dBcon=new DBcon();
dBcon.conWhichDB("Shop");
    String sql="insert into Chat values( '"+account+"','"+withwho+"','"+talkwords+"')";
    dBcon.execInSQL(sql);
    dBcon.close();

%>
</body>


</html>
