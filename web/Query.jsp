<%--
  Created by IntelliJ IDEA.
  User: cxxdj
  Date: 2019/7/11
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="CSS/querystyle.css" rel="stylesheet" type="text/css"/>
    <title>Title</title>
    <script>
        function openWhich(Name,elmnt,color) {
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tablink");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].style.backgroundColor = '#F8F8F8';
            }
            document.getElementById(Name).style.display = "block";
            elmnt.style.backgroundColor = color;

        }
        // 触发 id="defaultOpen" click 事件
        document.getElementById("defaultOpen").click();
    </script>
</head>
<body>
<button class="tablink" onclick="openWhich('good', this, 'white')" id="defaultOpen">商品</button>
<button class="tablink" onclick="openWhich('store', this, 'white')">店铺</button>
<button class="Normaltablink" > 1</button>
<button class="Normaltablink" >1 </button>
<br>
<div id="good" class="tabcontent" style=" background-color:white;">
    <div class="card">
        <img src="PIC/3.jpg" style="width:100%">
        <div class="container">
            <div class="tooltip">二叉树
                <span class="tooltiptext">
            <td>文件名：</td>  </td><br>
            <td>价格：</td> <td>10</td><br>
            <td>所有人：</td> <td>djh</td><br>
            <td>分类：</td> <td>exe </td><br>
            <td>简介：</td> <td>程序猿都喜欢二叉树 </td><br>
        </span>
            </div><br>
            <td>价格：</td> <td>10</td><br>
            <td>所有人：</td> <td>djh</td><br>
        </div>
    </div>
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
</html>
