<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-01-12
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>论坛 | 版块</title>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="<%=basePath%>/css/bootstrap.css">
    <link rel="stylesheet" href="<%=basePath%>/css/My_Custom.css" />
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <script src="<%=basePath%>js/scripts.js"></script>
</head>
<body>
    <%@include file="PublicPage/nav_header.jsp"%>
    <div class="container min_height">
        <div class="col-md-1"></div>
        <div class=" col-md-10">
            <div class="row">
                <c:forEach items="${topics}" var="topic">
                    <div class="container-fluid well well-lg" >
                        <h3 class="h3title">
                        ${topic.TTopic}
                        </h3>
                        <p class="details">
                        ${topic.TContents}
                        </p>
                        <p class="pull-right">
                        <a class="btn" href="<%=path%>/topic/findTopicById.do?id=${topic.TID}">阅读全文 »</a>
                        </p>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>
    <jsp:include page="PublicPage/footerWithNav.jsp"/>
</body>
</html>
