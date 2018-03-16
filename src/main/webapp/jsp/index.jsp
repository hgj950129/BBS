<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,
			 initial-scale=1.0,
			 maximum-scale=1.0,
             user-scalable=no" />
    <!-- 引入 Bootstrap -->
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>css/My_Custom.css" />
    <title>论坛 | 首页</title>
</head>
<body>
<div class="container-fluid">
    <%@include file="PublicPage/nav_header.jsp"%>
    <div class="row">
        <div class="col-md-1">
        </div>
        <div class="col-md-10">
            <div class="carousel slide" id="carousel-610480">
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#carousel-610480">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-610480">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-610480">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="Carousel Bootstrap First" src="http://lorempixel.com/output/sports-q-c-1600-500-1.jpg">
                        <div class="carousel-caption">
                            <h4>
                                First Thumbnail label
                            </h4>
                            <p>
                                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="Carousel Bootstrap Second" src="http://lorempixel.com/output/sports-q-c-1600-500-2.jpg">
                        <div class="carousel-caption">
                            <h4>
                                Second Thumbnail label
                            </h4>
                            <p>
                                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="Carousel Bootstrap Third" src="http://lorempixel.com/output/sports-q-c-1600-500-3.jpg">
                        <div class="carousel-caption">
                            <h4>
                                Third Thumbnail label
                            </h4>
                            <p>
                                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                        </div>
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-610480" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left">

					</span>
                </a>
                <a class="right carousel-control" href="#carousel-610480" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
            <br/>
            <c:forEach items="${topfive}" var="topics">
                <div class="container-fluid well well-lg" >
                    <h3 class="h3title">
                        ${topics.TTopic}
                    </h3>
                    <p class="details">
                        ${topics.TContents}
                    </p>
                    <p class="pull-right">
                        <a class="btn" href="<%=path%>/topic/findTopicById.do?id=${topics.TID}">阅读全文 »</a>
                    </p>
                </div>
            </c:forEach>
        </div>
        <div class="col-md-1">
        </div>
    </div>
</div>
    <jsp:include page="PublicPage/footerWithNav.jsp"/>
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <script src="<%=basePath%>js/scripts.js"></script>
</body>
</html>
