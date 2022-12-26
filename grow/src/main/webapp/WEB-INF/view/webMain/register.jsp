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

<body style="background-color: aliceblue;">

	<div class="container" style="margin-top: 7%;">
		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-5 d-none d-lg-block">
						            <img alt="..." src="${pageContext.request.contextPath}/resources/webMain/assets/img/logo.png"
                            		style="width:9rem; text-align: center;" >
					</div>
					<div class="col-lg-7">
						<div class="p-5">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">회원가입</h1>
							</div>
								<div class="form-group row">
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
                                <input class="user_gender" type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
                            </label>
                            <label class="btn border-secondary" style="color:black; border-radius: 24px;">
                                <input class="user_gender" type="radio" name="userGender" autocomplete="off" value="여자">여자
                            </label>
                         </div>    
                    </div>
                    <div class="form-group row text-center">
									<div class="col-sm-4 mb-3 mb-sm-0">
										<input id="input_year" type="text" class="form-control form-control-user text-center rounded-pill border-secondary" placeholder="출생년도"> 
									</div>
									<div class="col-sm-4 mb-3 mb-sm-0">
										<input  id="input_month" type="text" class="form-control form-control-user text-center rounded-pill border-secondary" placeholder="월">
									</div>
									<div class="col-sm-4 mb-3 mb-sm-0">
										<input  id="input_day" type="text" class="form-control form-control-user text-center rounded-pill border-secondary" placeholder="일">
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
	
			$(document).ready(function(){
				
				
				
				$("#refresh_btn").click(function(){
					window.location.href="${pageContext.request.contextPath}/webMain/register";
				})
					
				
						
				
				let id_check_msg = 0;	
				
				$("#id_check_btn").click(function(){
					
					if($("#user_id").val() == ""){
						Swal.fire({
							icon : "info",
							title : "아이디를 입력해 주세요.",
						})
					}else{
						$.ajax({
						    url: "${pageContext.request.contextPath}/normalUser/SelectNewInsertUserIdCheck",
						    dataType: "json",
						    type: "GET",
						    data : {
						    	userID : $("#user_id").val()
						    },
						    async: "false",
						    success: function (data) {
						    	console.log(data.result)
						    	
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
					}
					
					
				});
				
				
				$("#register_btn").click(function(){
					if( 	$("#user_id").val() == "" || $("#user_name").val() == "" ||
							$("#user_email").val() == "" || $("#user_password").val() == "" ||
							$("#user_repeat_password").val() == ""	||
							$("#user_phone_number").val() == "" || $("#input_year").val() == "" ||
							$("#input_month").val() == "" || $("#input_day").val() == ""
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
											  let month = "";
											  let day = "";
											  
											  if($("#input_month").val().length == 1){
												  if($("#input_month").val() < 10){
													  month = "0"+$("#input_month").val();
													  console.log(month)
												  }
											  }
											  
											  if($("#input_day").val().length == 1){
												  if($("#input_day").val() < 10){
													  day = "0"+$("#input_day").val();
													  console.log(day)
												  }
											  }
											  
											  
											  
												 $.ajax({
													    url: "${pageContext.request.contextPath}/normalUser/InsertNewUser",
													    dataType: "json",
													    type: "POST",
													    data : {
															userID : $("#user_id").val(),
															userName : $("#user_name").val(),
															userEmail : $("#user_email").val(),
															userPassword : $("#user_password").val(),
															userPhone : $("#user_phone_number").val(),
															userGender : $("input:radio[name=userGender]:checked").val(),
															userBirth : $("#input_year").val()+""+month+""+day
													    },
													    async: "false",
													    success: function (data) {
															console.log(data.result);
															if(data.result == 1){
																setTime();
															}else{
																alert("알 수 없는 오류.");
															}
													    }
													}) 
										  		}
											})
							}
						}
					}
					
					
					
				})
				
				function setTime() {
		        setTimeout("location.href = '${pageContext.request.contextPath}/webMain/webMain'", 1000)
		    }
				
			});
		
	</script>

</body>

</html>