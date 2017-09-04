/** Member javaScript **/

/*******************************
 * app
 * application :logout 후 필요한 정보 담음
 * session.init 과 같이 다른 곳에 인식하여 사용할 수 없기에 app에 선언되어야 한다.
 * 프록시 패턴
 *******************************/
var app=(function(){
	var init = function(ctx){
		session.init(ctx);	//내부에서 호출하면 함수처럼 사용
		member.init();
		onCreate();
	};
	var onCreate=function(){
		setContentView();
		location.href=ctx()+"/home.do";
	};
	var setContentView=function(){
	};
	
	var ctx=function(){
		return session.getPath('ctx');
	};
	var js=function(){
		return session.getPath('js');
	};
	var img=function(){
		return session.getPath('img');
	};
	var css=function(){
		return session.getPath('css');
	};
	
	return {
		init : init,
		ctx : ctx,
		js : js,
		img : img,
		css : css,
		onCreate : onCreate
	}
})();

/*******************************
 * session
 * session :login 후 필요한 정보 담음
 *******************************/
var session=(function(){
	//set
	var init = function(ctx){
		sessionStorage.setItem('ctx', ctx);	//접근경로를 로그인 할때만 준다(보안)
		sessionStorage.setItem('js', ctx+'/resources/js');
		sessionStorage.setItem('img', ctx+'/resources/img');
		sessionStorage.setItem('css', ctx+'/resources/css');
	};
	
	//get
	var getPath = function(x){
		return sessionStorage.getItem(x);
	}
	
	//클로저 : 객체를 return 
	return {
		init : init,
		getPath : getPath
	}; //객체(JSON : map구조) return -> 외부에서 호출 될 것만 return
	
})();

/*******************************
 * member
 *******************************/
var member = (function(){
	var init=function(){
		$('#loginBtn').on('click',function(){
			alert('login fx 실행');

			if($('#login_id').val() === ""){
				alert('ID를 입력해 주세요');
				return false;
			}
			if($('#login_pass').val() === ""){
				alert('PASS를 입력해 주세요');
				return false;
			}
			$('#login').attr('action', app.ctx()+"/common.do")
			$('#login').attr('method', 'post');
			return true;
		});
	};
	
	var mainLoad=function(){
		
	};
	
	return {
		init : init,
	};
})();

/*******************************
 * main
 *******************************/
var main = (function(){
	var init=function(){
		onCreate();
	};
	
	var onCreate=function(){
		setContentView();
		
		$('.list-group-item a').eq(0).on('click', function(){
			controller.moveTo('member', 'move', 'member_add');
		});
		
		$('.list-group-item a').eq(1).on('click', function(){
			controller.list('member', 'member_list', '1');
		});
		
		$('.list-group-item a').eq(2).on('click', function(){
			controller.detailStud(prompt('조회할 ID'));
		});
		
		$('.list-group-item a').eq(3).on('click', function(){
			controller.moveTo('member', 'move', 'member_update');
		});
		
		$('.list-group-item a').eq(4).on('click', function(){
			controller.deleteTarget('member');
		});
	};
	
	var setContentView=function(){
		//var $변수: 컴포넌트 객체(dom객체) |  var 변수: 임시객체(일반 연산)
		var $u1 = $("#main_ul_stu");
		var $u2 = $("#main_ul_grade");
		var $u3 = $("#main_ul_board");
		$u1.addClass("list-group");
		$u2.addClass("list-group");
		$u3.addClass("list-group");
		$('.list-group').children().addClass("list-group-item");
	};
	
	return{
		init : init
	};
})();

/*******************************
 * home
 *******************************/
var home = (function(){
	var init=function(){
		onCreate();
	};
	
	var onCreate=function(){
		setContentView();
	};
	
	var setContentView=function(){
		
	};
	
	return{
		init : init
	};
})();

/*******************************
 * navbar
 *******************************/
var navbar = (function(){
	var init=function(){
		onCreate();
	};
	
	var onCreate=function(){
		setContentView();
		
		$('.dropdown-menu a').eq(0).on('click', function(){
			controller.moveTo('member', 'move', 'member_add');
		});
		
		$('.dropdown-menu a').eq(1).on('click', function(){
			controller.list('member', 'member_list', '1');
		});
		
		$('.dropdown-menu a').eq(2).on('click', function(){
			controller.moveTo('member', 'move', 'member_search');
		});
		
		$('.dropdown-menu a').eq(4).on('click', function(){
			controller.deleteTarget('member');
		});
		
		$('.active a').on('click', function(){
			controller.goMain('common','main');
		});
		
		$logout.on('click', function(){
			controller.logoutAction();
		});
	};
	
	var setContentView=function(){
		var $nvb1 = $("#nab_ul_stu");
		var $nvb2 = $("#nab_ul_grade");
		var $nvb3 = $("#nab_ul_board");
		var $home = $("#go_main");
		var $logout = $("#logout");
		$nvb1.addClass("dropdown-menu");
		$nvb2.addClass("dropdown-menu");
		$nvb3.addClass("dropdown-menu");
		$home.addClass("active");
	};
	
	return{
		init : init
	};
})();

