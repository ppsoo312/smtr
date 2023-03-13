
$(document).ready(function(){
	alert("Aa");
	/** 카카오, 홈페이지, 네이버 회원가입 로그인 관련 버튼 클릭 시 **/
	$(document).on("click", "button[name=loginSelect]", function(){
		alert("Aa");
		
		let loginForm = $(".loginForm");
		// 카카오 로그인 클릭
		if($(this).text() == "kakao_Login"){
			
			loginForm.kendoDialog({
				width: "550px",
				height: "50%",
				title: "KAKAO LOGIN",
				closable: true,
				modal: true,
				content: "aa",
			}).data("kendoDialog").open();
		// 홈페이지 로그인 클릭	
		} else if($(this).text() == "smtr_Login"){
			
			let dataForm = "<section class='section-sm'><div class='container'><div class='row'>" +
					"<div class='col-lg-8 mx-auto'><div class='content mb-5'>" +
					"<h2 id='we-would-love-to-hear-from-you'>로그인</h2>" +
					"<p>아래에 email과 password를 알맞게 입력해주세요.</p></div>" +
					"<div class='form-group'><label for='name'>이메일 (Required)</label>" +
					"<input type='text' name='email' id='email' class='form-control' placeholder='abc@naver.com' required></div>" +
					"<div class='form-group'><label for='name'>비밀번호 (Required)</label>" +
					"<input type='text' name='password' id='password' class='form-control' placeholder='6자리 이상' required></div>" +
					"<button type='button' id='loginBtn' class='btn btn-primary'>Send Now</button></div></div></div></section>";
			
			loginForm.kendoDialog({
				width: "1000px",
				height: "100%",
				title: "HomePageLogin",
				closable: true,
				modal: true,
				position: { my: "top", at: "top", of: window },
				content: dataForm,
			}).data("kendoDialog").open();
		// 네이버 로그인 클릭	
		} else if($(this).text() == "naver_Login"){
			
			loginForm.kendoDialog({
				width: "550px",
				height: "50%",
				title: "NaverLogin",
				closable: true,
				modal: true,
				content: "aa",
			}).data("kendoDialog").open();
		// 회원가입 클릭	
		} else if($(this).text() == "회원가입"){
			let dataForm = "<section class='section-sm'><div class='container'><div class='row'>" +
			"<div class='col-lg-8 mx-auto'><div class='content mb-5'>" +
			"<h2 id='we-would-love-to-hear-from-you'>회원가입</h2>" +
			"<p>아래에 폼에 알맞게 입력해주세요.</p></div>" +
			"<div class='form-group'><label for='name'>이메일 (Required)</label>" +
			"<input type='text' name='email' id='email' class='form-control' placeholder='abc@naver.com' required></div>" +
			"<div class='form-group'><label for='name'>비밀번호 (Required)</label>" +
			"<input type='text' name='password' id='password' class='form-control' placeholder='6자리 이상' required></div>" +
			"<div class='form-group'><label for='name'>닉네임 (Required)</label>" +
			"<input type='text' name='nickName' id='nickName' class='form-control' placeholder='중복 불가' required></div>" +			
			"<button type='button' id='joinBtn' class='btn btn-primary'>Send Now</button></div></div></div></section>";
			
			loginForm.kendoDialog({
				width: "1000px",
				height: "100%",
				title: "회원가입",
				closable: true,
				modal: true,
				position: { my: "top", at: "top", of: window },
				content: dataForm,
			}).data("kendoDialog").open();
		} 
	});
	/** 로그인 입력 버튼 클릭 **/
	$(document).on("click", "#loginBtn", function(){
		
		let email = $("#email").val();
		let password = $("#password").val();
		let data1 = {"email":email, "password":password};
		$.ajax({
			type:'post',
			url : '/smtr/login/loginCheck',
			data: JSON.stringify(data1),
			contentType : "application/json;charset=UTF-8",
			success : function(result){
				location.href="/smtr"
			},
			error : function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	});
	/** 회원가입 입력 버튼 클릭**/
	$(document).on("click", "#joinBtn", function(){
		
		let email = $("#email").val();
		let password = $("#password").val();
		let nickName = $("#nickName").val();
		let data1 = {"email":email, "password":password, "nickName":nickName, "kind":1};
		$.ajax({
			type:'post',
			url : '/smtr/login/join',
			data: JSON.stringify(data1),
			contentType : "application/json;charset=UTF-8",
			success : function(){
				alert("성공");
				$(".loginForm").data("kendoDialog").close();
				$("#smtr_login").trigger("click");
			},
			error : function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	});
	
	
});

















