<%@ page import="DAO.DBcon" %>
<%@ page import="Bll.Register" %><%--
  Created by IntelliJ IDEA.
  User: cxxdj
  Date: 2019/7/2
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String account=request.getParameter("account");
    String email=request.getParameter("email");
    String pwd=request.getParameter("pwd");
    String nickname=request.getParameter("nickname");
    Register.customerRegister(account,email,pwd,nickname);
     %><input  type="button" onclick="location.href='Login.jsp'" value="注册成功，点击登录"><%
%>
</body>
</html>