/*******************************
 * memDetail
 *******************************/
var memDetail=(function(){
	var init=function(){
		onCreate();
	};
	
	var onCreate=function(){
		$("#updateBtn").on('click', function(){
			sessionStorage.setItem('id', $("#detailId").val());
			sessionStorage.setItem('phone', $("#detailPhone").text());
			sessionStorage.setItem('email', $("#detailEmail").text());
			sessionStorage.setItem('title', $("#detailTitle").text());
			controller.moveTo('member', 'move', 'member_update');
		});
		
		setContentView();
	};
	
	var setContentView =function(){
		
	};
	
	return {
		init : init
	};
})();

/*******************************
 * memUpdate
 *******************************/
var memUpdate = (function(){
	var init=function(){
		onCreate();
	};
	
	var onCreate=function(){
		setContentView();
	};
	
	var setContentView=function(){
		var id = sessionStorage.getItem('id');
		$('#updateId').text(id);
		$('#email').attr('placeholder', sessionStorage.getItem('email'));
		$('#phone').attr('placeholder', sessionStorage.getItem('phone'));
		var password=$('#confirm').val();
		
		$('#confirmBtn').on('click', function(){
			alert('수정할 ID: '+id);
			controller.updateStud(id, $('#email').val())
		});
	};
	
	return {
		init : init
	};
})();


/*******************************
 * controller
 *******************************/
var controller = (function(){
	var init=function(){

	};
	
	var moveTo=function(dir, action, page){
		location.href = app.ctx()+'/'+dir+'.do?action='+action+'&page='+page;
	};
	
	var list=function(dir, page, pageNum){
		location.href = app.ctx()+'/'+dir+'.do?action=list&page='+page+'&pageNumber='+pageNum;	
	};
	
	var deleteTarget=function(target){
		var person = prompt(target+'의 ID?');
	};
	
	var logoutAction=function(){
		location.href = app.ctx()+"/common.do?action=logout&page=home";
	};

	var goMain=function(dir, page){
		location.href = app.ctx()+'/'+dir+'.do?action=move&page='+page;
	};
	
	var searchName=function(){
		var $search = $("#search");
		if($search === ""){
			alert("검색할 이름을 입력하세요");
			return false;
		}
		location.href = app.ctx()+"/member.do?action=search&page=member_list&search="+search;
	};
	
	var detailStud=function(id){
		location.href = app.ctx()+"/member.do?action=detail&page=member_detail&id="+id;
	};

	var updateStud=function(id, email){
		alert("수정할 ID: "+id);
		location.href= app.ctx()+"/member.do?action=update&page=member_update&id="+id+"&email="+email;
	};
	
	var deleteStud=function(id){
		alert("삭제할 ID: "+id);
		location.href = app.ctx()+"/member.do?action=delete&page=member_list&id="+id;
	};
	
	var memberAdd=function(){
		var $mem_id = $("#id");
		var $mem_pw = $("#pw");
		var $mem_name = $("#name");
		var $mem_birth = $("#birth");
		
		if($mem_id === ""){
			alert('ID를 입력해 주세요');
			return false;
		}
		if($mem_pw === ""){
			alert('PASSWORD를 입력해 주세요');
			return false;
		}
		if($mem_name === ""){
			alert('NAME를 입력해 주세요');
			return false;
		}
		if($mem_birth === ""){
			alert('BIRTH를 입력해 주세요');
			return false;
		}
		
		var $form = $("#join_form");
		
		$('#login').attr('action', app.ctx()+"/member.do");
		$('#login').attr('method', 'post');
	
		// $form.submit();
	};
	
	return{
		init : init,
		moveTo : moveTo,
		list : list,
		deleteTarget : deleteTarget,
		logoutAction: logoutAction,
		goMain : goMain,
		searchName : searchName,
		detailStud : detailStud,
		updateStud : updateStud,
		deleteStud : deleteStud,
		memberAdd : memberAdd
	};
})();
