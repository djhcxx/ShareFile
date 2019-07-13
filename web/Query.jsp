<%--
  Created by IntelliJ IDEA.
  User: cxxdj
  Date: 2019/7/11
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Bll.*" %>
<%@ page import="Entity.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<html>
<head>
    <link href="CSS/querystyle.css" rel="stylesheet" type="text/css"/>
    <title>Title</title>

</head>
<body>
<div style="width: 100%;background-color:#F8F8F8;height: 5px "> </div>
<button class="Normaltablink" > 1</button>
<button class="tablink" onclick="openWhich('good', this, 'white')" id="defaultOpen">商品</button>
<button class="tablink" onclick="openWhich('store', this, 'white')">店铺</button>
<button class="Normaltablink" >1 </button>
<button class="Normaltablink" >1 </button>
<button class="Normaltablink" >1 </button>
<button class="Normaltablink" >1 </button>
<button class="Normaltablink" >1 </button>
<button class="Normaltablink" >1 </button>
<button class="Normaltablink" >1 </button>

<br>

<div id="good" class="tabcontent" style=" background-color:white;">
    <%
        String str=request.getParameter("Select");
        if (str==null)str="";
        ArrayList<Good> arrayList=Look.show(new Good(),str);
        Iterator i=arrayList.iterator();
        while(i.hasNext())
        {
            Good g=(Good) i.next();

    %>

    <div class="card">
        <img src="<%=g.getShowlink()%>" >
        <div class="container">
            <div class="tooltip"><td>名称：</td><td><%=g.getGname()%>  </td><span class="tooltiptext">
            <td>文件名：</td><td><%=g.getGname()%>  </td><br>
            <td>价格：</td> <td><%=g.getGprice()%></td><br>
            <td>所属商店：</td> <td><%=g.getBelongstore()%></td><br>
            <td>分类：</td> <td><%=g.getCategory()%> </td><br>
            <td>简介：</td> <td><%=g.getBriefintroduction()%> </td><br>
        </span></div><br>
            <td>价格：</td> <td><%=g.getGprice()%></td>
        </div>
    </div>
    <%}%>
</div>

<div id="store" class="tabcontent" style=" background-color:white;">

    <div class="card">
        <img src="PIC/1.jpg"  style="width:100%">
        <div class="container">
            <div class="tooltip">cxx店铺
                <span class="tooltiptext">
                     <td>简介：</td> <td>cxx喜欢二叉树 </td><br>
                 </span>
            </div><br>
        </div>
    </div>
</div>

</body>
<script type="text/javascript" src="JS/ForTab.js"></script>
</html>
