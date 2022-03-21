<%@page import="entity.Goods"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*,java.util.*"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0"/>
    <meta name="description" content="Beauty专业的美妆网上购物商城，为您提供正品低价的购物选择、优质便捷的服务体验满足美妆购物需求。">
    <meta name="Keywords" content="网上购物,网上美妆"><meta name="robots" content="all,follow">
    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css">
    <link rel="shortcut icon" href="../favicon.ico">
    <script src="lib/jquery/jquery.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="lib/html5shiv/html5shiv.min.js"></script>
    <script src="lib/respond/respond.min.js"></script>
	<title>Beauty商品数据的修改</title>

  </head>
  
  <body>
  <div class="container">
	  <form  id="form1" name="form1" method="post" action="GoodServlet?type=edit">
		  <table class="table table-bordered">
		  		<tr class="danger">
		  			<th>商品路径</th>
		  			<th>商品内容</th>
		  			<th>商品价钱</th>
		  			<th>商品提交</th>
		  		</tr>
		  		<tr>
		  			<td>
		  				<input type="text"  name="goods_src" id="goods_src"  value = <%=((Goods)request.getAttribute("goods")).getGoods_src()  %>  class="form-control"  placeholder="商品路径"/>
		  			</td>
		  			<td>
		  				<input type="text"  name="goods_name" id="goods_name"  value = <%=((Goods)request.getAttribute("goods")).getGoods_name()  %> class="form-control"  placeholder="商品内容"/>
		  			</td>
		  			<td>
		  				<input type="text"  name="goods_price" id="goods_price"  value = <%=((Goods)request.getAttribute("goods")).getGoods_price()  %> class="form-control"  placeholder="商品价钱"/>
		  			</td>
		  			<td><input type="submit" name="sub" id="sub"  class="form-control  btn btn-default"  value="提交修改内容"/></td>
		  		</tr>
		  </table>
	  </form>
  </div>
  </body>
</html>
