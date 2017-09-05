<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.gms.web.constant.DB, java.sql.*"%>
<% 	
	//컴파일 없이 실행했기 때문에 처음에 인식을 하지 못함
	Class.forName(DB.MARIADB_DRIVER); 
	//new를 사용하지 않고 동적으로 로딩하면 DriverManager를 사용가능하다.	894p
	Connection conn = DriverManager.getConnection(DB.MARIADB_URL, DB.USERNAME, DB.PASSWORD);
	Statement stmt = conn.createStatement();
	String sql="SELECT * FROM student WHERE id='kang'";
	ResultSet rs = stmt.executeQuery(sql);
	
	String findName="";
	if(rs.next()){
		findName = rs.getString("name");
	}
%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	<h1>Hello <%=findName %></h1>
</body>
</html> 