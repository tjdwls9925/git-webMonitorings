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

			<h2 class="mt-3">�Խñ� �ۼ�</h2>

				<div class="mb-3 mt-4">

					<label for="title">����</label>

					<input type="text" class="form-control" name="title" id="title" placeholder="������ �Է��� �ּ���">

				</div>

				

				<div class="mb-3">

					<label for="reg_id">�ۼ���</label>

					<input type="text" class="form-control" name="reg_id" id="reg_id" placeholder="master" readonly>

				</div>

				

				<div class="mb-3">

					<label for="content">����</label>

					<textarea class="form-control" rows="10" name="content" id="content" placeholder="������ �Է��� �ּ���" ></textarea>

				</div>

				

				<div class="mb-3 d-flex align-items-center">

					<label for="file-element">÷������</label>

					<input type="file" name="file" id="file-element" multiple>
				</div>
				
			<div style="float:right; margin-bottom: 10px;">	
			<a class="btn btn-primary" onclick="history.back()"  href="#">�ڷΰ���</a>
			<a id="insert_board_btn" class="btn btn-primary " href="#">����ϱ�</a>
			<button id="check_img">�̹��� Ȯ��</button>
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
        					title : "�Է¶��� �� �ۼ����ּ���."
        				})
        				
        			}else{
						Swal.fire({
							  title: '�Է��Ͻ� ������ ���� ����Ͻðڽ��ϱ�?',
							  icon: 'info',
							  showCancelButton: true,
							  confirmButtonColor: '#3085d6',
							  cancelButtonColor: '#d33',
							  confirmButtonText: '����ϱ�',
							  cancelButtonText: '���'
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
										    			title : "����� �Ϸ�Ǿ����ϴ�."
										    		})
										    		setTime();
										    	}else{
										    		swal.fire({
										    			icon : "error",
										    			title : "�� �� ���� ����."
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
