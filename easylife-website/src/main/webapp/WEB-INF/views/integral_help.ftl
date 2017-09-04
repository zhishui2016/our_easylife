<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Easylife-积分帮助</title>
		<#include "common/links-tpl.ftl" />
		<link type="text/css" rel="stylesheet" href="/css/account.css" />
	</head>
	<body style="font-family:楷体;font-size: 20px;background-color: #F0F0EE">
		<!-- 网页顶部导航 -->
		<#include "common/head-tpl.ftl" />
		
		<#assign currentNav="personal" />
		<!-- 网页导航 -->
		<#include "common/navbar-tpl.ftl" />
		
		<div class="container">
			<div class="row">
				<!--导航菜单-->
				<div class="col-sm-3">
					<#assign currentMenu="integral_help"/>
					<#include "common/leftmenu-tpl.ftl"/>
				</div>
				<!-- 功能页面菜单 -->
				<div class="col-sm-9">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 style="color:#00aa00">积分帮助:</h4>
                        </div>
                        <div class="panel-body">
                            <ol style="width: 100%;height: auto;">
                                <li>
										<div>积分有什么用?</div>
										<div>答:积分可以享受聊天室VIP版\抽奖活动\临时VIP会员权限等福利(暂时未实现)...</div>
								</li>
                                <li>
                                    <div>关于积分?</div>
                                    <div>
										答:NO1.首次注册,您将获取<span style="color: #00aa00">100</span>积分.<br>
                                        &nbsp; &nbsp;NO2.每日签到,将获取<span style="color: #00aa00">2</span>积分.<br>
                                        &nbsp; &nbsp;NO3.拉人头,获取<span style="color: #00aa00">5</span>积分.<br>
                                        &nbsp; &nbsp;NO4.做积分任务获取随机积分.<br>
                                        &nbsp; &nbsp;NO5.抽奖获取随机积分.<br>
                                        &nbsp; &nbsp;NO6.充值可以获取积分,<span style="color: #00aa00">1</span>RMB=<span style="color: #00aa00">10</span>积分(支持,但不鼓励).
									</div>
								</li>
                                <li>
                                    <div>积分可以借给好友吗?</div>
                                    <div>答:凡实名认证后,好友可以相互借用积分</div>
								</li>
                                <li>
                                    <div>积分可以取现吗?</div>
                                    <div>答:凡实名认证后,不支持取现</div>
								</li>
                                <li>
                                    <div>积分余额出现问题,怎么办?</div>
                                    <div>答:凡对积分有任何疑问,请@止水,后台人工进行审核</div>
								</li>
                                <li>
                                    <div>积分莫名被扣减?</div>
                                    <div>答:本站有权对违反法律/严重踏溅道德底线用户做出对应的积分惩罚,如有疑问,请@止水,将后台复议</div>
								</li>
                            </ol>
                        </div>
                    </div>
				</div>
			</div>
		</div>		
		
		<#include "common/footer-tpl.ftl" />
	</body>
</html>