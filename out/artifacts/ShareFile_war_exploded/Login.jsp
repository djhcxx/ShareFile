<%--
  Created by IntelliJ IDEA.
  User: cxxdj
  Date: 2019/6/30
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <link href="CSS/LoginStyle.css" rel="stylesheet" type="text/css"/>
    <title>Login</title>

</head>
<body>
<div id="login">
    <h1>Login</h1>
    <form method="post">
        <input type="text" required="required"  placeholder="userName" id="u"></input>
        <input type="password" required="required"  placeholder="userPassword" id="p"></input>
        <input  class="but" type="button"  value="Login" onclick="URLSave()"></input>
    </form>
</div>

</body>
<script>
    function URLSave()
    {
        var user= document.getElementById("u");
        var pwd= document.getElementById("p");
        var url ="LoginCheck.jsp?account="+user.value+"&pwd="+pwd.value;
        location.href = url;
    }
</script>
</html>
