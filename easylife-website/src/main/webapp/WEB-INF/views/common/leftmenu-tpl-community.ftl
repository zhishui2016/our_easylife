<ul id="menu" class="list-group">
	<li class="list-group-item">
		<a href="javascript:;"><span><strong>热门</strong></span></a>
		<ul>
			<li name="bid"><a href="/sport_news.do"><span>体育</span></a></li>
			<li name="receive"><a href="society_news.do"><span>社会</span></a></li>
			<li name="bidRequest"><a href="/science_news.do"><span>科技</span></a></li>
			<li name="borrowBidReturn"><a href="/joke_news.do"><span>搞笑</span></a></li>
		</ul>
	</li>
	<li class="list-group-item">
		<a href="#"><span class="text-title"><strong>生活</strong></span></a>
		<ul class="in">
			<li name="personal"><a href="house_price.do">房价</a></li>
			<li name="realAuth"><a href="/car_price.do">车价</a></li>
			<li name="userFile"><a href="/school_news.do">学校</a></li>
			<li name="bankInfo"><a href="/recruit_news.do">招聘</a></li>
			<li name="ipLog"><a href="/travel_news.do">旅游</a></li>
		</ul>
	</li>
	<li class="list-group-item">
		<a href="#"><span><strong>个人情况</strong></span></a>
		<ul class="in">
			<li name="accountFlow_list"><a href="login_log.do">登录记录</a></li>
		</ul>
	</li>
</ul>

<#if currentMenu??>
<script type="text/javascript">
	$(".list-group-item li[name=${currentMenu}]").addClass("active");
</script>
</#if>