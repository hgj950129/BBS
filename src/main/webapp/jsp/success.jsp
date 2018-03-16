<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-01-16
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>注册成功</title>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>css/My_Custom.css" />
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <script src="<%=basePath%>js/scripts.js"></script>
    <script>
            function redirect(){
                setTimeout("javascript:location.href='<%=path%>/login.do'",5000)
            }
    </script>
</head>
<body onload="redirect()">
<jsp:include page="PublicPage/page_header.jsp"/>
<div class="min_height">
    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <div class="pager">
                <h3 class="text-center">
                    注册成功!正在跳转至登陆页面...
                </h3>
                <a class="btn" href="<%=path%>/login.do">点击直接跳转»</a>
                <br/>
                <a class="btn" href="<%=path%>/">跳转至首页»</a>
            </div>
        </div>
        <div class="col-sm-2"></div>
    </div>
</div>
<jsp:include page="PublicPage/footer.jsp"/>
</body>
</html>
