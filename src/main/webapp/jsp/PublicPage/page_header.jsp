<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-01-11
  Time: 14:06
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
</head>
<body>
        <div class="row" style="width: 100%;max-width: 100%">
            <div class="col-lg-5">
                <img  style="padding-left: 20px; max-width: 100%;max-height: 100%" src="<%=basePath%>/img/logos.png" />
            </div>
            <div class="col-lg-7"></div>
        </div>
        <br/>
        <br/>
</body>
</html>
