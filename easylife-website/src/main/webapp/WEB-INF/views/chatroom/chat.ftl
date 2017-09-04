<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Easylif | ChatRoom</title>
    <!-- 包含一个模板文件,模板文件的路径是从当前路径开始找 -->
    <link href="css/lanrenzhijia.css" type="text/css" rel="stylesheet"/>
    <#include "../common/links-tpl.ftl" />
    <script type="text/javascript" src="/js/json/json2.js"></script>
    <script type="text/javascript" src="/js/plugins/jquery.form.js"></script>
    <script type="text/javascript" src="/js/plugins/uploadify/jquery.uploadify.min.js"></script>
    <link type="text/css" rel="stylesheet" href="/css/account.css" />
    <script src="/js/jquery/jquery.imgbox.pack.js"></script>
    <style type="text/css">
        .am-comment am-comment-flip am-comment-primary{
            border: 1px solid #3e8f3e;
            height: 60px;
            width: 200px;
            margin: 2px;
            margin-right:20px;
            float: right;
        }
        .am-comment  am-comment-primary{
            border: 1px solid #3e8f3e;
            height: 60px;
            width: 200px;
            margin: 2px;
            margin-left:1px;
            float: left;
        }
    </style>
    <script>
        $(function () {
            context.init({preventDoubleContext: false});
            context.settings({compress: true});
            context.attach('#chat-view', [
                {header: '操作菜单',},
                {text: '清理', action: clearConsole},
                {divider: true},
                {
                    text: '选项', subMenu: [
                    {header: '连接选项'},
                    {text: '检查', action: checkConnection},
                    {text: '连接', action: getConnection},
                    {text: '断开', action: closeConnection}
                ]
                },
                {
                    text: '销毁菜单', action: function (e) {
                    e.preventDefault();
                    context.destroy('#chat-view');
                }
                }
            ]);
        });
        if("${message!''}"){
            layer.msg('${message!''}', {
                offset: 0
            });
        }
        if("${error!''}"){
            layer.msg('${error!''}', {
                offset: 0,
                shift: 6
            });
        }
        var wsServer = null;
        var ws = null;
        wsServer = "ws://" + location.host+"${(pageContext.request.contextPath)!''}" + "/chatServer";
        ws = new WebSocket(wsServer); //创建WebSocket对象
        ws.onopen = function (evt) {
            layer.msg("已经建立连接", { offset: 0});
        };
        ws.onmessage = function (evt) {
            analysisMessage(evt.data);  //解析后台传回的消息,并予以展示
        };
        ws.onerror = function (evt) {
            layer.msg("产生异常", { offset: 0});
        };
        ws.onclose = function (evt) {
            layer.msg("已经关闭连接", { offset: 0});
        };

        /**
         * 连接
         */
        function getConnection(){
            if(ws == null){
                ws = new WebSocket(wsServer); //创建WebSocket对象
                ws.onopen = function (evt) {
                    layer.msg("成功建立连接!", { offset: 0});
                };
                ws.onmessage = function (evt) {
                    analysisMessage(evt.data);  //解析后台传回的消息,并予以展示
                };
                ws.onerror = function (evt) {
                    layer.msg("产生异常", { offset: 0});
                };
                ws.onclose = function (evt) {
                    layer.msg("已经关闭连接", { offset: 0});
                };
            }else{
                layer.msg("连接已存在!", { offset: 0, shift: 6 });
            }
        }

        /**
         * 关闭连接
         */
        function closeConnection(){
            if(ws != null){
                ws.close();
                ws = null;
                $("#list").html("");    //清空在线列表
                layer.msg("已经关闭连接", { offset: 0});
            }else{
                layer.msg("未开启连接", { offset: 0, shift: 6 });
            }
        }

        /**
         * 检查连接
         */
        function checkConnection(){
            if(ws != null){
                layer.msg(ws.readyState == 0? "连接异常":"连接正常", { offset: 0});
            }else{
                layer.msg("连接未开启!", { offset: 0, shift: 6 });
            }
        }

        /**
         * 发送信息给后台
         */
        function sendMessage(){
            if(ws == null){
                layer.msg("连接未开启!", { offset: 0, shift: 6 });
                return;
            }
            var message = document.getElementById("message").innerHTML;
            var to = $("#sendto").text() == "全体成员"? "": $("#sendto").text();
            if(message == null || message == ""){
                layer.msg("内容不可为空哦!", { offset: 0, shift: 6 });
                return;
            }
            $("#tuling").text() == "已上线"? tuling(message):console.log("机器人Minions未开启");  //检测是否加入图灵机器人
            ws.send(JSON.stringify({
                message : {
                    content : message,
                    from : '${(logininfo.username)!''}',
                    to : to,      //接收人,如果没有则置空,如果有多个接收人则用,分隔
                    time : getDateFull(),
                    images:'${(logininfo.headImages)!''}'

                },
                type : "message"
            }));
        }
        /**
         * 图灵上线
         */
        function tulingLogin(){
            if($("#tuling").text() == "未上线"){
                $("#tuling").text("已上线").removeClass("am-btn-danger").addClass("am-btn-success");
                showNotice("机器人Minions加入聊天室");
                $("#onlinenum").text(parseInt($("#onlinenum").text())+1)
            }else{
                $("#tuling").text("未上线").removeClass("am-btn-success").addClass("am-btn-danger");
                showNotice("机器人Minions离开聊天室");
                $("#onlinenum").text(parseInt($("#onlinenum").text())-1)
            }
        }
        function recordLick(self){
            var id = self.id;
            var recordUrl = "/chat_record/" + id.substring(0,4) + "-" + id.substring(4,6) + "-" + id.substring(6,8) + ".txt";
            //获取chatBodyContent的div的状态
            var chatDiv = document.getElementById("chatBodyContent");
            var style = chatDiv.getAttribute("style");
            if(style=="display:none"){
                //改变div状态
                chatDiv.setAttribute("style","");
                htmlobj=$.ajax({url:recordUrl,async:false});
                var arr = htmlobj.responseText.split("&mysign&");
                for(i=arr.length-1;i>=0;i--){
                    var data = arr[i];
                    if(data!=null&&data.trim()!=''){
                        var json = JSON.parse(data);
                        //正文内容
                        var content = json.content;
                        //时间
                        var time = json.time;
                        //图片
                        var images = json.images;
                        //发表者
                        var from = json.from;
                        //接受者
                        var receiver = json.to;
                        if(receiver==""){
                            receiver = "全体人员";
                        }

                        //=======设置属性值
                        //创建div
                        var firstDiv = document.createElement("div");
                        firstDiv.setAttribute("id","firstDiv");
                        //如果是自己显示在右边,否则显示左边
                        var isSef ='${(logininfo.username)!''}' == from? "am-comment-flip" : "";
                        if(isSef==''){
                            firstDiv.setAttribute("style","float:left");
                        }else {
                            firstDiv.setAttribute("style","float:right;margin:10px 0 ");
                        }
                        var ul = document.getElementById("recordUl");
                        ul.appendChild(firstDiv);
                        //创建第二个div
                        var secondDiv = document.createElement("div");
                        secondDiv.setAttribute("class","form-group");
                        firstDiv.appendChild(secondDiv);
                        //创建li
                        var li = document.createElement("li");
                        secondDiv.appendChild(li);
                        //创建第三个div
                        var thirdDiv = document.createElement("div");
                        thirdDiv.setAttribute("class","col-sm-12");
                        if(isSef==''){
                            thirdDiv.setAttribute("style","text-align: left;");
                        }else {
                            thirdDiv.setAttribute("style","text-align: right;");
                        }
                        li.appendChild(thirdDiv);
                        //创建a
                        var firstA = document.createElement("a");
                        firstA.setAttribute("href","#link-to-user-home");
                        if(isSef==''){
                            firstA.setAttribute("style","float: left");
                        }else {
                            firstA.setAttribute("style","float: right");
                        }

                        //创建img
                        var headerImg = document.createElement("img");
                        headerImg.setAttribute("id","recordUserHeaderImage"+i);
                        headerImg.setAttribute("class","");
                        headerImg.setAttribute("alt","");
                        headerImg.setAttribute("src","");
                        headerImg.setAttribute("width","30");
                        headerImg.setAttribute("height","30");
                        firstA.appendChild(headerImg);
                        thirdDiv.appendChild(firstA);
                        //创建第四个div
                        var forthDiv = document.createElement("div");
                        forthDiv.setAttribute("style","float: right;border:3px solid #A3A3A2;border-radius: 8px;")
                        thirdDiv.appendChild(forthDiv);
                        //创建第五个div
                        var fivthDiv = document.createElement("div");
                        fivthDiv.setAttribute("class","am-comment-meta");
                        //创建第二个a
                        var secondA = document.createElement("a");
                        secondA.setAttribute("id","recordUserName"+i);
                        secondA.setAttribute("class","am-comment-author");
                        secondA.setAttribute("href","#link-to-user");
                        fivthDiv.appendChild(secondA);
                        forthDiv.appendChild(fivthDiv);
                        //创建第六个div
                        var sixthDiv = document.createElement("div");
                        sixthDiv.setAttribute("class","am-comment-bd");
                        sixthDiv.setAttribute("style","text-align: 2px");
                        //创建p
                        var firstP = document.createElement("p");
                        firstP.setAttribute("id","recordbodyConent"+i);
                        sixthDiv.appendChild(firstP);
                        forthDiv.appendChild(sixthDiv);
                        //创建第七个div
                        var seventhDiv = document.createElement("div");
                        seventhDiv.setAttribute("id","recordTime"+i);
                        seventhDiv.setAttribute("class","am-comment-meta");
                        forthDiv.appendChild(seventhDiv);
                        var headerImg = document.getElementById("recordUserHeaderImage"+i);
                        headerImg.setAttribute("src",images);
                        document.getElementById("recordUserName"+i).innerHTML=from+"发送给:" + receiver;
                        if(content.indexOf("data:image")!=-1){//图片
                            //创建一个新img元素
                            var img = document.createElement("img");
                            //给子元素设置属性
                            img.setAttribute("src",content);
                            img.setAttribute("height","200");
                            img.setAttribute("width","200");
                            var p = document.getElementById("recordbodyConent"+i);
                            p.appendChild(img);
                        }else {//不是图片
                            document.getElementById("recordbodyConent"+i).innerHTML = content;
                        }
                        var div = document.getElementById("recordTime"+i);
                        var datetime = document.createElement("time");
                        datetime.innerHTML = time;
                        div.appendChild(datetime)
                    }
                }
            }else {
                chatDiv.setAttribute("style","display:none");
                //删除div中所有的东西
                $("#recordUl").html("");
                var recordTitle = document.getElementById("chatBodyContent");
                recordTitle.setAttribute("style","display:none;")

            }
            //聊天记录出现了,日历消失
            var calendar = document.getElementById("calendar");
            calendar.setAttribute("style","display:none;");
            var b01 = document.getElementById("b01");
            b01.setAttribute("onclick","showHistory('secondtime')")
        }

        function analysisMessage(message){
            message = JSON.parse(message);
            if(message.type == "message"){      //会话消息
                showChat(message.message);
            }
            if(message.type == "notice"){       //提示消息
                showNotice(message.message);
            }
            if(message.list != null && message.list != undefined){      //在线列表
                showOnline(message.list);
            }
        }

        /**
         * 展示提示信息
         */
        function showNotice(notice){
            $("#chat").append("<div><p class=\"am-text-success\" style=\"text-align:center\"><span class=\"glyphicon glyphicon-volume-up\"></span> "+notice+"</p></div>");
            var chat = $("#chat-view");
            chat.scrollTop(chat[0].scrollHeight);   //让聊天区始终滚动到最下面
        }

        /**
         * 展示会话信息
         */
        function showChat(message){
            var to = message.to == null || message.to == ""? "全体成员" : message.to;   //获取接收人
            var isSef ='${(logininfo.username)!''}' == message.from ? "am-comment-flip" : "";   //如果是自己则显示在右边,他人信息显示在左边
            var html = "";
            if(isSef==""){
                html = "<div class=\"form-group\"><li><div class=\"col-sm-12\" style=\"text-align: left;\"> <a href=\"#link-to-user-home\" style=\"float: left\"> <img class=\"\" onclick=\"tiBigPic(this)\" alt=\"\" src=\""+message.images+"\" id=\"userHeaderImage\" width=\"48\" height=\"48\"></a><div  style=\"float: left;border:3px solid #A3A3A2;border-radius: 8px \"><div class=\"am-comment-meta\"> <a class=\"am-comment-author\" href=\"#link-to-user\">"+message.from+"</a>发送给:"+to+"</div><div class=\"am-comment-bd\" id=\"bodyConent\" style=\"text-align: 50px\"><p>"+message.content+"</p></div><div class=\"am-comment-meta\"><time> "+message.time+"</time></div></div></div></li></div></br>&nbsp;";
            }else {
                html = "<div class=\"form-group\"><li><div class=\"col-sm-12\" style=\"text-align: right;\"> <a href=\"#link-to-user-home\" style=\"float: right\"> <img class=\"\" onclick=\"tiBigPic(this)\" alt=\"\" src=\""+message.images+"\" id=\"userHeaderImage\" width=\"48\" height=\"48\"></a><div  style=\"float: right;border:3px solid #A3A3A2;border-radius: 8px \"><div class=\"am-comment-meta\"> <a class=\"am-comment-author\" href=\"#link-to-user\">"+message.from+"</a>发送给:"+to+"</div><div class=\"am-comment-bd\" id=\"bodyConent\" style=\"text-align: 50px\"><p>"+message.content+"</p></div><div class=\"am-comment-meta\"><time> "+message.time+"</time></div></div></div></li></div></br>&nbsp;";
            }
            $("#chat").append(html);
            /*  $("#message").val("");  //清空输入区*/
            $("#message").html("");
            var chat = $("#chat-view");
            chat.scrollTop(chat[0].scrollHeight);   //让聊天区始终滚动到最下面
        }

        /**
         * 展示在线列表
         */
        function showOnline(list){
            $("#list").html("");    //清空在线列表
            $.each(list, function(index, item){     //添加私聊按钮
                var li = "<li>"+item+"</li>";
                if('${(logininfo.username)!''}' != item){    //排除自己
                    li = "<li>"+item+" <button type=\"button\" style='background-color: #A3A3A2'id=\"privatechat\" class=\"am-btn am-btn-xs am-btn-primary am-round\" onclick=\"addChat('"+item+"','no');\"><span class=\"am-icon-phone\"><span> 私聊</button></li>";
                }
                $("#list").append(li);
            });
            $("#onlinenum").text($("#list li").length);     //获取在线人数
        }

        /**
         * 图灵机器人
         * @param message
         */
        function tuling(message){
            var html;
            $.getJSON("http://www.tuling123.com/openapi/api?key=6ad8b4d96861f17d68270216c880d5e3&info=" + message,function(data){
                if(data.code == 100000){
                    html = "<li class=\"am-comment am-comment-primary\"><a href=\"#link-to-user-home\"><img width=\"48\" height=\"48\" class=\"am-comment-avatar\" alt=\"\" src=\"/upload/robot.jpg\"></a><div class=\"am-comment-main\">\n" +
                            "<header class=\"am-comment-hd\"><div class=\"am-comment-meta\">   <a class=\"am-comment-author\" href=\"#link-to-user\">Robot</a> 发表于<time> "+getDateFull()+"</time> 发送给: ${(logininfo.username)!''}</div></header><div class=\"am-comment-bd\"> <p>"+data.text+"</p></div></div></li>";
                }
                if(data.code == 200000){
                    html = "<li class=\"am-comment am-comment-primary\"><a href=\"#link-to-user-home\"><img width=\"48\" height=\"48\" class=\"am-comment-avatar\" alt=\"\" src=\"/upload/robot.jpg\"></a><div class=\"am-comment-main\">\n" +
                            "<header class=\"am-comment-hd\"><div class=\"am-comment-meta\">   <a class=\"am-comment-author\" href=\"#link-to-user\">Robot</a> 发表于<time> "+getDateFull()+"</time> 发送给: ${(logininfo.username)!''}</div></header><div class=\"am-comment-bd\"> <p>"+data.text+"</p><a href=\""+data.url+"\" target=\"_blank\">"+data.url+"</a></div></div></li>";
                }
                $("#chat").append(html);
                var chat = $("#chat-view");
                chat.scrollTop(chat[0].scrollHeight);
                /*  $("#message").val("");  //清空输入区*/
                $("#message").html("");
            });
        }

        /**
         * 添加接收人
         */
        function addChat(user,judge){
            if(judge=='no'){
                var sendto = $("#sendto");
                var receive = sendto.text() == "全体成员" ? "" : sendto.text() + ",";

                    //改变class的值
                    document.getElementById("resetId").setAttribute("class","glyphicon glyphicon-eye-close");
                if(receive.indexOf(user) == -1){    //排除重复
                    //改变样式
                    document.getElementById("privatechat").setAttribute("style","background-color: #00aa00");
                    sendto.text(receive + user);
                }
                if(receive!=''&&receive!=null){
                    resetClick();
                }
            }
        }

        /**
         * 清空聊天区
         */
        function clearConsole(){
            $("#chat").html("");
        }
        /**
         * 显示聊天记录
         */
        function showHistory(time){
            if(time=='firsttime'){
                var calendar = document.getElementById("calendar");
                calendar.setAttribute("style","text-align:center; margin-left:90px;");
            }else if(time=='secondtime'){
                //删除div中所有的东西
                $("#recordUl").html("");
                var recordTitle = document.getElementById("chatBodyContent");
                recordTitle.setAttribute("style","display:none")
                var calendar = document.getElementById("calendar");
                calendar.setAttribute("style","text-align:center; margin-left:90px;");
            }
        }

        function appendZero(s){return ("00"+ s).substr((s+"").length);}  //补0函数

        function getDateFull(){
            var date = new Date();
            var currentdate = date.getFullYear() + "-" + appendZero(date.getMonth() + 1) + "-" + appendZero(date.getDate()) + " " + appendZero(date.getHours()) + ":" + appendZero(date.getMinutes()) + ":" + appendZero(date.getSeconds());
            return currentdate;
        }
        //键盘监视事件,当是回车键时,直接发送信息
        document.onkeydown = function(e){
            var ev = document.all ? window.event : e;
            if(ev.keyCode==13) {
                sendMessage();
            }
        }
    </script>
    <script>
        /**
         * 清空聊天区
         */
        function resetClick(){
            var text = document.getElementById("sendto").innerHTML;
            if(text=="全体成员"){

            }else {
                //改变class的值
                document.getElementById("resetId").setAttribute("class","glyphicon glyphicon-eye-open");
                //改变span的值
                document.getElementById('sendto').innerHtml = $('#sendto').text('全体成员');
                //同时改变私聊按钮的样式
                document.getElementById("privatechat").setAttribute("style","background-color: #A3A3A2");
            }
        }
        /**
         * 使图片变大
         */
        function tiBigPic(self){
            var id = self.id;
            var src = document.getElementById(id).src;
            $("#bigQRCodeImages").attr("src",src);
            $("#bigPicShow").modal("show");
        }
        /*确定发送*/
        function trueSend(){
            sendMessage();
        }
        /*取消清除内容*/
        function clearContent(){
            $("#message").html("");
        }
        function changImg(e){
            for (var i = 0; i < e.target.files.length; i++) {
                var file = e.target.files.item(i);
                if (!(/^image\/.*$/i.test(file.type))) {
                    continue; //不是图片 就跳出这一次循环
                }
                //实例化FileReader API
                var freader = new FileReader();
                freader.readAsDataURL(file);
                freader.onload = function(e) {
                    var div = document.getElementById("message")
                    var divBodyConent = document.getElementById("bodyConent")
                    var img = document.createElement("img");
                    //给子元素设置属性
                    img.setAttribute("src",e.target.result);
                    img.setAttribute("id","senfPictrue" + new Date().getTime());
                    img.setAttribute("height","200");
                    img.setAttribute("width","200");
                    img.setAttribute("onclick","tiBigPic(this)");
                    //创建子元素
                    div.appendChild(img);
                    $("#QRCodeImages").attr("src",e.target.result);
                    $("#myModal").modal("show");
                };
            }
        }
        var img = $("#children").lastChild;
    </script>
