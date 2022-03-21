<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8”>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0"/>
    <meta name="description" content="Beauty专业的美妆网上购物商城，为您提供正品低价的购物选择、优质便捷的服务体验满足美妆购物需求。">
    <meta name="Keywords" content="网上购物,网上美妆">
    <link rel="shortcut icon" href="favicon.ico"/>
    <title>商品增加检查页面</title>
</head>
<body>
	<%
		try{
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			response.setCharacterEncoding ("UTF-8");
			String url = "jdbc:mysql://localhost:3306/users";
			String username = "root";
			String password = "1314520";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, username, password);
			String sql = "insert into goods values(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			String goods_src = request.getParameter("src");
			String goods_name = request.getParameter("name");
			String goods_price = request.getParameter("price");
			//goods_src = new String(goods_src.getBytes("iso8859-1"),"utf-8");
			//goods_name = new String(goods_name.getBytes("iso8859-1"),"utf-8");
			//goods_price = new String(goods_price.getBytes("iso8859-1"),"utf-8");
			ps.setString(1, goods_src);
			ps.setString(2, goods_name);
			ps.setString(3, goods_price);
			int row = ps.executeUpdate();
			if(row>0){
				response.sendRedirect("../GoodServlet");
			}else{
				response.sendRedirect("add.jsp");
			}
			ps.close();
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
</body>
</html>