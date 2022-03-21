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
    <title>登录页面</title>
</head>
<body>
<div id="ajax-hook"></div>
<form action="login_check.jsp" method="get">
	<div class="wrap">
	    <div class="wpn">
	        <div class="form-data form_login pos">
	            <div class="change-login">
	                <p class="account_number on">账号登录</p>
	            </div>
	            <div class="form1">
	                <p class="p-input pos">
	                    <input type="text" placeholder="手机号/用户名/UID/邮箱" id="num" name="num">
	                </p>
	                <p class="p-input pos">
	                    <input type="password" placeholder="请输入密码" id="pass" name="pass" autocomplete="new-password">
	                </p>
	            </div>
	            <input type="submit" class="lang-btn off lang_login log-btn" value="登录">
	            <div class="r-forget cl">
	                <a href="regis.jsp" class="z">账号注册</a>
	                <a href="" class="y">忘记密码</a>
	            </div>
	            <div class="third-party party_login">
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