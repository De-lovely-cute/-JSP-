<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8”>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0"/>
    <meta name="description" content="Beauty专业的美妆网上购物商城，为您提供正品低价的购物选择、优质便捷的服务体验满足美妆购物需求。">
    <meta name="Keywords" content="网上购物,网上美妆">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/iconfont.css">
    <link rel="stylesheet" href="css/reg.css">
    <link rel="shortcut icon" href="favicon.ico"/>
    <title>Beauty注册页面</title>
</head>
<body>
    <div id="ajax-hook"></div>
<form action="regis_check.jsp" method="get">
    <div class="wrap">
        <div class="wpn">
            <div class="form-data form_regis pos">
                    <p class="p-input pos">
                    	<input type="text" id="name" name="name" placeholder="手机号/用户名/UID/邮箱">
                    </p>
                    <p class="p-input pos" id="sendcode">
                        <input type="password" placeholder="输入密码" id="passport1" name="passport1">
                    </p>
                    <p class="p-input pos" id="confirmpwd">
                        <input type="password" placeholder="确认密码" id="passport2" name="passport2">
                    </p>
                <div class="reg_checkboxline pos">
                    <span class="z"><i class="icon-ok-sign boxcol" nullmsg="请同意!"></i></span>
                    <input type="hidden" name="agree" value="1">
                    <div class="Validform_checktip"></div>
                    <p>我已阅读并接受 <a href="#" target="_brack">《Beauty协议说明》</a></p>
                </div>
                <input type="submit" class="lang-btn lang_regis" value="注册">
                <div class="bottom-info info_regis">已有账号，<a href="login.jsp">马上登录</a></div>
                <div class="third-party party_regis">
                    <a href="#" class="log-qq icon-qq-round"></a>
                    <a href="#" class="log-qq icon-weixin"></a>
                    <a href="#" class="log-qq icon-sina1"></a>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>