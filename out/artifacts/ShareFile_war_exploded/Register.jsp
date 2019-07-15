<%--
  Created by IntelliJ IDEA.
  User: cxxdj
  Date: 2019/7/2
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>

    <title>Title</title>
    <script>
        function save() {
            var account=document.getElementById("account");
            var email=document.getElementById("email");
            var pwd=document.getElementById("pwd");
            var nickname=document.getElementById("nickname");
            location.href="RegisterCheck.jsp?account="+account.value+"&email="+email.value+"&pwd="+pwd.value+"&nickname="+nickname.value;
        }
    </script>
    <link href="CSS/Register.css" rel="stylesheet" type="text/css"/>
</head>
<body>


<div class="container">
    <div style="text-align:center">
        <p>请填写信息:</p>
    </div>
    <div class="row" >

        <div class="column">
                <label for="account">账户</label>
                <input type="text" id="account"  placeholder="您的账户..">
                <label for="nickname">昵称</label>
                <input type="text" id="nickname" placeholder="您的昵称..">
                <label for="email">您的邮箱</label>
                <input type="text"  id="email"   placeholder="您的邮箱..">
                <label for="pwd">您的密码</label>
                <input type="password" id="pwd" placeholder="">

                <input type="submit" value="提交" onclick="save()">
        </div>
    </div>
</div>

<html>


</body>
</html>