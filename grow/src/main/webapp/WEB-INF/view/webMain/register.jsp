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
								<h1 class="h4 text-gray-900 mb-4">ȸ������</h1>
							</div>
								<div class="form-group row">
									<div class="col-sm-8 mb-3 mb-sm-0">
										<input type="text"
											class="form-control form-control-user text-center rounded-pill border-secondary"
											id="user_id" placeholder="���̵�" >
									</div>
									<div class="col-sm-4">
										<button id="id_check_btn" class="btn btn-primary form-control form-control-user rounded-pill border-secondary">�ߺ�Ȯ��</button>
									</div>
								</div>
								<div class="form-group">
									<input type="text"
										class="form-control form-control-user text-center rounded-pill border-secondary"
										id="user_name" placeholder="�̸�">
								</div>
								<div class="form-group">
									<input type="email"
										class="form-control form-control-user text-center rounded-pill border-secondary"
										id="user_email" placeholder="�̸���">
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="password"
											class="form-control form-control-user text-center rounded-pill border-secondary"
											id="user_password" placeholder="��й�ȣ">
									</div>
									<div class="col-sm-6">
										<input type="password"
											class="form-control form-control-user text-center rounded-pill border-secondary"
											id="user_repeat_password" placeholder="��й�ȣȮ��">
									</div>
								</div>
								<div class="form-group">
									<input type="text"
										class="form-control form-control-user text-center rounded-pill border-secondary"
										id="user_phone_number" placeholder="�޴���">
								</div>
					<div class ="form-group row" style="text-align: center;">
                        <div class="btn-group col-xl-12 col-sm-6 mb-3 mb-sm-0" data-toggle="buttons">
                            <label class="btn active border-secondary" style="color:black; border-radius: 24px;">
                                <input class="user_gender" type="radio" name="userGender" autocomplete="off" value="����" checked>����
                            </label>
                            <label class="btn border-secondary" style="color:black; border-radius: 24px;">
                                <input class="user_gender" type="radio" name="userGender" autocomplete="off" value="����">����
                            </label>
                         </div>    
                    </div>
                    <div class="form-group row text-center">
									<div class="col-sm-4 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user text-center rounded-pill border-secondary" placeholder="����⵵"> 
									</div>
									<div class="col-sm-4 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user text-center rounded-pill border-secondary" placeholder="��">
									</div>
									<div class="col-sm-4 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user text-center rounded-pill border-secondary" placeholder="��">
									</div>
								</div>
								<div class="form-group row text-center">
								<div class="col-sm-10 mb-3">
								<button id="register_btn" class="btn btn-primary btn-user btn-block rounded-pill">ȸ������</button>
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

</body>

</html>