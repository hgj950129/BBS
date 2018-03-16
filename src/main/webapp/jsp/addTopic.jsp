<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-01-29
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>发布文章</title>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>css/My_Custom.css" />
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <script src="<%=basePath%>js/scripts.js"></script>
</head>
<body>
<jsp:include page="PublicPage/page_header.jsp"/>
<div class="container-fluid min_height">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <form  class="form-horizontal" role="form" method="post" action="<%=path%>/topic/addTopic.do">
            <div class="form-group">
                <input class="form-control" name="topicname" placeholder="请输入文章名" maxlength="20"/>
            </div>
            <div class="form-group">
                <label>选择发布版块</label>
                <select class="form-control" style="max-width: 40%" name="forum">
                    <option value="1">编程语言</option>
                    <option value="2">移动开发</option>
                    <option value="3">前端</option>
                    <option value="4">程序人生</option>
                    <option value="5">计算机基础</option>
                    <option value="6">架构</option>
                </select>
            </div>
            <div class="form-group">
                <textarea class="form-control" rows="15" name="topicContents" placeholder="请输入内容" ></textarea>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-form-color pull-right">提交</button>
            </div>
        </form>

    </div>
    <div class="col-md-2"></div>
</div>
<jsp:include page="PublicPage/footer.jsp"/>
</body>
</html>