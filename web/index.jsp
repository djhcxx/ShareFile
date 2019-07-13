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
  <title>$Title$</title>
</head>

<body>


<div class="header">
  ShareFile
</div>


<div class="topnav">
  <a>note</a>
  <a>about</a>
  <a style="float: right">Register</a>
  <a style="float: right">Login</a>
</div>

<br><br>
<form>
  <div>
    <input id="myInput" type="text">    <a id="ll" STYLE="
  background-color: orange; border: none;color: white;padding: 15px 32px;
  text-decoration: none;font-size: 13px;margin: 4px 2px;" href="void(0);" target="ifr" onclick="Condition()">查询</a>
  </div>
</form>
<br><br>

<div class="column leftcolumn">


  <div class="vertical-menu">
    <a  href="#" class="l active">Category</a>

    <div class="left-extension">
        <a class="l"  href="void(0);"  target="ifr"  id="where number>0 and category='书籍'" onclick="JumpWhichQuery(this)">服装</a>
      <div class="left-extension-content">
        <a href="void(0);"  target="ifr" id="where number>0 and category='男装'" onclick="JumpWhichQuery(this)">男装</a>
        <a href="void(0);"  target="ifr" id="where number>0 and category='女装'" onclick="JumpWhichQuery(this)">女装</a>
      </div>
    </div>

    <a class="l" href="void(0);"  target="ifr" id="where  number>0 and category='衣服'" onclick="JumpWhichQuery(this)">衣服</a>
    <a class="l" href="void(0);"  target="ifr" id="where  number>0 and category='数码'" onclick="JumpWhichQuery(this)">数码</a>
    <a class="l" href="void(0);"  target="ifr" id="where  number>0 and category='小吃'" onclick="JumpWhichQuery(this)">小吃</a>
    <a class="l" href="void(0);"  target="ifr" id="where  number>0 and category='百货'" onclick="JumpWhichQuery(this)">百货</a>
  </div>

</div>
<div class="column middlecolumn">
  <iframe  name="ifr" src="Query.jsp" onload="this.height='100%';this.width='100%'" frameborder="1" scrolling="no"></iframe>
</div>
<div class="column rightcolumn">

</div>

<div style="float:right;margin-right: 0px;">
  <div class="btn-group">
    <div class="list" >
      <button value="Dian" onclick="change(this)"  >f</button>
      <span id="friend" class="context">好友1<br>好友2<br>好友3<br>好友4<br></span>
    </div>
    <button>y</button>
    <button>u</button>
  </div>
</div>



</body>
<script type="text/javascript" src="JS/ForBoxQuery.js"></script>
<script type="text/javascript" src="JS/ForFriend.js"></script>
<script type="text/javascript" src="JS/ForFixQuery.js"></script>
</html>
