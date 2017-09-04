<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>WebChat | 个人设置</title>
    <#include "../common/links-tpl.ftl" />
    <script type="text/javascript">
       $(function(){
           $("#information-form").ajaxForm({
               success:function(data){
                   if(data.success){
                       $.messager.confirm("提示",data.msg,function(){
                           window.location.href="/config.do";
                       });
                   }else{
                       $.messager.alert("温馨提示:",data.msg);
                   }
               }
           });
           $("#imagesForm").ajaxForm({
               success:function(data){
                   if(data.success){
                       $.messager.confirm("提示",data.msg,function(){
                           window.location.href="/config.do";
                       });
                   }else{
                       $.messager.alert("温馨提示:",data.msg);
                   }
               }
           });
           $("#passwordForm").ajaxForm({
               success:function(data){
                   if(data.success){
                       $.messager.confirm("提示",data.msg,function(){
                           window.location.href="/config.do";
                       });
                   }else{
                       $.messager.alert("温馨提示:",data.msg);
                   }
               }
           });
       });
       function getVal(id){
           var password = document.getElementById(id).value;
           $.ajax({
               type:"post",
               url:"checkPassword.do",
               data:{password},
               dataType:"json",
               success:function (data) {
                   var msg = data.msg;
                   if(data.success){

                   }else{
                       $.messager.alert("温馨提示:",data.msg);
                   }
               }
           });
       }
    </script>

</head>

<body style="font-family:楷体;font-size: 20px;background-color: #F0F0EE"">
<#include "../common/head-tpl.ftl" />
<#assign currentNav="info-setting"/>
<#include "../common/navbar-tpl.ftl" />
<div class="am-cf admin-main">
    <#include "include/chat_left.ftl">
    <!-- content start -->
    <div class="admin-content">

        <div class="am-cf am-padding">
            <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">个人设置</strong> / <small>form</small></div>
        </div>

        <div class="am-tabs am-margin" data-am-tabs>
            <ul class="am-tabs-nav am-nav am-nav-tabs">
                <li class="am-active"><a href="#tab1">基本信息</a></li>
                <li><a href="#tab2">修改头像</a></li>
                <li><a href="#tab3">修改密码</a></li>
            </ul>

            <div class="am-tabs-bd">
                <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                    <form class="am-form am-form-horizontal" id="information-form" action="/reviseInfoSetting.do" method="post">
                        <input type="hidden" name="id" value="${(userinfo.id)!''}">

                        <div class="am-form-group">
                            <label for="age" class="am-u-sm-2 am-form-label">用户名</label>
                            <div class="am-u-sm-10">
                                <input type="text" id="userid" name="userid" value="${(userinfo.realName)!''}" placeholder="这里输入你的用户名...">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="age" class="am-u-sm-2 am-form-label">昵称</label>
                            <div class="am-u-sm-10">
                                <input type="text" id="nickname" name="nickname" value="${(logininfo.username)!''}" placeholder="这里输入你的昵称...">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="sex" class="am-u-sm-2 am-form-label">性别</label>
                            <div class="am-u-sm-10">
                                <select id="sex" name="sex" selected="">
                                    <option selected></option>
                                    <option value="0">男</option>
                                    <option value="1">女</option>
                                    <option value="-1">保密</option>
                                </select>
                            </div>
                            <script>
                                document.getElementById("sex").value="${(userinfo.sex)!''}"
                            </script>
                        </div>
                        <div class="am-form-group">
                            <label for="age" class="am-u-sm-2 am-form-label">年龄</label>
                            <div class="am-u-sm-10">
                                <input type="number" id="age" name="age" min="1" max="100" value="${(userinfo.age)!''}" placeholder="这里输入你的年龄...">
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="profile" class="am-u-sm-2 am-form-label">个性签名</label>
                            <div class="am-u-sm-10">
                                <textarea class="" id="profile" name="profile" rows="5" placeholder="这里可以写下你的个性签名..."></textarea>
                            </div>
                            <script>
                                $("#profile").val("${(userinfo.profile)!''}");
                            </script>
                        </div>
                        <div class="am-form-group">
                            <div class="am-u-sm-10 am-u-sm-offset-2">
                                <button type="submit" class="am-btn am-round am-btn-success"><span class="am-icon-send"></span> 提交</button>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="am-tab-panel am-fade" id="tab2">
                    <form id="imagesForm" class="am-form am-form-horizontal" action="/saveImages.do" enctype="multipart/form-data" method="post" onsubmit="return checkFileType();" style="text-align: center;">
                        <div style="text-align: center;margin-bottom: 10px">
                            <img class="am-circle" src="${(logininfo.headImages)!''}" width="140" height="140" alt="Amayadream"/>
                        </div>
                        <div class="am-form-group am-form-file">
                            <button type="button" class="am-btn am-btn-secondary am-btn-sm">
                                <a class="am-icon-cloud-upload" href="/chat.do"></a> 点击跳转修改头像</button>
                            <input id="file" type="file" name="file" multiple>
                        </div>
                        <div id="file-list"></div>
                        <button type="submit" class="am-btn am-round am-btn-success"><span class="am-icon-upload"></span> 上传头像</button>
                        <script>
                            $(function() {
                                $('#file').on('change', function() {
                                    var fileNames = '';
                                    $.each(this.files, function() {
                                        fileNames += '<span class="am-badge">' + this.name + '</span> ';
                                    });
                                    $('#file-list').html(fileNames);
                                });
                            });
                        </script>
                    </form>
                </div>

                <div class="am-tab-panel am-fade" id="tab3">
                    <form id="passwordForm" class="am-form am-form-horizontal" data-am-validator action="/changePassword.do" method="post">
                        <div class="am-form-group">
                            <label for="password" class="am-u-sm-2 am-form-label">原密码</label>
                            <div class="am-u-sm-10">
                                <input type="password" id="password" name="oldpass" required placeholder="请输入原密码..." onblur="getVal(this.id)">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="password2" class="am-u-sm-2 am-form-label">新密码</label>
                            <div class="am-u-sm-10">
                                <input type="password" id="password2" name="newpass" required placeholder="请输入新密码...">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="password3" class="am-u-sm-2 am-form-label">确认新密码</label>
                            <div class="am-u-sm-10">
                                <input type="password" id="password3" data-equal-to="#password2" required placeholder="请确认新密码...">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <div class="am-u-sm-10 am-u-sm-offset-2">
                                <button type="submit" class="am-btn am-round am-btn-success"><span class="am-icon-send"></span> 提交修改</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- content end -->
</div>
<a href="#" class="am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}">
    <span class="am-icon-btn am-icon-th-list"></span>
</a>
<footer style="text-align: center">
    <hr>
    <p class="am-padding-left">2017 <a href="http://www.amayadream.com">EasyLife | ChatRoom</a>. </p>
</footer>
<script>
    if("${message!''}"){
        layer.msg('${message!''}', {
            offset: 0,
        });
    }
    if("${error!''}"){
        layer.msg('${error!''}', {
            offset: 0,
            shift: 6
        });
    }

    function checkFileType(){
        var format = ["bmp","jpg","gif","png"];
        var filename = $("#file").val();
        var ext = filename.substring(filename.lastIndexOf('.') + 1).toLowerCase();
        if(jQuery.inArray(ext, format) != -1){
            return true;
        }else{
            layer.msg('头像格式只能是bmp,jpg,gif,png!', {
                offset: 0,
                shift: 6
            });
            return false;
        }
    }
</script>
</body>
</html>
