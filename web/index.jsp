<%--
  Created by IntelliJ IDEA.
  User: cxxdj
  Date: 2019/7/11
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <head>
    <link href="CSS/indexstyle.css" rel="stylesheet" type="text/css"/>
    <title>$Title$</title>
  </head>
<script>
  function change(obj)
  {
    var x=document.getElementById("friend");



    if(x.style.display.toString()=="")
    {
      x.style.display='block';
      obj.style.backgroundColor='green';
    }
    else
    {
      x.style.display='';
      obj.style.backgroundColor='#4CAF50';
    }
  }
</script>
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


  <div class="column leftcolumn">
    <div class="vertical-menu">
      <a href="#" class="active">Category</a>
      <a target="ifr" onclick="CPP.jsp">C++</a>
      <a target="ifr" onclick="java.jsp">JAVA</a>
    </div>
  </div>


  <div class="column middlecolumn">
    <iframe  name="ifr" src="Query.jsp" onload="this.height=ifr.document.body.scrollHeight;this.width='100%'" frameborder="0" scrolling="no"></iframe>
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
</html>
