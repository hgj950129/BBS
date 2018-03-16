<%@ page contentType="text/html;charset=UTF-8" language="java" %>
		<div class="row">
			<div class="col-lg-5">
				<img  style="max-width: 100%;max-height: 100%" src="<%=basePath%>/img/logos.png" />
			</div>
			<div class="col-lg-7"></div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<a class="navbar-brand active" href="<%=path%>/">首页</a>
					</div>

					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li>
								<a href="<%=path%>/topic/groupByForum.do?tuid=1">编程语言</a>
							</li>
							<li>
								<a href="<%=path%>/topic/groupByForum.do?tuid=2">移动开发</a>
							</li>
							<li>
								<a href="<%=path%>/topic/groupByForum.do?tuid=3">前端</a>
							</li><li>
							<a href="<%=path%>/topic/groupByForum.do?tuid=4">程序人生</a>
						</li><li>
							<a href="<%=path%>/topic/groupByForum.do?tuid=5">计算机基础</a>
						</li><li>
							<a href="<%=path%>/topic/groupByForum.do?tuid=6">架构</a>
						</li>
						</ul>
						<form class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="搜索">
							</div>
							<button type="submit" class="btn btn-default">
								GO
							</button>
						</form>

						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li>
										<a href="<%=path%>/login.do">登陆</a>
									</li>
									<li>
										<a href="<%=path%>/register.do">注册</a>
									</li>
									<li>
										<a href="#">个人中心</a>
									</li>
									<li>
										<a href="<%=path%>/addTopic.do">发布文章</a>
									</li>
									<li class="divider">
									</li>
									<li>
										<a href="#">问题/建议</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</nav>
			</div>
	</div>
