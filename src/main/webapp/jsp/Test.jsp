<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-01-15
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <script src="<%=basePath%>js/scripts.js"></script>
    <script>
        jq(document).ready(function(){
            jq("#btn1").click(function(){
                alert("Text: " + jq("#test").text());
            });
            jq("#btn2").click(function(){
                alert("HTML: " + jq("#test").html());
            });
        });
    </script>
</head>

<body>
<p id="test">这是段落中的<b>粗体</b>文本。</p>
<button id="btn1">显示文本</button>
<button id="btn2">显示 HTML</button>

</body>
</html>
