<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%

	String user = (String) session.getAttribute("user");

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<title>Insert title here</title>
</head>
<body>
	
	
		<script>
			
			$(document).ready(function(){
				
				var code =  prompt("농장코드 등록");
				
				$.ajax({
				    url: "${pageContext.request.contextPath}/normalUser/userFarmCodeUpdate",
				    dataType: "json",
				    type: "PUT",
				    data : {
				    	user : "<%=user%>",
				    	code : code
				    },
				    async: "false",
				    success: function (data) {
						
				    }
				});
				
			})
			
			
			

		</script>
	
</body>
</html>