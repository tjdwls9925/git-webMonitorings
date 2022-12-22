<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body>
<ul>
	<li onclick="kakaoLogin();">
      <a href="javascript:void(0)">
          <span>카카오 로그인</span>
      </a>
	</li>
	<li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <span>카카오 로그아웃</span>
      </a>
	</li>
</ul>

<script>

		let code = "12345678901234567890";
		let code2 = BigInt("12345678901234567890");

		console.log("String",code)
		console.log(BigInt("12345678901234567890"))
		console.log(BigInt("12345678901234567890") + BigInt("12345678901234567890"))
		
		
		
</script>

</body>
</html>