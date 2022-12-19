<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/highcharts-more.js"></script>
	<script src="https://code.highcharts.com/modules/solid-gauge.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<script src="https://code.highcharts.com/modules/accessibility.js"></script>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- 사이드바 -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
				
				<%@ include file="../fix/sidebar.jsp" %>
	
        </ul>
        <!-- 사이드바 끝 -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
						<%@ include file="../fix/header.jsp" %>
                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">마이페이지</h1>
                    </div>
                    	<div class="row">
					<div class="col-lg-8">
						<div class="p-5">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">회원가입</h1>
							</div>
								<div class="form-group row">
									<div class="col-sm-8 mb-3 mb-sm-0">
										<input type="text"
											class="form-control form-control-user text-center rounded-pill"
											id="user_id" placeholder="아이디" >
									</div>
									<div class="col-sm-4">
										<button id="id_check_btn" class="btn btn-primary form-control form-control-user rounded-pill">중복확인</button>
									</div>
								</div>
								<div class="form-group">
									<input type="text"
										class="form-control form-control-user text-center rounded-pill"
										id="user_name" placeholder="이름">
								</div>
								<div class="form-group">
									<input type="email"
										class="form-control form-control-user text-center rounded-pill"
										id="user_email" placeholder="이메일">
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="password"
											class="form-control form-control-user text-center rounded-pill"
											id="user_password" placeholder="비밀번호">
									</div>
									<div class="col-sm-6">
										<input type="password"
											class="form-control form-control-user text-center rounded-pill"
											id="user_repeat_password" placeholder="비밀번호확인">
									</div>
								</div>
								<button id="register_btn"
									class="btn btn-primary btn-user btn-block rounded-pill">회원가입</button>
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

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
				<%@ include file="../fix/footer.jsp" %>
            </footer>
            <!-- End of Footer -->
        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>

    <script>
    	$(document).ready(function(){
        	$("#loginPage_btn").click(function(){
        		window.location.href = "${pageContext.request.contextPath}/login";
        	});
        	
        	$("#logout_btn").click(function(){
        		window.location.href = "${pageContext.request.contextPath}/logout";
        	})
    	})
    </script>

</body>

</html>