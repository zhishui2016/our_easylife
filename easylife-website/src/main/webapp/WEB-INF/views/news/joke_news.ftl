<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/html">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Easylife-搞笑新闻</title>
		<#include "../common/links-tpl.ftl" />
        <link rel="stylesheet" href="/js/bootstrap-3.3.2-dist/css/bootstrap.css" type="text/css" />
        <link rel="stylesheet" href="/css/core.css" type="text/css" />
        <script type="text/javascript" src="/js/jquery/jquery-2.1.3.js"></script>
        <script type="text/javascript" src="/js/bootstrap-3.3.2-dist/js/bootstrap.js"></script>
        <script type="text/javascript" src="/js/jquery.bootstrap.min.js"></script>
        <script type="text/javascript" src="/js/plugins/jquery-validation/jquery.validate.js"></script>
        <script type="text/javascript" src="/js/plugins/jquery-validation/localization/messages_zh.js"></script>
        <script type="text/javascript" src="/js/plugins/uploadify/jquery.uploadify.min.js"></script>
        <script type="text/javascript" src="/js/plugins/jquery.twbsPagination.min.js"></script>
        <script type="text/javascript" src="/js/plugins/jquery.form.js"></script>
		<style type="text/css">
			#realAuthForm input ,#realAuthForm select{
				width: 260px;
			}
			.idCardItem{
				width: 160px;
				height: 150px;
				float:left;
				margin-right:10px;
				border: 1px solid #e3e3e3;
				text-align: center;
				padding: 5px;
			}
			.uploadImg{
				width: 120px;
				height: 100px;
				margin-top: 5px;
			}
			.img-circle{
				width: 80px;
				height: 80px;
				margin-top: 5px;
			}
			.media-object{
				width: 300px;
				margin-top: 5px;
			}
			.swfupload{
				left: 0px;
				cursor: pointer;
			}
			.uploadify{
				height: 20px;
				font-size:13px;
				line-height:20px;
				text-align:center;
				position: relative;
				margin-left:auto;
				margin-right:auto;
				cursor:pointer;
				background-color: #337ab7;
			    border-color: #2e6da4;
			    color: #fff;
			}
			#viewExample{
				position: relative;
				left: 50px;
				top: 60px;
			}
			.uploadExample{
				width: 200px;
				height: 130px;
				margin-bottom: 20px;
			}
		</style>
		<script type="text/javascript">
		$(function(){
			$("#viewExample").popover({
				html:true,
				content:'正面<img src="/images/upload_source_2.jpg" class="uploadExample"/><br/>反面<img src="/images/upload_source_2_1.jpg" class="uploadExample"/>',				
				trigger:"hover",
				placement:"top"
			});
            $('#pagination').twbsPagination({
                totalPages : ${pageResult.totalPage},
                startPage : ${pageResult.currentPage},
                visiblePages : 5,
                first : "首页",
                prev : "上一页",
                next : "下一页",
                last : "最后一页",
                onPageClick : function(event, page) {
                    $("#currentPage").val(page);
                    $("#searchForm").submit();
                }
            });
		});
        $("#query").click(function(){
            $("#currentPage").val(2);
            $("#searchForm").submit();
        })
		//显示当前时间
        window.onload = function() {
            var show = document.getElementById("datetime");
            setInterval(function() {
                var time = new Date();
                // 程序计时的月从0开始取值后+1
                var m = time.getMonth() + 1;
                var t = time.getFullYear() + "-" + m + "-"
                        + time.getDate() + " " + time.getHours() + ":"
                        + time.getMinutes() + ":" + time.getSeconds();
                show.innerHTML = t;
            }, 1000);
        };
        //刷新
        function refreshClick(self) {//这里self接收节点中定义的this
            $.messager.confirm("温馨提示", "由于爬虫效率问题,获取资源需要大约一分钟甚至更长时间,请耐心等待或者去别处逛逛", function () {
                var id = self.id;
                $.ajax({
                    type: "post",
                    url: "refreshOfJoke.do",
                    data: {param: id},
                    dataType: "json",
                    success: function (data) {
                        //拿到后台传过来的json数据
                        var msg = data.msg;
                        if (data.success) {
                            $.messager.confirm("提示", data.msg, function () {
                                window.location.reload();
                            })
                        } else {
                            $.messager.confirm("温馨提示", data.msg, function () {
                                window.location.reload();
                            })
                        }
                    }
                });
            })
        }
		</script>
	</head>
	<body style="font-family:楷体;font-size: 20px;background-color: #F0F0EE">
		<!-- 网页顶部导航 -->
		<#include "../common/head-tpl.ftl"/>
		<#assign currentNav="community" />
		<#include "../common/navbar-tpl.ftl" />

		<div class="container">
			<div class="row">
				<!--导航菜单-->
				<div class="col-sm-3">
					<#assign currentMenu="community"/>
					<#include "../common/leftmenu-tpl-community.ftl" />
				</div>
                <div class="col-sm-9" style="font-size: 18px">
					<div class="col-sm-12" style="text-align: right">
                            <span style="color: #0e0e0e">当前时间:<label style="color: red" id="datetime"/></span>
                            <span class="glyphicon glyphicon-refresh btn btn-primary btn-sms" id="refresh"  onclick='refreshClick(this)' style="color: red">刷新</span>
					</div>
				</div>
                <div class="col-sm-9" style="font-size: 18px">
					<#list pageResult.result as joke>
                    <ul class="list-group">
                        <ul class="list-unstyled list-group-item" style="background-color: transparent">
                            <li >
                            <#--新闻标题-->
                                <div>
                                    <div id="title" style="font-size: 22px;color: #9ea190" href="${(joke.sourceUrl)!''}"><b>${(joke.title)!''}</b></div>
                                </div>
                            <#--新闻图片-->
                                <img id="images" src="${(joke.images)!''}" width="500px"/>
                            </li>
                        </ul>
                    </ul>
					</#list>
                    <div style="text-align: center;">
                        <ul id="pagination" class="pagination"></ul>
                    </div>
				</div>
			</div>
 		</div>
		<#include "../common/footer-tpl-news.ftl" />

	</body>
</html>