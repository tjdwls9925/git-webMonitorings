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
          <span>īī�� �α���</span>
      </a>
	</li>
	<li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <span>īī�� �α׾ƿ�</span>
      </a>
	</li>
</ul>

<script>
Kakao.init('8469ab96a33b36e55a1703bc288ba53d'); //�߱޹��� Ű �� javascriptŰ�� ������ش�.
console.log(Kakao.isInitialized()); // sdk�ʱ�ȭ�����Ǵ�
//īī���α���
function kakaoLogin() {
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
  }
//īī���α׾ƿ�  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
</script>

</body>
</html>