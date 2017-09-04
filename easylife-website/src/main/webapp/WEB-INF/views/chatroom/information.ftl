<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Easylife | ChartRoom-个人信息</title>
    <link rel="stylesheet" href="/js/amaze/css/amazeui.min.css">
    <link rel="stylesheet" href="/js/amaze/css/admin.css">
    <link rel="stylesheet" href="/js/contextjs/css/context.standalone.css">
    <script src="/js/jquery/jquery-2.1.3.min.js"></script>
    <script src="/js/amaze/js/amazeui.min.js"></script>
    <script src="/js/amaze/js/app.js"></script>
    <script src="/js/laypage/laypage.js"></script>
    <script src="/js/layer/layer.js"></script>
    <script src="/js/contextjs/js/context.js"></script>
    <script src="/js/sockjs/sockjs.js"></script>
<#include "../common/links-tpl.ftl" />
    <script type="text/javascript" src="/js/plugins/jquery.form.js"></script>
    <script type="text/javascript" src="/js/plugins/uploadify/jquery.uploadify.min.js"></script>
    <link type="text/css" rel="stylesheet" href="/css/account.css" />
</head>
<body style="font-family:楷体;font-size: 20px;background-color: #F0F0EE">
    <!-- 网页顶部导航 -->
    <#include "../common/head-tpl.ftl" />
    <#assign currentNav="information"/>
    <#include "../common/navbar-tpl.ftl" />
    <div class="container">
        <div class="row">
            <div class="am-cf admin-main">
                <div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
                    <div class="am-offcanvas-bar admin-offcanvas-bar">
                        <ul class="am-list admin-sidebar-list">
                            <li><a href="/chat.do"><span class="am-icon-commenting"></span> 聊天</a></li>
                            <li><a href="/information.do" class="am-cf"><span class="am-icon-book"></span> 个人信息<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
                            <li class="admin-parent">
                                <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-cogs"></span> 设置 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                                <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
                                    <li><a href="/config"><span class="am-icon-group"></span> 个人设置</a></li>
                                    <li><a href="/system-setting"><span class="am-icon-cog"></span> 系统设置</a></li>
                                </ul>
                            </li>
                            <li><a href="/log"><span class="am-icon-inbox"></span> 系统日志<span class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
                            <li><a href="/help"><span class="am-icon-globe"></span> 帮助</a></li>
                            <li><a href="/about"><span class="am-icon-leaf"></span> 关于</a></li>
                            <li><a href="/user/logout"><span class="am-icon-sign-out"></span> 注销</a></li>
                        </ul>
                        <div class="am-panel am-panel-default admin-sidebar-panel">
                            <div class="am-panel-bd">
                                <p><span class="am-icon-tag"></span> Welcome</p>
                                <p>欢迎使用WebChat聊天室~</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- content start -->
                <div class="admin-content">
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">个人信息</strong> / <small>info</small></div>
                    </div>
                    <div class="am-tabs am-margin" data-am-tabs>
                        <ul class="am-tabs-nav am-nav am-nav-tabs">
                            <li class="am-active"><a href="#tab1">个人信息</a></li>
                        </ul>
                        <div class="am-tabs-bd">
                            <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                                <div class="am-g">
                                    <c:set value="${user!''}" var="user"/>
                                    <div class="am-u-md-3"><b>昵称:</b></div>
                                    <div class="am-u-md-3">
                                    ${(logininfo.username)!''}
                                    </div>
                                    <div class="am-u-md-6" style="float: right">
                                        <img class="am-circle" src="${(user.profilehead)!''}" width="140" height="140" alt="${(user.nickname)!''}"/>
                                    </div>

                                    <div class="am-u-md-3"><b>性别:</b></div>
                                    <div class="am-u-md-3">
                                    ${(userinfo.sexDisplay)!''}
                                    </div>
                                    <div class="am-u-md-3"><b>年龄:</b></div>
                                    <div class="am-u-md-3">
                                    ${(userinfo.age)!''}
                                    </div>
                                    <div class="am-u-md-3"><b>简介:</b></div>
                                    <div class="am-u-md-3">
                                    <#if userinfo.isProfile>
                                    ${(userinfo.profile)!''}
                                    <#else>
                                        这个人很懒什么都没留下..........
                                    </#if>
                                    </div>
                                    <div class="am-u-md-3"><b>注册时间</b></div>
                                    <div class="am-u-md-3">${(userinfo.firsttime)?string("yyyy-MM-dd HH:mm:SS" )}</div>
                                    <div class="am-u-md-3"><b>最后登录</b></div>
                                    <div class="am-u-md-3">${(userinfo.lasttime)?string("yyyy-MM-dd HH:mm:SS" )}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- content end -->
                </div>
            </div>
    </div>
    <a href="#" class="am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}">
        <span class="am-icon-btn am-icon-th-list"></span>
    </a>
    <jsp:include page="include/footer.jsp"/>
</body>
</html>
