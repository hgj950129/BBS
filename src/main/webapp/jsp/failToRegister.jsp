<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-01-17
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>注册出问题了！</title>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>css/My_Custom.css" />
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <script src="<%=basePath%>js/scripts.js"></script>
    <script>
        function redirect(){
            setTimeout("javascript:location.href='<%=path%>/register.do'",5000)
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
                    注册失败了！系统检测到相同用户名
                </h3>
                <a class="btn" href="<%=path%>/register.do">跳转至注册页面»</a>
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

