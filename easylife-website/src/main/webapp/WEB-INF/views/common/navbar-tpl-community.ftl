<div class="navbar navbar-default el-navbar">
	<div class="container">
		<div class="navbar-header">
			<a href="/">
				<img alt="Brand" src="/images/timg.jpg">
			</a>
		</div>
		<ul class="nav navbar-nav"style="font-size: 22px">
			<li id="index"><a href="/index.do" style="font-size: 22px"><b>首页</b></a></li>
			<li id="invest"><a href="/community.do"style="font-size: 22px"><b>说一说</b></a></li>
			<li id="borrow"><a href="/borrow.do"style="font-size: 22px"><b>看一看</b></a></li>
			<li id="personal"><a href="/personal.do"style="font-size: 22px"><b>个人中心</b></a></li>
			<li><a href="#"style="font-size: 22px"><b>新手指引</b></a></li>
			<li><a href="#"style="font-size: 22px"><b>关于我们</b></a></li>
            <li>
				<div style="font-size: 20px;align-content: center">
					<p class="navbar-text text-info">${logininfo.username}</p>
				</div>
            </li>
            <li><a href="/login.html">安全退出</a></li>
            <li><a href="">个人设置</a></li>
		</ul>
	</div>
</div>

<#if currentNav??>
	<script>
		$("#${currentNav}").addClass("active");
	</script>
</#if>