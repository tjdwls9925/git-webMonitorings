<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Agency - Start Bootstrap Theme</title>
        
        <style>
        
        	div ul li{
        		margin-left: 5px;
        		margin-light:5px;
        	}
        	div ul li a{
        		color : #0B0504;
        		text-decoration: none;
        		font-size: 20px;
        	}
        
        table tbody tr td a{
        	color: black;
        	text-decoration: none;
        }
        
        </style>
        
        
        
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/webMain/assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/webMain/css/styles.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark" id="mainNav">
            	<%@ include file="./fix/header.jsp" %>
        </nav>
        <!-- Masthead-->
        
        <div class="container">

			<h2 class="mt-3">게시글 작성</h2>

				<div class="mb-3 mt-4">

					<label for="title">제목</label>

					<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">

				</div>

				

				<div class="mb-3">

					<label for="reg_id">작성자</label>

					<input type="text" class="form-control" name="reg_id" id="reg_id" placeholder="master" readonly>

				</div>

				

				<div class="mb-3">

					<label for="content">내용</label>

					<textarea class="form-control" rows="10" name="content" id="content" placeholder="내용을 입력해 주세요" ></textarea>

				</div>

				

				<div class="mb-3 d-flex align-items-center">

					<label for="file-element">첨부파일</label>

					<input type="file" name="file" id="file-element" multiple>
				</div>
				
			<div style="float:right; margin-bottom: 10px;">	
			<a class="btn btn-primary" onclick="history.back()"  href="#">뒤로가기</a>
			<a id="insert_board_btn" class="btn btn-primary " href="#">등록하기</a>
			<button id="check_img">이미지 확인</button>
			</div>
			</div>
       
        

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        
        <script>
        
        
        
        	$(document).ready(function(){
        		
        		
        		
        		
        		const user = "<%=user%>";
        		
        		$("#reg_id").val(user);
        		
	
        		$("#insert_board_btn").click(function(){
        			
        			
        	
        			if($("#title").val() == "" || $("#content").val() == ""){
        				swal.fire({
        					icon : "info",
        					title : "입력란을 다 작성해주세요."
        				})
        				
        			}else{
						Swal.fire({
							  title: '입력하신 정보로 글을 등록하시겠습니까?',
							  icon: 'info',
							  showCancelButton: true,
							  confirmButtonColor: '#3085d6',
							  cancelButtonColor: '#d33',
							  confirmButtonText: '등록하기',
							  cancelButtonText: '취소'
							}).then((result) => {
								  if (result.isConfirmed) {

					        			$.ajax({
										    url: "${pageContext.request.contextPath}/board/InsertBoardWrite",
										    dataType: "json",
										    type: "POST",
										    data : {
												userID : $("#reg_id").val(),
										    	title : $("#title").val(),
										    	content : $("#content").val()
										    },
										    async: "false",
										    success: function (data) {
										    	if(data.msgCode == 1){
										    		swal.fire({
										    			icon : "success",
										    			title : "등록이 완료되었습니다."
										    		})
										    		setTime();
										    	}else{
										    		swal.fire({
										    			icon : "error",
										    			title : "알 수 없는 오류."
										    		})
										    	}
										    }
										})
											    }
											}) 
								  		}
									})
        		})
        		
        		

        		function setTime() {
		        setTimeout("location.href = '${pageContext.request.contextPath}/webMain/freeBoard'", 1000)
		    	}

        	
        	
        	
        </script>
        
    </body>
</html>
