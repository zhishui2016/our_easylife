<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Easylif</title>
		<!-- 包含一个模板文件,模板文件的路径是从当前路径开始找 -->
		<#include "common/links-tpl.ftl" />
		<script type="text/javascript" src="/js/plugins/jquery.form.js"></script>
        <script type="text/javascript" src="/js/plugins/uploadify/jquery.uploadify.min.js"></script>
		<link type="text/css" rel="stylesheet" href="/css/account.css" />
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
            .uploadImg{
                width: 120px;
                height: 100px;
                margin-top: 5px;
            }
            .swfupload{
                left: 0px;
                cursor: pointer;
            }
        </style>
		<script type="text/javascript">
			$(function(){
				//点击立即绑定
				$("#showBindPhoneModal").click(function(){
					$("#bindPhoneModal").modal("show");
				});
				//发送验证码
				$("#sendVerifyCode").click(function(){
					var phoneNumber=$("#phoneNumber").val();
					var _this = $(this);
					_this.attr("disabled",false);
					if(phoneNumber){
						$.ajax({
							type:"POST",
							dateType:"json",
							url:"/sendVerifyCode.do",
							data:{
								phoneNumber:phoneNumber
							},
							success:function(data){
								if(data.success){
									_this.attr("disabled",true);
									var count=10;
									var timer = window.setInterval(function(){
										count--;
										if(count<=0){
											window.clearInterval(timer);
											_this.text("重新发送验证码!");
											_this.attr("disabled",false);
										}else{
											_this.text(count+"秒之后重新发送!");
										}
									},1000);
								}else{
									$.messager.popup(data.msg);
									_this.attr("disabled",false);
								}
							}
						});
					}
				});
				//点击绑定手机
				$("#bindPhone").click(function(){
					$("#bindPhoneForm").ajaxSubmit({
						success:function(data){
							if(data.success){
								window.location.reload();
							}else{
								$.messager.popup(data.msg);
							}
						}
					});
				});
				//点击绑定邮箱
				$("#showBindEmailModal").click(function(){
					$("#bindEmailModal").modal("show");
				});
				//点击保存按钮,发送邮件
				$("#bindEmail").click(function(){
					$("#bindEmailForm").ajaxSubmit({
						success:function(data){
							if(data.success){
								window.location.reload();
							}else{
								$.messager.popup(data.msg);
							}
						}
					});
				});


                //上传头像
                $("#uploadBtn2").uploadify({
                    auto:true,
                    buttonText:"点击上传头像",
                    fileObjName:"file",
                    fileTypeDesc:"请选择正面",
                    fileTypeExts:" *.gif; *.jpg; *.png",
                    multi:true,
                    swf:"/js/plugins/uploadify/uploadify.swf",
                    uploader:"/realAuth_upload.do",
                    //覆盖默认的效果
                    overrideEvents:['onUploadSuccess','onSelect'],
                    //上传的回调
                    onUploadSuccess:function(file,data,response){
                        $("#headImages").attr("src",data);
                        $("#headImages").val(data);
                    }
                },10);

                //保存事件
                $("#headerImagesForm").ajaxForm(function(){
                   // window.location.reload();
                });
			})

            //给每个点赞的都添加点击事件
            function saveImagesClick(self){//这里self接收节点中定义的this
                var id = self.id;
                $(document).ready(function(){
                    var div=document.getElementById("headImages");
                    id = id + "==" +div.getAttribute("src");
                });
                $.ajax({
                    type:"post",
                    url:"saveImages.do",
                    data:{param:id},
                    dataType:"json",
                    success:function (data) {
                        if(data.success){
                            $.messager.confirm("提示","上传头像成功!重新登录后显示新头像",function(){
                                window.location.href="/personal.do";
                            })
                        }else{
                            $.messager.alert("温馨提示:","上传失败,请稍后再试!");
                        }
                    }
                });
            }

            //给生成二维码点击事件
            function QRCodeClick(self){//这里self接收节点中定义的this
                var id = self.id;
                $.ajax({
                    type:"post",
                    url:"makeQRCode.do",
                    data:{param:id},
                    dataType:"json",
                    success:function (data) {
                        var msg = data.msg;
                        if(data.success){
                            $.messager.confirm("提示","生成成功,马上扫一扫!",function(){
                                $("#QRCodeImages").attr("src",data.msg);
                                $("#myModal").modal("show");
                            })
                        }else{
                            $.messager.alert("温馨提示:",data.msg);
                        }
                    }
                });
            }
		</script>
	</head>
	<body style="font-family:楷体;font-size: 20px;background-color: #F0F0EE"">
		<!-- 网页顶部导航 -->
		<#include "common/head-tpl.ftl" />
		<!-- 网页导航 -->
		<!-- 在当前的freemarker的上下文中,添加一个变量,变量的名字叫nav,变量的值叫personal -->
		<#assign currentNav="personal"/>
		<#include "common/navbar-tpl.ftl" />
		
		<div class="container">
			<div class="row">
				<!--导航菜单-->
				<div class="col-sm-3">
					<#assign currentMenu="personal"/>
					<#include "common/leftmenu-tpl.ftl" />
				</div>
				<!-- 功能页面 -->
				<div class="col-sm-9">
					<div class="panel panel-default">
						<div class="panel-body el-account">
							<div class="el-account-info">
                                <div class="panel panel-default">
                                    <form class="form-horizontal" id="headerImagesForm" method="post" action="" novalidate="novalidate">
									<div class="pull-left el-head-img">
                                    <div class="form-group">
                                        <div class="col-sm-2">
                                            <img alt="" src="${(logininfo.headImages)!''}" class="uploadImg" id="headImages"/>
                                            <input type="hidden" name="headImages" id="headImages" />
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                        <div class="form-group">
                                            <div class="col-sm-6">
                                        		<a type="submit" id="${(logininfo.id)}" href="/config.do" class="btn btn-primary col-sm-offset-4" data-loading-text="正在提交"><i class="icon-ok"></i>修改头像</a>
											</div>
										</div>
									</div>
                                    </form>
                                </div>
								<div class="pull-left el-head">
									<p>用户名:${(logininfo.username)!''}</p>
									<p>最后登录时间：${loginTime?string("yyyy-MM-dd HH:mm:SS" )}</p>
								</div>
								<div class="pull-left" style="text-align: center;width: 400px;margin:30px auto 0px auto;">
                                    <span class="btn btn-primary btn-sm" onclick='QRCodeClick(this)' id="${(logininfo.id)!''}" aria-hidden="true">生成二维码</span><#--回复数-->
                                    <a class="btn btn-danger btn-sm" href="/moneyWithdraw.do">账户提现</a>
								</div>
								<div class="clearfix"></div>
							</div>
							
							<div class="row h4 account-info">
								<div class="col-sm-4">
									账户积分：<span class="text-primary">0积分</span>
								</div>
								<div class="col-sm-4">
									可用金额：<span class="text-primary">0元</span>
								</div>
								<div class="col-sm-4">
									冻结金额：<span class="text-primary">0元</span>
								</div>
							</div>
							
							<div class="row h4 account-info">
								<div class="col-sm-4">
									待收利息：<span class="text-primary">0元</span>
								</div>
								<div class="col-sm-4">
									待收本金：<span class="text-primary">0元</span>
								</div>
								<div class="col-sm-4">
									待还本息：<span class="text-primary">0元</span>
								</div>
							</div>
							
							<div class="el-account-info top-margin">
								<div class="row">
									<div class="col-sm-4">
										<div class="el-accoun-auth">
											<div class="el-accoun-auth-left">
												<img src="images/shiming.png" />
											</div>
											<div class="el-accoun-auth-right">
												<h5>实名认证</h5>
												<#if userinfo.isRealAuth>
												<p>
													已认证
													<a href="/realAuth.do" id="">查看</a>
												</p>
												<#else>
												<p>
													未认证
													<a href="/realAuth.do" id="">立刻绑定</a>
												</p>
												</#if>
											</div>
											<div class="clearfix"></div>
											<p class="info">实名认证之后才能在平台投资</p>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="el-accoun-auth">
											<div class="el-accoun-auth-left">
												<img src="images/shouji.jpg" />
											</div>
											<div class="el-accoun-auth-right">
												<h5>手机认证</h5>
												<#if userinfo.isBindPhone >
													<p>
														已认证
														<a href="javascript:;" >修改手机信息</a>
													</p>
													
												<#else>
													<p>
														未认证
														<a href="javascript:;" id="showBindPhoneModal">立刻绑定</a>
													</p>
												</#if>
											</div>
											<div class="clearfix"></div>
											<p class="info">可以收到系统操作信息,并增加使用安全性</p>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="el-accoun-auth">
											<div class="el-accoun-auth-left">
												<img src="images/youxiang.jpg" />
											</div>
											<div class="el-accoun-auth-right">
												<h5>邮箱认证</h5>
												<#if userinfo.isBindMail>
													<p>
														已绑定
														<a href="javascript:;" id="">修改邮箱</a>
													</p>
												<#else>
													<p>
														未绑定
														<a href="javascript:;" id="showBindEmailModal">去绑定</a>
													</p>
												</#if>
											</div>
											<div class="clearfix"></div>
											<p class="info">您可以设置邮箱来接收重要信息</p>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<div class="el-accoun-auth">
											<div class="el-accoun-auth-left">
												<img src="images/baozhan.jpg" />
											</div>
											<div class="el-accoun-auth-right">
												<h5>VIP会员</h5>
												<p>
													普通用户
													<a href="#">查看</a>
												</p>
											</div>
											<div class="clearfix"></div>
											<p class="info">VIP会员，让你享受更多服务</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>		
		
		<div class="modal fade" id="bindPhoneModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			<h4 class="modal-title" id="exampleModalLabel">绑定手机</h4>
		      </div>
		      <div class="modal-body">
				<form class="form-horizontal" id="bindPhoneForm" method="post" action="/bindPhone.do">
					<div class="form-group">
						    <label for="phoneNumber" class="col-sm-2 control-label">手机号:</label>
						    <div class="col-sm-4">
						      <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" />
						      <button id="sendVerifyCode" class="btn btn-primary" type="button" autocomplate="off">发送验证码</button>
						    </div>
						</div>
						<div class="form-group">
						    <label for="verifyCode" class="col-sm-2 control-label">验证码:</label>
						    <div class="col-sm-4">
						      <input type="text" class="form-control" id="verifyCode" name="verifyCode" />
						    </div>
						</div>
				</form>
		      </div>
		      <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				<button type="submit" class="btn btn-primary" id="bindPhone">保存</button>
		      </div>
		    </div>
		  </div>
		</div>
		
		
		<div class="modal fade" id="bindEmailModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			<h4 class="modal-title" id="exampleModalLabel">绑定邮箱</h4>
		      </div>
		      <div class="modal-body">
				<form class="form-horizontal" id="bindEmailForm" method="post" action="/sendEmail.do">
					<div class="form-group">
					    <label for="email" class="col-sm-2 control-label">Email:</label>
					    <div class="col-sm-4">
					      <input type="text" class="form-control" id="email" name="email" />
					    </div>
					</div>
				</form>
		      </div>
		      <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				<button type="button" class="btn btn-primary" id="bindEmail">保存</button>
		      </div>
		    </div>
		  </div>
		</div>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog"  style="text-align: center">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <form class="form-horizontal" id="editform" method="post" action="">
                        <fieldset>
                            <div id="legend" class="">
                                <legend>扫一扫,所见即所得</legend>
                            </div>
                            <input type="hidden" name="id" id="id" value="" />
                            <input type="hidden" name="state" id="state" value="" />

                            <div class="row">
                                <div class="col-sm-12">
                                    <img src="" id="QRCodeImages" style="width: 150px;"/>
                                </div>
                            </div>

                        </fieldset>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
		</div>
	</div>
		<#include "common/footer-tpl.ftl" />
	</body>
</html>