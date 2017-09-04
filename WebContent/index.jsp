<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script src="${js}/member.js"></script>
<img src="${img}/loader.gif" alt="" />

<script>
	//$(document).ready(function(){ //위에 소스를 읽고 실행 (생략하고 싶으면 맨 밑에 위치하면 됨)
		app.init('${ctx}');	
	//});
	//location.href='${ctx}/home.do';
</script>