<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">LEEJIWON</a>
    </div>
    <ul class="nav navbar-nav">
      <li id="go_main"><a><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>
      <li class="dropdown">
      	 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> 
      	 <span class="center">회원관리</span></a>
      	 <ul id="nab_ul_stu">
      	 	<li><a>학생 추가</a></li>
      	 	<li><a>학생 목록</a></li>
      	 	<li><a>학생 조회</a></li>
      	 	<li><a></a></li>
      	 	<li><a>학생 삭제</a></li>
      	 </ul>	
      </li>
      <li class="dropdown">
      	 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> 
      	 <span class="center">성적관리</span></a>
      	 <ul id="nab_ul_grade">
      	 	<li><a>성적 추가</a></li>
      	 	<li><a>성적 목록</a></li>
      	 	<li><a>성적 조회</a></li>
      	 	<li></li>
      	 	<li><a>성적 삭제</a></li>
      	 </ul>	
      </li>
      <li class="dropdown">
      	 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> 
      	 <span class="center">게시판관리</span></a>
      	 <ul id="nab_ul_board">
      	 	<li><a>게시판 추가</a></li>
      	 	<li><a>게시판 목록</a></li>
      	 	<li><a>게시판 조회</a></li>
      	 	<li></li>
      	 	<li><a>게시판 삭제</a></li>
      	 </ul>	
      </li>
    </ul>
    <span id="com_head">${sessionScope.user.name}&nbsp;<a id="logout">로그아웃</a></span>
  </div>
</nav>
<script>
	/* 
	function navbarLoad(){
		var nvb1 = document.getElementById("nab_ul_stu");
		var nvb2 = document.getElementById("nab_ul_grade");
		var nvb3 = document.getElementById("nab_ul_board");

		nvb1.setAttribute("class", "dropdown-menu");
		nvb2.setAttribute("class", "dropdown-menu");
		nvb3.setAttribute("class", "dropdown-menu");
		
		var ul_stu = nvb1.children;
		var ul_grade = nvb2.children;
		var ul_board = nvb3.children;
		
		ul_stu[0].setAttribute("onclick", "moveTo('member', 'move', 'member_add')");
		ul_stu[1].setAttribute("onclick", "list('member', 'member_list', '1')");
		ul_stu[2].setAttribute("onclick", "moveTo('member', 'move', 'member_search')");
		ul_stu[3].setAttribute("role", "separator");
		ul_stu[3].setAttribute("class", "divider");
		ul_stu[4].setAttribute("onclick", "deleteTarget('member')");

		ul_grade[0].setAttribute("onclick", "moveTo('grade', 'move', 'grade_add')");
		ul_grade[1].setAttribute("onclick", "list('grade', 'grade_list', '1')");
		ul_grade[2].setAttribute("onclick", "moveTo('grade', 'move', 'grade_detail')");
		ul_grade[3].setAttribute("role", "separator");
		ul_grade[3].setAttribute("class", "divider");
		ul_grade[4].setAttribute("onclick", "deleteTarget('grade')");

		ul_board[0].setAttribute("onclick", "moveTo('board', 'move', 'board_write')");
		ul_board[1].setAttribute("onclick", "list('board', 'board_list', '1')");
		ul_board[2].setAttribute("onclick", "moveTo('board', 'move', 'board_detail')");
		ul_board[3].setAttribute("role", "separator");
		ul_board[3].setAttribute("class", "divider");
		ul_board[4].setAttribute("onclick", "deleteTarget('board')");	
	}  */
	
	//main.jsp 
	/* function mainLoad(){ 
		var u1 = document.getElementById("main_ul_stu");
		var u2 = document.getElementById("main_ul_grade");
		var u3 = document.getElementById("main_ul_board");

		u1.setAttribute("class", "list-group");
		u2.setAttribute("class", "list-group");
		u3.setAttribute("class", "list-group");
		
		var ul_stu = u1.children;
		var ul_grade = u2.children;
		var ul_board = u3.children;
		var i;
		
		for(i=0; i<ul_stu.length; i++){
			ul_stu[i].setAttribute("class","list-group-item");
		}
		for(i=0; i<ul_grade.length; i++){
			ul_grade[i].setAttribute("class","list-group-item");
		}
		for(i=0; i<ul_board.length; i++){
			ul_board[i].setAttribute("class","list-group-item");
		}	
		
		ul_stu[0].setAttribute("onclick", "moveTo('member', 'move', 'member_add')");
		ul_stu[1].setAttribute("onclick", "list('member', 'member_list', '1')");
		ul_stu[2].setAttribute("onclick", "moveTo('member', 'move', 'member_search')");
		ul_stu[3].setAttribute("onclick", "moveTo('member', 'move', 'member_update')");
		ul_stu[4].setAttribute("onclick", "deleteTarget('member')");
		
		ul_grade[0].setAttribute("onclick", "moveTo('grade', 'move', 'grade_add')");
		ul_grade[1].setAttribute("onclick", "list('grade', 'grade_list', '1')");
		ul_grade[2].setAttribute("onclick", "moveTo('grade', 'move', 'grade_detail')");
		ul_grade[3].setAttribute("onclick", "moveTo('grade', 'move', 'grade_update')");
		ul_grade[4].setAttribute("onclick", "deleteTarget('grade')");
		
		ul_board[0].setAttribute("onclick", "moveTo('board', 'move', 'board_write')");
		ul_board[1].setAttribute("onclick", "list('board', 'board_list', '1')");
		ul_board[2].setAttribute("onclick", "moveTo('board', 'move', 'board_detail')");
		ul_board[3].setAttribute("onclick", "moveTo('board', 'move', 'board_update')");
		ul_board[4].setAttribute("onclick", "deleteTarget('board')");
	} */

	navbar.init(); 
</script>