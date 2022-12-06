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
								<h1 class="h4 text-gray-900 mb-4">ȸ������</h1>
							</div>
								<div class="form-group row">
									<div class="col-sm-8 mb-3 mb-sm-0">
										<input type="text"
											class="form-control form-control-user text-center rounded-pill"
											id="user_id" placeholder="���̵�" >
									</div>
									<div class="col-sm-4">
										<button id="id_check_btn" class="btn btn-primary form-control form-control-user rounded-pill">�ߺ�Ȯ��</button>
									</div>
								</div>
								<div class="form-group">
									<input type="text"
										class="form-control form-control-user text-center rounded-pill"
										id="user_name" placeholder="�̸�">
								</div>
								<div class="form-group">
									<input type="email"
										class="form-control form-control-user text-center rounded-pill"
										id="user_email" placeholder="�̸���">
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="password"
											class="form-control form-control-user text-center rounded-pill"
											id="user_password" placeholder="��й�ȣ">
									</div>
									<div class="col-sm-6">
										<input type="password"
											class="form-control form-control-user text-center rounded-pill"
											id="user_repeat_password" placeholder="��й�ȣȮ��">
									</div>
								</div>
								<button id="register_btn"
									class="btn btn-primary btn-user btn-block rounded-pill">ȸ������</button>
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
								title : "��밡����ID",
							})
						}else{
							Swal.fire({
								icon : "error",
								title : "�̹������ϴ�ID",
							})
						}
				    	
				    	
				    }
				})
			});
			
			
			
			$("#register_btn").click(function() {
				Swal.fire({
					  title: '�Է��Ͻ� ������ ȸ�������Ͻðڽ��ϱ�?',
					  icon: 'info',
					  showCancelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: '�����ϱ�',
					  cancelButtonText: '���'
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
												title : "ȸ�������� �Ϸ�Ǿ����ϴ�."
											})
											setTime();
										}
								    }
								}) 
					  		}
						})
				
					});
			
			function setTime() {
		        setTimeout("location.href = '${pageContext.request.contextPath}/main'", 1000)
		    }
		})
	</script>

</body>

</html>