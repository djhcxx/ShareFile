<%--
  Created by IntelliJ IDEA.
  User: cxxdj
  Date: 2019/7/11
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <link href="CSS/FirstPage/indexstyle.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/FirstPage/headerstyle.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/FirstPage/footerstyle.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/FirstPage/middlestyle.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/FirstPage/searchstyle.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/FirstPage/topnavstyle.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/inputstyle.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/Chatroom.css" rel="stylesheet" type="text/css"/>
    <%@ page import="Utility.*" %>
    <%@ page import="Entity.Good" %>
    <%@ page import="java.util.Iterator" %>
    <%@ page import="Bll.Look" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="Entity.Customer" %>
    <%@ page import="Bll.FriendLook" %>
    <%@ page import="Bll.Query" %>
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="Dao.DBcon" %>
    <title>$Title$</title>
</head>

<body>


<div class="header">
    ShareFile
</div>


<div class="topnav">
    <a>note</a>
    <a>about</a>
    <a style="float: right" href="Register.jsp">Register</a>
    <a style="float: right" href="Login.jsp">Login</a>
</div>

<br><br>
<form>
    <div>
        <input id="myInput" type="text" class="queryinput"> <a id="ll" STYLE="
  background-color: orange; border: none;color: white;padding: 15px 32px;
  text-decoration: none;font-size: 13px;margin: 4px 2px;" href="void(0);" target="ifr" onclick="Condition()">查询</a>
    </div>
</form>
<br><br>
<div class="x" id="room">
    <div  class="talk_con">
        <div id="withwho" ></div>
        <input type="button" value="关闭"  style="float: right" onclick="myFunction(this)">
        <div class="talk_show" id="words">
            <div class="atalk"><span id="asay"></span></div>
            <div class="btalk"><span id="bsay"></span></div>
        </div>
        <div class="talk_input">
            <select class="whotalk" id="who">
                <option value="0">A说：</option>
                <option value="1">B说：</option>
            </select>
            <input type="text" class="talk_word" id="talkwords">
            <input type="button" value="发送" class="talk_sub" id="talksub" >

        </div>
    </div>
</div>


<div class="column leftcolumn">


    <div class="vertical-menu">
        <a href="#" class="l active">Category</a>

        <div class="extension">
            <a class="l" href="void(0);" target="ifr" id="where number>0 and category='服装'"
               onclick="JumpWhichQuery(this)">服装</a>
            <div class="extension-content">
                <a href="void(0);" target="ifr" id="where number>0 and category='男装'"
                   onclick="JumpWhichQuery(this)">男装</a>
                <a href="void(0);" target="ifr" id="where number>0 and category='女装'"
                   onclick="JumpWhichQuery(this)">女装</a>
                <a href="void(0);" target="ifr" id="where number>0 and category='上衣'"
                   onclick="JumpWhichQuery(this)">上衣</a>
                <a href="void(0);" target="ifr" id="where number>0 and category='外套'"
                   onclick="JumpWhichQuery(this)">外套</a>
                <a href="void(0);" target="ifr" id="where number>0 and category='裤子'"
                   onclick="JumpWhichQuery(this)">裤子</a>
                <a href="void(0);" target="ifr" id="where number>0 and category='套装'"
                   onclick="JumpWhichQuery(this)">套装</a>
            </div>
        </div>

        <a class="l" href="void(0);" target="ifr" id="where  number>0 and category='衣服'" onclick="JumpWhichQuery(this)">衣服</a>
        <a class="l" href="void(0);" target="ifr" id="where  number>0 and category='数码'" onclick="JumpWhichQuery(this)">数码</a>
        <a class="l" href="void(0);" target="ifr" id="where  number>0 and category='小吃'" onclick="JumpWhichQuery(this)">小吃</a>
        <a class="l" href="void(0);" target="ifr" id="where  number>0 and category='百货'" onclick="JumpWhichQuery(this)">百货</a>
    </div>

</div>
<div class="column middlecolumn">
    <iframe name="ifr" src="Query.jsp" onload="this.height='100%';this.width='100%'" frameborder="1"
            scrolling="no"></iframe>






</div>

<div class="column rightcolumn">

</div>

<div style="float:right;margin-right: 0px;">
    <div class="btn-group">
        <div class="list">
            <button value="Dian" onclick="change(this)">f</button>
            <span id="friend" class="context">
        <%
            String Islogin = Find.FindIsLogin(request.getCookies());
            if (Islogin != null) {

                DBcon dBcon = new DBcon();
                dBcon.conWhichDB("Shop");
                ResultSet resultSet = dBcon.execQuerySQL("Select friendid,faccount,email,pwd,nickname from Friend,Customer where selfaccount='1061758183' and faccount=account");

                while (resultSet.next()) {
        %>

                <div class="tooltip"><a id="<%=resultSet.getString(2)%>" ondblclick="myFunction(this)"><%=resultSet.getString(5)%></a>
                <span class="tooltiptext">
            <td>账户：</td><td><%=resultSet.getString(2)%>  </td><br>
            <td>邮箱：</td> <td><%=resultSet.getString(3)%></td><br>
                 </span>
            </div><br>

    <%
        }
        dBcon.close();
    } else {
    %><a onclick="">请登录</a><%
                }

            %>

    </span>
        </div>
        <button>y</button>
        <button>u</button>
    </div>
</div>


</body>
<script>
    function Conf(){
        alert("进来了");
        var withwho=document.getElementById("withwho").innerText;
        alert(withwho);
        var customer=getCookie("account");
        alert(customer);
        var talkwords=document.getElementById("talkwords");
        alert(talkwords.value);
        var url="Chat.jsp?account="+customer+"&withwho="+withwho.toString()+"&talkwords="+talkwords.value;
        location.href=url;

    }
</script>
<script type="text/javascript" src="JS/ForBoxQuery.js"></script>
<script type="text/javascript" src="JS/ForFriend.js"></script>
<script type="text/javascript" src="JS/ForFixQuery.js"></script>
<script type="text/javascript" src="JS/ForChatRoom.js"></script>
</html>
