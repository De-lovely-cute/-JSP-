<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8”>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0"/>
	<meta name="description" content="Beauty专业的美妆网上购物商城，为您提供正品低价的购物选择、优质便捷的服务体验满足美妆购物需求。">
	<meta name="Keywords" content="网上购物,网上美妆">
    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/index.css"/>
	<link rel="shortcut icon" href="favicon.ico"/>
	<link rel="stylesheet" href="fonts/font/demo.css">
	<link rel="stylesheet" href="fonts/font/iconfont.css">
	<link rel="stylesheet" href="css/index.css">
    <script src="lib/html5shiv/html5shiv.min.js"></script>
    <script src="lib/respond/respond.min.js"></script>
	<script src="lib/jquery/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
	<script src="lib/iscroll/iscroll.js"></script>
    <title>Beauty正品低价、品质保障、配送及时、轻松购物！</title>
</head>
<body>
<!--顶部通栏-->
<header class="by_topBar hidden-xs hidden-sm">
    <div class="container">
        <div class="col-md-2">
            <a href="#" class="by_app">
                <span class="by_icon by_icon_phone"></span>
                <span>手机Beauty版</span>
                <span class="glyphicon glyphicon-menu-down"></span>
                <img src="img/code.png" alt=""/>
            </a>
        </div>
		<div class="col-md-8">
			<form action="" class="form-inline" name="form" id="form">
				<input type="text" class="tx1 form-control"  placeholder="搜索商品  分类  功效"/>
				<input type="submit" class="sub form-control btn-danger" value="搜索"/>
			</form>
		</div>
        <div class="col-md-2">
        	欢迎&emsp;
        	<span style="color:red;font-size:14px;">
        		<%
        			out.print((String)request.getSession().getAttribute("num"));
        		%>
        	</span>
        	&emsp;用户
        </div>
    </div>
</header>
<!--导航栏-->
<nav class="by_nav navbar navbar-default" data-spy="affix" data-offset-top="60" data-offset-bottom="200">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">
                <img src="img/logo.png" alt="logo"/>
            </a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.jsp">首页<span class="sr-only">(current)</span></a></li>
				<li><a href="topspeed.jsp">极速免税店</a></li>
                <li><a href="cosmetics.jsp">香水彩妆</a></li>
                <li><a href="face.jsp">面部护肤</a></li>
				<li>
					<div class="cart">
					    <i></i>
					    <a href="#">我的购物车</a>
					    <s>0</s>
					</div>
				</li>
            </ul>
            <ul class="nav navbar-nav navbar-right hidden-sm">
                <li><a href="GoodServlet">管理中心</a></li>
            </ul>
        </div>
    </div>
</nav>
<!--轮播图-->
<div id="carousel-example-generic" class="carousel slide by_banner" data-ride="carousel">
    <ol class="carousel-indicators"></ol>
    <div class="carousel-inner" role="listbox"></div>
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!--信息和商品-->
<div class="by_info hidden-xs">
    <div class="container">
        <div id="plist">
            <ul class="clearfix">
            <%
            	request.setCharacterEncoding("utf-8");//设置编码方式，防止中文乱码
				String sql = "select * from goods";	
				String url = "jdbc:mysql://localhost:3306/users";
				String username = "root";
				String password = "1314520";
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection(url, username, password);
				Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery(sql);
				while(rs.next()){%>
				<li>
                    <div class="lh_wrap">
                        <div class="p-img">
                            <a href="#">
                            <img src="img/speed/<%=rs.getString(1) %>"/>
                            </a>
                        </div>
                        <div class="p-name">
                            <a href="#"><%=rs.getString(2) %></a>
                        </div>
                        <div class="btns">
							<span>￥<%=rs.getString(3) %></span>
                            <input type="button" class="add_cart_large btnCart" value="加入购物车">
                        </div>
                    </div>
                </li>
				<%}%>
            </ul>
        </div>
	</div>
</div>
<!-- 承諾 -->
<div id="cti hidden-xs hidden-sm hidden-md">
    <div class="wrapper container">
        <div class="col-lg-3 col-md-3 col-sm-4">
			<div>
				<img style="width: 60px;" src="img/b_1.gif">
				<span class="name"> 7天退货 </span> 
			</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-4">
			<div>
				<img style="width: 60px;" src="img/b_2.gif">
				<span> 品质承诺 </span>
			</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-4">
			<div>
				<img style="width: 60px;" src="img/b_3.gif">
				<span> 破损补寄 </span> 
			</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-4">
			<div>
				<img style="width: 60px;" src="img/b_4.gif">
				<span> 急速物流 </span> 
			</div>
		</div>
    </div>
</div>
<!--合作伙伴-->
<footer class="by_partner">
    <div class="container">
        <h3 class="text-center">合作伙伴</h3>
        <ul>
            <li><a href="#"><span class="by_icon by_icon_partner01"></span></a></li>
            <li><a href="#"><span class="by_icon by_icon_partner07"></span></a></li>
			<li><a href="#"><span class="iconfont icon-aiqiyi"></span></a></li>
			<li><a href="#"><span class="iconfont icon-weipinhui"></span></a></li>
			<li><a href="#"><span class="iconfont icon-dangdangwang"></span></a></li>
			<li><a href="#"><span class="iconfont icon-jingdong"></span></a></li>
			<li><a href="#"><span class="iconfont icon-icon2"></span></a></li>
        </ul>
    </div>
</footer>
</body>
<script src="js/index.js"></script>
</html>