<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%

		String user = (String)session.getAttribute("user");

		if(user == null){
			user = "GUEST";
		}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>
<body>

<%
	if(user == "GUEST"){
%>

<div class="container">
                <a class="navbar-brand" href="#page-top"><img src="${pageContext.request.contextPath}/resources/webMain/assets/img/logo.png" alt="..." style="height: 9rem;"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#">�����Խ���</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">�����</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">��ǰ�Ұ�</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">�����ϱ�</a></li>
                        <li class="nav-item"><a class="nav-link">���ô� ��</a></li>
                        <li id="login_btn" class="nav-item"><a class="nav-link" href="#" style="color:#4079BF;">�α���</a></li>
                    </ul>
                </div>
            </div>

<%

	}else{

%>
			
			
			<div class="container">
                <a class="navbar-brand" href="#page-top"><img src="${pageContext.request.contextPath}/resources/webMain/assets/img/logo.png" alt="..." style="height: 9rem;"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#">�����Խ���</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">�����</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">��ǰ�Ұ�</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">�����ϱ�</a></li>
                        <li class="nav-item"><a class="nav-link">���ô� ��</a></li>
                        <li id="logout_btn" class="nav-item"><a class="nav-link" href="#" style="color:#4079BF;">�α׾ƿ�</a></li>
                        <li id="pageMove" class="nav-item"><a class="nav-link" href="#" style="color:#4079BF;">�� ����Ȯ��</a></li>
                    </ul>
                </div>
            </div>

<%

	}
	
%>

            
         <script>
        	$(document).ready(function(){
        		$("#login_btn").click(function(){
        			window.location.href="${pageContext.request.contextPath}/webMain/login";
        		});
        		
        		
        		$("#logout_btn").click(function(){
        			window.location.href="${pageContext.request.contextPath}/webMain/logout";
        		})
        		
        		
        		$("#pageMove").click(function(){
        			window.location.href="${pageContext.request.contextPath}/main";
        		})
        		
        	});
        </script>
</body>
</html>