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

    <title>SB Admin 2 - Login</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
        <script src="https://kit.fontawesome.com/db6222330e.js" crossorigin="anonymous"></script>
        <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

</head>

<body class="bg-gradient" style="background-color: aliceblue;">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">로그인</h1>
                                    </div>
                                        <div class="form-group">
                                            <input type="email" class="border_style form-control form-control-user"
                                                id="user_id" aria-describedby="emailHelp"
                                                placeholder="아이디">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="border_style form-control form-control-user"
                                                id="user_pw" placeholder="비밀번호">
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">Remember
                                                    Me</label>
                                            </div>
                                        </div>
                                        <button id=login_btn class="border_style btn btn-primary btn-user btn-block">
                                            Login
                                        </button>
                                        <button id=kakao_login_btn class="border_style btn btn-kakao btn-user btn-block" style="background-color : #C6B153; color:#fff">
                                            <i class="fa-solid fa-comment" style="margin-right: 5px;"></i>Login with Kakao
                                        </button>
                                        <hr>
                                        <button class="border_style btn btn-google btn-user btn-block">
                                            <i class="fab fa-google fa-fw"></i> Login with Google
                                        </button>
                                        <button class="border_style btn btn-facebook btn-user btn-block">
                                            <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                                        </button>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="${pageContext.request.contextPath}/forgot-password">Forgot Password?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="${pageContext.request.contextPath}/register">Create an Account!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script>
	$(document).ready(function(){
		
		$("#kakao_login_btn").click(function(){
			Kakao.init('8469ab96a33b36e55a1703bc288ba53d');
			    Kakao.Auth.login({
			      success: function (response) {
			        Kakao.API.request({
			          url: '/v2/user/me',
			          success: function (response) {
			        	  console.log(response)
			          },
			          fail: function (error) {
			            console.log(error)
			          },
			        })
			      },
			      fail: function (error) {
			        console.log(error)
			      },
			    })
			  
		});
		
		$("#login_btn").click(function(){
			if($("#user_id").val() == "" || $("#user_pw").val() ==  ""){
				swal.fire({
					icon : "success",
					title : "아이디와 비밀번호 모두 입력해주세요."
					text : "hello"
				})
			}else{
				$.ajax({
				    url: "${pageContext.request.contextPath}/user/userLoginEvent",
				    dataType: "json",
				    type: "GET",
				    data : {
				    	userId : $("#user_id").val(),
				    	userPw : $("#user_pw").val()
				    },
				    async: "false",
				    success: function (data) {
						console.log(data.result);
						if(data.result == 0){
							swal.fire({
								icon : "info",
								title : "존재하지않는 아이디 이거나 비밀번호 오류입니다."
							})
						}else{
							swal.fire({
								icon : "success",
								title : "로그인 성공"
							})
							setTime();
						}
				    }
				})
			}
		});
		
		function setTime() {
	        setTimeout("location.href = '${pageContext.request.contextPath}/main'", 1000)
	    }
	})
	
	
	
	</script>

</body>

</html>