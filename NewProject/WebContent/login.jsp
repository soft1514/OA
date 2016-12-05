<%--
  Created by IntelliJ IDEA.
  User: Huangjx
  Date: 2016/12/5
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <li></li>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="oa/js/jquery-3.1.1.min.js"></script>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>oa登录</title>

    <!-- Bootstrap -->
    <link href="oa/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="oa/css/computer.css" rel="stylesheet"/>

    <!-- 屏幕宽度大于或者等于400px引用这个css文件 -->
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
        $(document).ready(function(){
            var randomphoto=Math.floor(Math.random()*6+1);
            var bg='url(oa/photo/bg'+randomphoto+'.jpg)';
            $("body").css("background-image",bg);

        });
    </script>
</head>
<body>
<!-- <audio autoplay loop><source src="http://up.mcyt.net/md5/53/NjM2Nzk0OA_Qq4329912.mp3"></audio> 东京热 -->
<!--http://up.mcyt.net/md5/53/NjgzMjc3OQ_Qq4329912.mp3 无敌-->
<div id="center">
    <div id="header">
        <h2><img  src="oa/photo/logo.png">九星科技煤校oa登录系统</h2>
    </div>
    <div id="main">
        <div id="top">
            <img   src="oa/photo/tu.png"/>
            <img  src="oa/photo/font2.png">

        </div>
        <div id="login">
            <h2>用户登陆</h2>

            <div id="form">
                <select class="form-group">
                    <option>员工</option>
                    <option>管理员</option>
                </select>
            </div>
            <form action="Login.action" METHOD="POST">
                <ul>
                    <li class="list-unstyled"><input id="user" class="text" type="text"placeholder="用户名" name="username"></li>
                    <br/>
                    <li class="list-unstyled"><input id="password" class="text" type="password"placeholder="密码" name="pwd"></li>
                    <br/>
                    <li  class="list-unstyled"><input  class="code" name="code" value="" maxlength="4" placeholder="验证码" type="text">
                        <img src="http://login.21cp.com/User/LoginVerificationCode?t=636150121492743662" alt="验证码" onClick="checkcode()"  id="code2">
                    </li>
                    <br/>
                    <li class="list-unstyled" id="button"><button type="submit" class="btn btn-danger btn-lg btn-block">Login</button></li>
                </ul>
            </form>
        </div>
    </div>

</div>


<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="oa/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $("body").show(5000);
    var url="http://login.21cp.com/User/LoginVerificationCode?t=636150121492743665"
    function checkcode(){
        var i=  $("#code2").attr("src")
        alert(i)
    }
</script>

</body>
</html>