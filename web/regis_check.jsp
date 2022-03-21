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
    <title>注册检查页面</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	response.setCharacterEncoding ("UTF-8");
	String url = "jdbc:mysql://localhost:3306/users";
	String username = "root";
	String password = "1314520";
	String name = request.getParameter("name");
	name = new String(name.getBytes("ISO-8859-1"),"UTF-8");
	String passport1 = request.getParameter("passport1");
	String passport2 = request.getParameter("passport2");
	System.out.print(name);
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, username, password);
	Statement st = conn.createStatement();
	String sql = "insert into dbuser(userName,userPasswd) values('"+name+"','"+passport1+"')";
	st.execute(sql);
	request.getSession().setAttribute("num",name);
	if(passport1.equals(passport2)){
		response.sendRedirect("copy.jsp");//重定向到登陆页面
	}else{
		response.sendRedirect("regis.jsp");
	}
%>
</body>
</html>