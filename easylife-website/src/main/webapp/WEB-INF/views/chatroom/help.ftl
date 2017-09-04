<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>WebChat | 帮助</title>
    <#include "../common/links-tpl.ftl" />
    <script type="text/javascript" src="/js/plugins/jquery.form.js"></script>
    <script type="text/javascript" src="/js/plugins/uploadify/jquery.uploadify.min.js"></script>
    <link type="text/css" rel="stylesheet" href="/css/account.css" />

    <style>
        html, body{
            height:80%;;
        }
    </style>
</head>
<body style="font-family:楷体;font-size: 20px;background-color: #F0F0EE">
<!-- 网页顶部导航 -->
<#include "chat_header.ftl" />
<div class="am-cf admin-main">
    <!-- 网页导航 -->
    <!-- 在当前的freemarker的上下文中,添加一个变量,变量的名字叫nav,变量的值叫personal -->
    <#include "../common/head-tpl.ftl" />
    <#assign currentNav="chat"/>
    <#include "../common/navbar-tpl.ftl" />
    <#include "include/chat_left.ftl">
    <!-- content start -->
    <div class="admin-content">
        <div class="am-cf am-padding">
            <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">帮助</strong> / <small>help</small></div>
        </div>
        <div class="am-tabs am-margin" data-am-tabs>
            <ul class="am-tabs-nav am-nav am-nav-tabs">
                <li class="am-active"><a href="#tab1">帮助</a></li>
            </ul>
            <div class="am-tabs-bd">
                <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                    如何使用
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
</body>
</html>
