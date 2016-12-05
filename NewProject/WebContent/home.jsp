<%--
  Created by IntelliJ IDEA.
  User: Huangjx
  Date: 2016/12/5
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="oa/css/bootstrap.min.css" rel="stylesheet">
    <link href="oa/css/home.css" rel="stylesheet">
    <!-- 如果要使用Bootstrap的js插件，必须先调入jQuery -->
    <script src="oa/js/jquery-3.1.1.min.js"></script>
    <!-- 包括所有bootstrap的js插件或者可以根据需要使用的js插件调用　-->
    <script src="oa/js/bootstrap.min.js"></script>
    <title>九星OA后台管理</title>
</head>

<body>
<div>
    <div class="gsbg">
        <h3 class="bg">江西九星科技有限公司</h3>
        <div class="dropdown" id="daohan">
            <!--下拉导航--->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <!--自动触发脚本 -->
                <img src="oa/photo/profle.png"/>
                <font color="#FFFFFF">admin</font>
                <b class="caret"></b><!--下拉图标 -->
                <ul class="dropdown-menu">
                    <li><a href="http://www.ncjiuxing.com/">首页</a></li>
                    <li><a href="#">个人</a></li>
                    <li><a href="#">办公</a></li>
                    <li><a href="login.html">退出</a></li>
                </ul>
        </div>
    </div>
    <div id="lefts">
        <div id="shu">
            <div id="boder"><p>
                <h4><img src="oa/photo/inbox.png">&nbsp;&nbsp;<a href="javascript:show(1)" style=" text-decoration:none"
                                                              id="ss">系统管理</a><b class="caret" style="color:#FFF"
                                                                                 id="cr"></b></h4>
                <ul id="1" style="display:none">
                    <li><a href="#" target="left">部门管理</a></li>
                    <li><a href="#" target="left">人员管理</a></li>
                    <li><a href="oa/houtai/duty.html" target="left">职务管理</a></li>
                </ul>
            </div>
            </p>
            <p>
            <div id="boder">
                <h4><img src="oa/photo/page.png" style="width:20px">&nbsp;&nbsp;<a href="javascript:show(2)"
                                                                                style=" text-decoration:none" id="ss">我的工作</a><b
                        class="caret" style="color:#FFF" id="cr"></b></h4>
                <ul id="2" style="display:none">
                    <li><a href="oa/houtai/Todo.html" target="left">待办事项</a></li>
                    <li><a href="oa/houtai/time.html" target="left">我的考勤</a></li>
                    <li><a href="oa/houtai/Nissin.html" target="left">我的日清</a></li>
                </ul>
            </div>
            <p>
            <div id="boder">
                <h4><img src="oa/photo/tv-on.png" style="width:20px">&nbsp;&nbsp;<a href="javascript:show(3)"
                                                                                 style=" text-decoration:none" id="ss">个人办公</a><b
                        class="caret" style="color:#FFF" id="cr"></b></h4>
                <ul id="3" style="display:none">
                    <
                    <li><a href="oa/houtai/borrow.html" target="left">借款</a></li>
                    <li><a href="oa/houtai/cachet.html" target="left">申请公章</a></li>
                    <li><a href="oa/houtai/evection.html" target="left">出差申请</a></li>
                    <li><a href="oa/houtai/reimbursement.html" target="left">报销申请</a></li>
                    <li><a href="oa/houtai/car.html" target="left">车位申请</a></li>
                    <li><a href="oa/houtai/Book.html" target="left">书籍管理</a></li>
                    <li><a href="oa/houtai/ApplicationForEmployeeTurnover.html" target="left">申请离职</a></li>
                </ul>
            </div>
            </p>
            <p>
            <div id="boder">
                <h4><img src="oa/photo/page.png" style="width:20px">&nbsp;&nbsp;<a href="javascript:show(4)"
                                                                                style=" text-decoration:none" id="ss">会议管理</a><b
                        class="caret" style="color:#FFF" id="cr"></b></h4>
                <ul id="4" style="display:none">
                    <li><a href="oa/houtai/guanlihuiyi.html" target="left">管理会议</a></li>
                    <li><a href="oa/houtai/huiyishi.html" target="left">会议室管理</a></li>
                </ul>
            </div>
            </p>
            <p>
            <div id="boder">
                <h4><img src="oa/photo/page.png" style="width:20px">&nbsp;&nbsp;<a href="javascript:show(5)"
                                                                                style=" text-decoration:none" id="ss">信息交流</a><b
                        class="caret" style="color:#FFF" id="cr"></b></h4>
                <ul id="5" style="display:none">
                    <li><a href="#" target="left">发送邮件</a></li>
                    <li><a href="#" target="left">收件箱</a></li>
                    <li><a href="#" target="left">已发送</a></li>
                    <li><a href="#" target="left">垃圾箱</a></li>
                </ul>
            </div>
            </p>
            <p>
            <div id="boder">
                <h4><img src="oa/photo/page.png" style="width:20px">&nbsp;&nbsp;<a href="javascript:show(6)"
                                                                                style=" text-decoration:none" id="ss">个人设置</a><b
                        class="caret" style="color:#FFF" id="cr"></b></h4>
                <ul id="6" style="display:none">
                    <li><a href="oa/houtai/updatePwd.html" target="left">修改密码</a></li>
                    <li><a href="#" target="left">登录日志</a></li>
                </ul>
            </div>
            </p>
        </div>
    </div>
    <!--下&#45;&#45;&#45;&#45;右-->
    <div id="rights">
        <iframe src="oa/houtai/welcome.html" frameborder="0" height="100%" width="100%" name="left"></iframe>
    </div>
</div>
<script src="oa/js/shuxing.js"></script>

</body>
</html>
