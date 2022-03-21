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
    <link rel="shortcut icon" href="favicon.ico"/>
    <title>登录检查页面</title>
</head>
<body>
<%
//设置编码方式，防止中文乱码
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	response.setCharacterEncoding ("UTF-8");
	String sql = "select * from dbuser";	
	String url = "jdbc:mysql://localhost:3306/users";
	String username = "root";
	String password = "1314520";
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, username, password);
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery(sql);
	String uname = null;
	String upsw = null;
	while(rs.next()){
		uname = rs.getString("userName");
		upsw = rs.getString("userPasswd");
	}
	String num = request.getParameter("num");
	//num = new String(num.getBytes("iso8859-1"),"utf-8");
	String pass = request.getParameter("pass");
	request.getSession().setAttribute("num",num);
	if(!(uname.equals(num)) && !(upsw.equals(pass))){
		response.sendRedirect("login.jsp");//重定向到登陆页面
	}else{
		response.sendRedirect("copy.jsp");
	}
%>
</body>
</html>