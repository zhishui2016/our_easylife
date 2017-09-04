<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>WebChat | 关于</title>
    <#include "../common/links-tpl.ftl" />
    <script type="text/javascript" src="/js/plugins/jquery.form.js"></script>
    <script type="text/javascript" src="/js/plugins/uploadify/jquery.uploadify.min.js"></script>
    <link type="text/css" rel="stylesheet" href="/css/account.css" />
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

    <!-- content start -->
    <div class="admin-content">
        <div class="am-cf am-padding">
            <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">关于</strong> / <small>about</small></div>
        </div>
        <div class="am-tabs am-margin" data-am-tabs>
            <ul class="am-tabs-nav am-nav am-nav-tabs">
                <li class="am-active"><a href="#tab1">所用技术</a></li>
                <li><a href="#tab2">获取源码</a></li>
                <li><a href="#tab3">关于作者</a></li>
            </ul>
            <div class="am-tabs-bd">
                <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                    <hr>
                    <blockquote>
                        <p>WebChat主要使用SSM框架,即Spring + Spring MVC + Mybatis</p>
                        <p>通讯使用的是websocket</p>
                        <p>数据库使用的是Oracle 10g express版</p>
                        <p>前端框架采用的是<a href="http://http://amazeui.org" target="_blank">Amaze UI</a>,弹窗控件和分页控件采用的是<a href="http://http://layer.layui.com/" target="_blank">Layer</a>和<a href="http://http://laypage.layui.com/" target="_blank">Laypage</a></p>
                    </blockquote>
                </div>

                <div class="am-tab-panel am-fade am-in" id="tab2">
                    <hr>
                    <blockquote>
                        <p><a href="https://github.com/Amayadream/WebChat" target="_blank">https://github.com/Amayadream/WebChat</a></p>
                    </blockquote>
                </div>

                <div class="am-tab-panel am-fade am-in" id="tab3">
                    <hr>
                    <blockquote>
                        <p>欢迎访问我的个人网站<a href="http://www.amayadream.com" target="_blank">Amayadream.com</a>,虽然并没有什么东西可看</p>
                        <p>也欢迎访问我的github, <a href="https://github.com/Amayadream" target="_blank">github.com/Amayadream</a></p>
                    </blockquote>
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
