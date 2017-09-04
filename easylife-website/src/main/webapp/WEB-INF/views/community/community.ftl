<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/html">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Easylife-微博</title>
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
			//保存事件
			$("#realAuthForm").ajaxForm(function(){
                window.location.reload();
                jQuery("#realAuthForm").get(0).reset();
			});
			//回复事件
			$("#replyForm").ajaxForm(function(){
                window.location.reload();
                jQuery("#realAuthForm").get(0).reset();
			});
			//上传身份证反面照
			$("#uploadBtn2").uploadify({
				auto:true,
				buttonText:"上传",
				fileObjName:"file",
				fileTypeDesc:"请选择正确的图片格式",
				fileTypeExts:" *.gif; *.jpg; *.png",
				multi:true,
				width:100,
				height:30,
				swf:"/js/plugins/uploadify/uploadify.swf",
				uploader:"/realAuth_upload.do",
				//覆盖默认的效果
				overrideEvents:['onUploadSuccess','onSelect'],
				//上传的回调
				onUploadSuccess:function(file,data,response){
					$("#uploadImg2").attr("src",data);
					$("#uploadImage2").val(data);
				}
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
		//给每个点赞的都添加点击事件
        function liclick(self){//这里self接收节点中定义的this
			var id = self.id;
            $.ajax({
                type:"post",
                url:"goodGlyphicon.do",
                data:{param:id},
                dataType:"json",
                success:function (data) {
                    var msg = data.msg;
                    if(data.success){
                        $.messager.confirm("提示",data.msg,function(){
                            window.location.reload();
                        })
                    }else{
                        $.messager.alert("温馨提示:",data.msg);
                    }
                }
            });
        }
        //一般评论
        function rightClick(self){//这里self接收节点中定义的this
            var id = self.id;
            $.ajax({
                type:"post",
                url:"commonGlyphicon.do",
                data:{param:id},
                dataType:"json",
                success:function (data) {
                    var msg = data.msg;
                    if(data.success){
                        $.messager.confirm("提示",data.msg,function(){
                            window.location.reload();
                        })
                    }else{
                        $.messager.alert("温馨提示:",data.msg);
                    }
                }
            });
        }
        //差评
        function downClick(self){//这里self接收节点中定义的this
            var id = self.id;
            $.ajax({
                type:"post",
                url:"badGlyphicon.do",
                data:{param:id},
                dataType:"json",
                success:function (data) {
                	//拿到后台传过来的json数据
                    var msg = data.msg;
                    if(data.success){
                        $.messager.confirm("提示",data.msg,function(){
                            window.location.reload();
                        })
                    }else{
                        $.messager.alert("温馨提示:",data.msg);
                    }
                }
            });
        }
        //二次回复
        function replyAgainClick(self){//这里self接收节点中定义的this
            var id = self.id;
			alert(id);
           /* $.ajax({
                type:"post",
                url:"badGlyphicon.do",
                data:{param:id},
                dataType:"json",
                success:function (data) {
                	//拿到后台传过来的json数据
                    var msg = data.msg;
                    if(data.success){
                        $.messager.confirm("提示",data.msg,function(){
                            window.location.reload();
                        })
                    }else{
                        $.messager.alert("温馨提示:",data.msg);
                    }
                }
            });*/
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
					<#assign currentMenu="realAuth"/>
					<#include "../common/leftmenu-tpl-community.ftl" />
				</div>

                <form  style="display: none" id="searchForm" class="form-inline" method="post" action="/community.do">
                    <input type="hidden" id="currentPage" name="currentPage" value=""/>
                    <div type="hidden" class="form-group">
                        <label>状态</label>
                        <select class="form-control" name="state">
                            <option value="-1">全部</option>
                            <option value="0">申请中</option>
                            <option value="1">审核通过</option>
                            <option value="2">审核拒绝</option>
                        </select>
                        <script type="text/javascript">
                            $("[name=state] option[value='${(qo.state)!''}']").attr("selected","selected");
                        </script>
                    </div>
                    <div style="display: none" class="form-group">
                        <label>申请时间</label>
                        <input class="form-control" type="text" name="beginDate" id="beginDate" value="${(qo.beginDate?string('yyyy-MM-dd'))!''}" />到
                        <input class="form-control" type="text" name="endDate" id="endDate" value="${(qo.endDate?string('yyyy-MM-dd'))!''}" />
                    </div>
                    <div class="form-group">
                        <button type="hidden" id="query" class="btn btn-success"><i class="icon-search"></i> 查询</button>
                    </div>
                </form>
				<!-- 发表功能页面 -->
				<div class="col-sm-9">
					<div class="panel panel-default">
							<form class="form-horizontal" id="realAuthForm" method="post" action="/uploadImages.do" novalidate="novalidate">
							<fieldset>
								<div class="form-group">
									<p class="text-center text-danger">严禁非法宣传以及造谣!请做个良民</p>
								</div>
								<div class="form-group">
					        		<div class="col-sm-12">
                                        <textarea id="content"name="content" type="text" class="form-control" rows="3"></textarea>
						        	</div>
						        </div>

						        <div class="form-group">
					        		<div class="col-sm-2">
                                        <div>
                                            <a href="javascript:;" id="uploadBtn2" >上传照片</a>
                                        </div>
                                        <img alt="" src="" class="uploadImg" id="uploadImg2"/>
                                        <input type="hidden" name="imagePath" id="uploadImage2" />
					        			<div class="clearfix"></div>
						        	</div>
						        </div>
						        <div class="form-group" style="text-align: right">
                                    <div class="col-sm-12">
						        		<button type="submit" id="asubmit" class="btn btn-primary col-sm-offset-4" data-loading-text="正在提交"><i class="icon-ok"></i>发表吧</button>
									</div>
						        </div>
							</fieldset>
						</form>
					</div>
				</div>

                <div class="col-sm-9" style="font-size: 18px">
					<#list pageResult.result as info>
						<ul class="media-list">
							<li class="media">
                                <div class="media-left">
                                    <a href="#">
                                        <img alt="" src="${(info.applier.headImages)!''}" class="img-circle"  id="headImages"/>
                                    </a>
                                </div>
								<div class="media-body">
									<h4 class="media-heading" style="color: #0e0e0e"><b>${(info.applier.username)!''}:</b></h4>
									<span>
										${(info.content)!''}
									</span>
									<#if info.imagePath!=''>
                                        <img class="media-object" src="${(info.imagePath)!''}" alt=""><#--文章图片-->
									</#if>
									</br>
									${(info.publishTime?string('yyyy-MM-dd HH:mm:ss'))!''}<#--文章时间-->
                                    &nbsp
                                    <span class="glyphicon glyphicon-thumbs-up" onclick='liclick(this)' id="${(info.id)!''}"  aria-hidden="true">(<span style="color: #00aa00">${(info.goodTimes)!''}</span>)</span><#--文章好点评数-->
                                    &nbsp
                                    <span class="glyphicon glyphicon-hand-right" onclick='rightClick(this)' id="${(info.id)!''}" aria-hidden="true">(<span style="color: #0f0f0f">${(info.commonTimes)!''}</span>)</span><#--文章一般点评数->
                                    <span class="glyphicon glyphicon-thumbs-down" aria-hidden="true">(${(info.badTimes)!''}&${(logininfo.id)!'')</span><#--文章差点评数-->
                                    &nbsp
                                    <span class="glyphicon glyphicon-thumbs-down" onclick='downClick(this)' id="${(info.id)!''}" aria-hidden="true">(<span style="color: #e9322d">${(info.badTimes)!''}</span>)</span><#--文章差点评数-->
                                    &nbsp
                                    <span class=" glyphicon glyphicon-comment" onclick='replyClick(this)' id="${(info.id)!''}" aria-hidden="true">(<span style="color: #0e0e0e">${(info.replyTimes)!''}</span>)</span><#--回复数-->

								</div>
                                <div class="col-sm-9" style="font-size: 15px">
									<#list replyPageResult.result as reply>
										<#if info.replyTimes!=0>
                                        <#if reply.community.id==info.id>
                                            <ul class="media-list">
                                                <li class="media">
                                                    <div class="media-left">
                                                        <a href="#">
                                                            <img alt="" src="${(reply.replier.headImages)!''}" class="img-circle" id="headImages"/>
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <h4 class="media-heading" style="color: #0e0e0e;font-size: 15px"><b>${(reply.replier.username)!''}:</b></h4>
                                                        <span class="replyContent">
															${(reply.reply)!''}
                                                            <span class="glyphicon glyphicon-pencil" onclick='replyAgainClick(this)' id="${(reply.id)!''}" aria-hidden="true"></span><#--再次回复-->
														</span>
														</br>
														${(reply.replyTime?string('yyyy-MM-dd HH:mm:ss'))!''}<#--回复时间-->
                                                    </div>
                                                </li>
                                            </ul>
										</#if>
										</#if>
									</#list>
									<form class="form-horizontal" id="replyForm" method="post" action="/reply.do" novalidate="novalidate" >
										<input type="hidden" name="id" value="${(info.id)!''}" >
										<div class="form-group">
											<div class="col-sm-12">
												<textarea name="reply" type="text" class="form-control" rows="3"></textarea>
											</div>
										</div>
										<div class="form-group" style="text-align: right">
											 <div class="col-sm-12">
												 <button id="${(info.id)!''}" class="btn btn-primary col-sm-offset-4" data-loading-text="回复"><i class="icon-ok"></i>回复</button>
											 </div>
										</div>
									</form>
								</div>
							</li>
						</ul>
					</#list>
                    <div style="text-align: center;">
                        <ul id="pagination" class="pagination"></ul>
                    </div>
				</div>
			</div>
 		</div>
		<#include "../common/footer-tpl.ftl" />
	</body>
</html>