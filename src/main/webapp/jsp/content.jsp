<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018-01-10
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>${topic.TTopic}</title>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>css/My_Custom.css" />
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <script src="<%=basePath%>js/scripts.js"></script>
</head>
<body >
<jsp:include page="PublicPage/page_header.jsp"/>
<div class="container min_height">
    <div class="col-md-1"></div>
    <div class=" col-md-10">
        <div class="row" >
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">${topic.TTopic}</h3>
                </div>
                <div class="panel-body">
                    <p style="text-indent: 1cm">
                        ${topic.TContents}
                    </p>
                </div>
            </div>
            <div class="pull-right">
                <a id="uid" href="#" onclick="reply()">回复楼主</a>
            </div>
        </div>
        <div id="demo" class="hidden" >
            <form role="form" method="post" action="<%=path%>/reply/addreply.do">
                <input type="hidden" name="RTID" value="${topic.TID}">
                <div class="row">
                    <textarea name="RContent" class="form-control" rows="3"></textarea>
                </div>
                <div class="row pull-right">
                    <input class="btn-success" type="submit" value="提交评论"/>
                </div>
            </form>
        </div>
        <div class="row">
            <h4>全部评论:</h4>
            <br/>
            <c:forEach items="${replyList}" var="reply">
                <div  class="row panel">
                    <p style="text-indent: 1cm">${reply.RContent}</p>
                    <p class="pull-right">${reply.rtime}</p>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="col-md-1"></div>
    <hr/>
</div>
<jsp:include page="PublicPage/footer.jsp"/>
</body>
</html>