</head>
<body style="font-family:楷体;font-size: 20px;background-color: #F0F0EE">
<!-- 网页顶部导航 -->
<#include "chat_header.ftl" />
<!-- 网页导航 -->
<!-- 在当前的freemarker的上下文中,添加一个变量,变量的名字叫nav,变量的值叫personal -->
<#include "../common/head-tpl.ftl" />
<#assign currentNav="chat"/>
<#include "../common/navbar-tpl.ftl" />
<div class="container" style="width: 1500px;height: auto">
<#include "include/chat_left.ftl">
    <!-- content start -->
    <div class="admin-content" style="width: 50%;float:left">
        <div class="" style="">
            <!-- 聊天区 -->
            <div class="am-scrollable-vertical" id="chat-view" style="height: 510px;">
                <ul class="am-comments-list am-comments-list-flip" id="chat">
                </ul>
            </div>
            <!-- 输入区 -->
            <div class="am-form-group am-form">
                <!-- 按钮区 -->
                <div class="am-form-group am-form-file" style="float:left;">
                    <button title="连接" class="glyphicon glyphicon-object-align-horizontal btn-mid"type="button" onclick="getConnection()"></button>
                    <button title="断开" class="glyphicon glyphicon-remove btn-mid" type="button" onclick="closeConnection()"></button>
                    <button title="检查" class="glyphicon glyphicon-refresh btn-mid" type="button" onclick="checkConnection()"></button>
                    <button title="清屏" class="glyphicon glyphicon-trash btn-mid" type="button" onclick="clearConsole()"></button>
                    <button title="发送图片" type="button" class="" style="background-color: white;border: none">
                        <a class="glyphicon glyphicon-open-file btn-mid" href="/chat.do"></a></button>
                    <div id="file-list" style="background-color: white"></div>
                    <input id="file"  onchange="changImg(event)" type="file" name="file" multiple>
                </div>
                <div style="float:right;align: right">
                <#if Session["reaordList"]?exists>
                    <button id="b01" title="显示聊天记录" class="glyphicon glyphicon-tasks btn-mid" type="button" onclick="showHistory('firsttime')" style="text-align:right;" ></button>
                    <script type="text/javascript">
                        var data = ${Session.reaordList};
                        var button = document.getElementById("b01");
                        button.setAttribute("recorddata",data);
                    </script>
                <#else >
                    <button id="b01" title="显示聊天记录" class="glyphicon glyphicon-tasks btn-mid" type="button" onclick="showHistory('firsttime')" style="text-align:right;" ></button>

                </#if>
                </div>
                <div class="am-form-group am-form">
                    <div id="message" name="message" rows="5"  placeholder="这里输入你想发送的信息..."style="width: 100%; height: 200px; border: whitesmoke 1px solid; font-size:small; line-height:1; overflow:auto;"
                         contenteditable="true"></div>
                </div>
                <div class="am-btn-group am-btn-group-xs" style="float:right;">
                    <button title="发送" style="background-color: #A3A3A2" class="glyphicon glyphicon-sort btn-sms" type="button" onclick="sendMessage()"><span>发送</span></button>
                </div>
            </div>
            <!-- 接收者 -->
            <div class="" style="float: left">
                <p class="am-kai">发送给 : <span id="sendto">全体成员</span><button style="background-color: white;border: none" id="resetId" class="glyphicon glyphicon-eye-open" title="复位" onclick="resetClick()"></button></p>
            </div>
        </div>
    </div>
    <div class="admin-content"style="width: 30%;height: 813px;float:left">
        <div class="" style="">
            <!-- 聊天区 -->
            <div class="am-scrollable-vertical" id="chat-view" style="height: 813px;">
                <!-- 列表区 -->
                <div class="admin-parent" style="width: 100%;" id="onlineList">
                    <div class="am-panel-hd" data-am-collapse="{target: '#list'}">
                        <h3 class="am-panel-titlet" style="text-align: center">
                            <button class="btn btn-primary" type="button">
                                在线列表 <span class="badge"><span id="onlinenum"></span></span>
                            </button></h3>
                    </div>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse_list">
                        <li>机器人:Minions <button class="am-btn am-btn-xs am-btn-danger am-round" onclick="tulingLogin()" id="tuling" data-am-button>未上线</button></li>
                    </ul>
                    <ul class="am-list am-list-static am-list-striped" id="list">
                    </ul>
                </div>
                <#--日历-->
                <div class='calendar' id='calendar' style="text-align:center; margin-left:90px;display:none"></div>
                <script type='text/javascript' src='/js/calendar.js'></script>
                <link rel='stylesheet' href='/css/calendar.css' />
                <div id="chatBodyContent" style="display:none">
                    <h4 style="text-align: center"><b>聊天记录</b></h4>
                    <hr style="border : 1px dashed #e2e2e2;"/>
                    <div id="myDiv">
                        <ul id="recordUl" class="am-comments-list am-comments-list-flip">
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- content end -->
</div>
</div>
</div>
<#--对话框-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"  style="text-align: center">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <form class="form-horizontal" id="editform" method="post" action="">
                    <fieldset>
                        <div id="legend" class="">
                            <legend>发送图片</legend>
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
                <button onclick="clearContent()" type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button onclick="trueSend()" type="button" class="btn btn-primary btn-sm" data-dismiss="modal">确定</button>
            </div>
        </div>
    </div>
</div>
<#--大图片-->
<div class="modal fade" id="bigPicShow" tabindex="-1" role="dialog"  style="text-align: center">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-body">
            <form class="form-horizontal" id="editform" method="post" action="">
                <fieldset>
                    <input type="hidden" name="id" id="id" value="" />
                    <input type="hidden" name="state" id="state" value="" />
                    <div class="row">
                        <div class="col-sm-12">
                            <img src="" id="bigQRCodeImages" style="width: 600px;"/>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
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