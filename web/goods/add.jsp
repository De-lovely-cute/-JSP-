<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0"/>
    <meta name="description" content="Beauty专业的美妆网上购物商城，为您提供正品低价的购物选择、优质便捷的服务体验满足美妆购物需求。">
    <meta name="Keywords" content="网上购物,网上美妆"><meta name="robots" content="all,follow">
    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="font/fonts/iconfont.css">
	<link rel="stylesheet" href="font/fonts/demo.css">
    <link rel="stylesheet" href="css/style.css" id="theme-stylesheet">
    <link rel="shortcut icon" href="../favicon.ico">
	<script src="font/fonts/iconfont.js"></script>
    <script src="lib/jquery/jquery.min.js"></script>
    <script src="lib/popper.js/popper.min.js"> </script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="lib/jquery.cookie/jquery.cookie.js"> </script>
    <script src="lib/jquery-validation/jquery.validate.min.js"></script>
    <script src="lib/html5shiv/html5shiv.min.js"></script>
    <script src="lib/respond/respond.min.js"></script>
	<title>Beauty商品数据的增加</title>
  </head>
  <body>
    <div class="page">
      <header class="header">
        <nav class="navbar">
          <div class="search-box">
            <button class="dismiss"><i class="iconfont icon-iconfontclose"></i></button>
            <form id="searchForm" action="#" role="search">
              <input type="search" placeholder="请搜索商品" class="form-control">
            </form>
          </div>
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
			<div class="navbar-header">
				<a href="../copy.jsp" class="navbar-brand d-none d-sm-inline-block">
					<div class="brand-text d-none d-lg-inline-block"><strong>Beauty</strong></div>
				</a>
					<a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
              </div>
              <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="iconfont icon-icon-test"></i></a></li>
                <li class="nav-item dropdown"> 
				<a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link">
					<i>
						<svg class="icon" aria-hidden="true">
							<use xlink:href="#icon-lingdang"></use>
						</svg>
					</i>
					<span class="badge bg-red badge-corner">4</span>
				</a>
                  <ul aria-labelledby="notif time_beautyications" class="dropdown-menu">
                    <li><a rel="nofollow" href="#" class="dropdown-item"> 
                        <div class="notification">
                          <div class="notification-content noti_beauty">更新Beauty网站</div>
                          <div class="notification-time time_beauty"><small>4分钟前</small></div>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item"> 
                        <div class="notification">
                          <div class="notification-content noti_beauty">Tom注册Beauty网站</div>
                          <div class="notification-time time_beauty"><small>6分钟前</small></div>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item"> 
                        <div class="notification">
                          <div class="notification-content noti_beauty">admin登录Beauty网站</div>
                          <div class="notification-time time_beauty"><small>8分钟前</small></div>
                        </div></a></li>
                    <li><a rel="nofollow" href="#" class="dropdown-item"> 
                        <div class="notification">
                          <div class="notification-content noti_beauty">欢迎登录Beauty管理</div>
                          <div class="notification-time time_beauty"><small>10分钟前</small></div>
                        </div></a></li>
                  </ul>
                </li>
                </ul>
            </div>
          </div>
        </nav>
      </header>
      <div class="page-content d-flex align-items-stretch"> 
        <nav class="side-navbar">
          <div class="sidebar-header d-flex align-items-center">
            <div class="avatar"><img src="img/avatar.jpg" alt="..." class="img-fluid rounded-circle"></div>
            <div class="title">
              <h1 class="h4">管理者</h1>
              <p>华思女士</p>
            </div>
          </div>
          <ul class="list-unstyled">
                <li><a href="../GoodServlet"> <i class="iconfont icon-chaxunyewu"></i>商品数据的查询</a></li>
                <li class="active"><a href="goods/add.jsp"> <i class="iconfont icon-add"></i>商品数据的增加</a></li>
          </ul>
        </nav>
        <div class="content-inner">
          <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">商品查询</h2>
            </div>
          </header>
          <section class="feeds no-padding-top">
            <div class="container-fluid">
              <div class="row">
                <div class="col-lg-12">
                  <div class="articles card">
                    <div class="card-close">
                      <div class="dropdown">
                        <button type="button" id="closeCard4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                        <div aria-labelledby="closeCard4" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                      </div>
                    </div>
                    <div class="card-body no-padding">
                      <div class="item d-flex align-items-center">
                      <form action="add_check.jsp" method="post">
                      <table class="table table-bordered">
                      	<tr>
                      		<th><h2>商品路径</h2></th>
                      		<th><h2>商品介绍</h2></th>
                      		<th><h2>商品价格</h2></th>
                      		<th><h2>增加商品</h2></th>
                      	</tr>
							<tr>
								<td><input type="text" name="src" id="src" class="form-control" placeholder="商品路径"></td>
								<td><input type="text" name="name" id="name" class="form-control" placeholder="商品介绍"></td>
								<td><input type="text" name="price" id="price" class="form-control" placeholder="商品价格"></td>
								<td><input type="submit" class="form-control btn btn-default" value="增加"></td>
							</tr>
						</table>
						</form>
					  </div>
                    </div>
                  </div>
                </div>
			  </div>
            </div>
          </section>
          <footer class="main-footer">
            <div class="container-fluid">
              <div class="row">
                <div class="col-sm-6">
                  <p>欢迎访问&emsp;<a target="_blank" href="#">&emsp;Beauty管理</a></p>
                </div>
                <div class="col-sm-6 text-right">
                  <p></p>
                </div>
              </div>
            </div>
          </footer>
        </div>
      </div>
    </div>
    <script src="js/front.js"></script>
  </body>
</html>