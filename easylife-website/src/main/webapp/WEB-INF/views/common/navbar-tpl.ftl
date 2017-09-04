<div class="navbar navbar-default el-navbar">
	<div class="container">
		<div class="navbar-header">
			<a href="/">
				<img alt="Brand" src="/images/timg.jpg">
			</a>
		</div>
		<ul class="nav navbar-nav"style="font-size: 22px">
			<li id="index"><a href="/chat.do" style="font-size: 22px"<b>聊一聊</b></a></li>
			<li id="community"><a href="/community.do"style="font-size: 22px"><b>说一说</b></a></li>
			<li id="borrow"><a href="/popular_news.do"style="font-size: 22px"><b>看一看</b></a></li>
			<li id="personal"><a href="/personal.do"style="font-size: 22px"><b>个人中心</b></a></li>
			<li><a href="#"style="font-size: 22px"><b>新手指引</b></a></li>
			<li><a href="#"style="font-size: 22px"><b>关于我们</b></a></li>
		</ul>
	</div>
</div>

<#if currentNav??>
	<script>
		$("#${currentNav}").addClass("active");
	</script>
</#if>