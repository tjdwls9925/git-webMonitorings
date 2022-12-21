<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>
<body>
<div class="container">
                <a class="navbar-brand" href="#page-top"><img src="${pageContext.request.contextPath}/resources/webMain/assets/img/logo.png" alt="..." style="height: 9rem;"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#">자유게시판</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">멤버쉽</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">제품소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">문의하기</a></li>
                        <li class="nav-item"><a class="nav-link">오시는 길</a></li>
                        <li id="login_btn" class="nav-item"><a class="nav-link" href="#" style="color:#4079BF;">로그인</a></li>
                    </ul>
                </div>
            </div>
            
         <script>
        	$(document).ready(function(){
        		$("#login_btn").click(function(){
        			window.location.href="${pageContext.request.contextPath}/webMain/login";
        		});
        	});
        </script>
</body>
</html>