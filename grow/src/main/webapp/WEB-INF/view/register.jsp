<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Register</title>

<!-- Custom fonts for this template-->
<link
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://kit.fontawesome.com/db6222330e.js" crossorigin="anonymous"></script>
</head>

<body class="bg-gradient-primary">

	<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
					<div class="col-lg-7">
						<div class="p-5">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">회원가입</h1>
							</div>
								<div class="form-group row">
								<div class="form-group col-sm-8 mb-3">
									<input type="text"
										class="form-control form-control-user text-center rounded-pill border-secondary"
										id="user_code" placeholder="농장코드">
								</div>
									<div class="col-sm-4 mb-3">
										<button id="code_check_btn" class="btn btn-primary form-control form-control-user rounded-pill border-secondary">허용된 코드확인</button>
									</div>
									<div class="col-sm-8 mb-3 mb-sm-0">
										<input type="text"
											class="form-control form-control-user text-center rounded-pill border-secondary"
											id="user_id" placeholder="아이디" >
									</div>
									<div class="col-sm-4">
										<button id="id_check_btn" class="btn btn-primary form-control form-control-user rounded-pill border-secondary">중복확인</button>
									</div>
								</div>
								<div class="form-group">
									<input type="text"
										class="form-control form-control-user text-center rounded-pill border-secondary"
										id="user_name" placeholder="이름">
								</div>
								<div class="form-group">
									<input type="email"
										class="form-control form-control-user text-center rounded-pill border-secondary"
										id="user_email" placeholder="이메일">
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="password"
											class="form-control form-control-user text-center rounded-pill border-secondary"
											id="user_password" placeholder="비밀번호">
									</div>
									<div class="col-sm-6">
										<input type="password"
											class="form-control form-control-user text-center rounded-pill border-secondary"
											id="user_repeat_password" placeholder="비밀번호확인">
									</div>
								</div>
								<div class="form-group">
									<input type="text"
										class="form-control form-control-user text-center rounded-pill border-secondary"
										id="user_phone_number" placeholder="휴대폰">
								</div>
					<div class ="form-group row" style="text-align: center;">
                        <div class="btn-group col-xl-12 col-sm-6 mb-3 mb-sm-0" data-toggle="buttons">
                            <label class="btn active border-secondary" style="color:black; border-radius: 24px;">
                                <input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
                            </label>
                            <label class="btn border-secondary" style="color:black; border-radius: 24px;">
                                <input type="radio" name="userGender" autocomplete="off" value="여자">여자
                            </label>
                            </div>    
                    </div>
                    <div class="form-group row text-center">
                    				<div class="col-sm-3 mb-3 mb-sm-0">
											<span style="color:black; font-weight: bold"> 생년월일 </span>
									</div>
									<div class="col-sm-3 mb-3 mb-sm-0">
										<select id="select_year" class="form-select">
											
										</select><span style="color:black; font-size:17px;">년</span>
									</div>
									<div class="col-sm-3 mb-3 mb-sm-0">
										<select id="select_month" class="form-select">
											
										</select><span style="color:black; font-size:17px;">월</span>
									</div>
									<div class="col-sm-3 mb-3 mb-sm-0">
										<select id="select_day" class="form-select">
											
										</select><span style="color:black; font-size:17px;">일</span>
									</div>
								</div>
								<div class="form-group row text-center">
								<div class="col-sm-10 mb-3">
								<button id="register_btn" class="btn btn-primary btn-user btn-block rounded-pill">회원가입</button>
								</div>
								<div id="refresh_btn" class="col-sm-2 text-center" >
									<i class="fa-solid fa-arrows-rotate" style="font-size : 36px; cursor: pointer;"></i>
								</div>
								</div>
								<hr>
								<a href="${pageContext.request.contextPath}/main"
									class="btn btn-google btn-user btn-block rounded-pill"> <i
									class="fab fa-google fa-fw"></i> Register with Google
								</a> <a href="${pageContext.request.contextPath}/main"
									class="btn btn-facebook btn-user btn-block rounded-pill"> <i
									class="fab fa-facebook-f fa-fw"></i> Register with Facebook
								</a>
							<hr>
							<div class="text-center">
								<a class="small"
									href="${pageContext.request.contextPath}/forgot-password">Forgot
									Password?</a>
							</div>
							<div class="text-center">
								<a class="small" href="${pageContext.request.contextPath}/login">Already
									have an account? Login!</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- Bootstrap core JavaScript-->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script
		src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>

	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script>
		$(document).ready(function() {
				
			let code_check_msg = 0;
			let id_check_msg = 0;			
			
			let date = new Date();
			let year = "";
			let month = "";
			let day = "";
			for(let x = 1900; x <= date.getFullYear(); x++){
				year += "<option>"
				+ x
				+ "</option>"
			}
			
			
			$("#select_year").html(year);
			
			for(let y = 1; y <=12; y++){
				month += "<option>"
				+ y
				+ "</option>"
			}
			
			$("#select_month").html(month);
			
			for(let z = 1; z <=31; z++){
				day += "<option>"
					+ z
					+ "</option>"
			}
			
			$("#select_day").html(day);
			
			$("#id_check_btn").click(function(){
				$.ajax({
				    url: "${pageContext.request.contextPath}/user/SelectNewInsertUserIdCheck",
				    dataType: "json",
				    type: "GET",
				    data : {
				    	userId : $("#user_id").val()
				    },
				    async: "false",
				    success: function (data) {
						if(data.result != 1){
							Swal.fire({
								icon : "success",
								title : "사용가능한ID",
							})
							id_check_msg = 1;
							
							$("#user_id").attr("readonly",true);
							
						}else{
							Swal.fire({
								icon : "error",
								title : "이미존재하는ID",
							})
						}
				    	
				    	
				    }
				})
			});
			
			
			$("#refresh_btn").click(function(){
				window.location.href = "${pageContext.request.contextPath}/register";
			})
			
			
			$("#code_check_btn").click(function(){
				$.ajax({
				    url: "${pageContext.request.contextPath}/farm/CodeCheckEvent",
				    dataType: "json",
				    type: "GET",
				    data : {
						farmCode : $("#user_code").val()
				    },
				    async: "false",
				    success: function (data) {
						if(data.result == 1){
							code_check_msg = 1;
							$("#user_code").attr("readonly",true);
							alert("허가된 코드.");
						}else{
							alert("허가되지 않은 코드입니다.");
						}
				    }
				})
			})
			
			
			$("#register_btn").click(function() {
				
				if($("#user_code").val() == "" || $("#user_id").val() == "" || $("#user_name").val() == "" ||
					$("#user_email").val() == "" || $("#user_password").val() == "" || $("#user_repeat_password").val() == ""	||
					$("#user_phone_number").val() == ""
				){
					Swal.fire({
						icon : "info",
						title : "모든 입력란을 작성해주세요.",
					})
				}else{
					if($("#user_password").val() != $("#user_repeat_password").val()){
						Swal.fire({
							icon : "error",
							title : "비밀번호가 일치하지 않습니다.",
						})
					}else{
						if(code_check_msg != 1){
							Swal.fire({
								icon : "info",
								title : "농장코드 확인부탁드립니다.",
							})	
						}else{
							if(id_check_msg != 1){
								Swal.fire({
									icon : "info",
									title : "아이디 중복확인부탁드립니다.",
								})	
							}else{
								Swal.fire({
									  title: '입력하신 정보로 회원가입하시겠습니까?',
									  icon: 'info',
									  showCancelButton: true,
									  confirmButtonColor: '#3085d6',
									  cancelButtonColor: '#d33',
									  confirmButtonText: '가입하기',
									  cancelButtonText: '취소'
									}).then((result) => {
									  if (result.isConfirmed) {
											 $.ajax({
												    url: "${pageContext.request.contextPath}/user/InsertNewUser",
												    dataType: "json",
												    type: "POST",
												    data : {
												    	userId : $("#user_id").val(),
												    	userName : $("#user_name").val(),
												    	userEmail : $("#user_email").val(),
												    	userPw : $("#user_password").val(),
												    	userRePw : $("#user_repeat_password").val()
												    },
												    async: "false",
												    success: function (data) {
														console.log(data.result);
														if(data.result == 1){
															swal.fire({
																icon : "success",
																title : "회원가입이 완료되었습니다."
															})
															setTime();
														}
												    }
												}) 
									  		}
										})
							}
						}
					}
				}
				
					});
			
			function setTime() {
		        setTimeout("location.href = '${pageContext.request.contextPath}/main'", 1000)
		    }
		})
	</script>

</body>

</html>