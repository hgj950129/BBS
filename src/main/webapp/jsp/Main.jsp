<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-01-13
  Time: 16:27
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
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>css/My_Custom.css"/>
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <script src="<%=basePath%>js/scripts.js"></script>
</head>
<body >
<jsp:include page="PublicPage/page_header.jsp"/>
<div class="container-fluid min_height" style="background-color: #2aabd2">
    <div class="col-md-1"></div>
    <div class="col-md-10" style="height: 600px;background-color: #3c3c3c">
    </div>
    <div class="col-md-1"></div>
</div>
<jsp:include page="PublicPage/footer.jsp"/>
</body>
</html>
