<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	String boardSeq = request.getParameter("boardSeq");
%>    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Agency - Start Bootstrap Theme</title>
        
        <style>
        
        	.deleteX{
        		margin-left: 10px;
        		cursor: pointer;
        		font-size:14px;
        		font-weight: bold;
        	}
        	.deleteX:hover{
        		color:#6F2534;

        	}
        
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
        
        .fileListField{
        	cursor: pointer;
        	align-items: center;
        }
        .fileListField:hover{
        	color: #4079BF;
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

			<h2 class="mt-3">누구님의 게시글</h2>

				<div class="mb-3 mt-4">

					<label for="title">제목</label>

					<input type="text" class="form-control" name="title" id="title" readonly>
					
						<div id="update_time_box">
							<label class="mt-3" for="title">수정일자</label>
		
							<input type="text" class="form-control" name="title" id="update_time" readonly>
						</div>
					<div class="form-group row mt-4">
									<div class="col-sm-4 mb-3 mb-sm-0">
									<label for="user_id">작성자</label>
										<input type="text"
											class="form-control form-control-user text-center "
											id="user_id" readonly>
									</div>
									
									<div class="col-sm-4">
										<label for="board_write_date">작성일자</label>
										<input type="text"
											class="form-control form-control-user text-center "
											id="board_write_date" readonly>
									</div>
									<div class="col-sm-4">
										<label for="board_views_count">조회수</label>
										<input type="text"
											class="form-control form-control-user text-center "
											id="board_views_count" readonly>
									</div>
								</div>
				</div>


				

				<div class="mb-3">

					<label for="content">내용</label>

					<textarea class="form-control" rows="10" name="content" id="content" readonly ></textarea>

				</div>

				

				<div class="mb-3 align-items-center">


					<div id="file_content_box" class="">
					
					</div>
					
				</div>
				
				
			<div style="float:right;margin-top: 10px; margin-bottom: 10px;">	
				<a class="btn btn-primary" onclick="history.back()"  href="#">뒤로가기</a>
				<a id="update_board_btn" class="btn btn-info" href="#">수정하기</a>
				<a id="update_success_btn" class="btn btn-info" href="#">수정완료</a>
				<a id="delete_board_btn" class="btn btn-danger" href="#">삭제하기</a>
			</div>
		</div>
       
        

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        
       <script>
       			$(document).ready(function(){
       				

       				$.ajax({
    				    url: "${pageContext.request.contextPath}/board/SelectBoardDetailContent",
    				    dataType: "json",
    				    type: "GET",
    				    data : {
    				    	boardSeq : "<%=boardSeq%>"
    				    },
    				    async: "false",
    				    success: function (data) {
    				    	
    				    		if("<%=user%>" == data.board.userID){
    				    			$("#update_board_btn").show();
    				    			$("#delete_board_btn").show();
    				    		}else{
    				    			$("#update_board_btn").hide();
    				    			$("#delete_board_btn").hide();
    				    		}
    				    
    				    		console.log(data.board)	
    				    		
    				    		if(data.board.boardUpdateDate == null){
    				    			console.log('null임')
    				    			$("#update_time_box").hide();
    				    		}else{
    				    			$("#update_time_box").show();
    				    		}
    				    		
    				    		$("#title").val(data.board.boardTitle);
    				    		$("#user_id").val(data.board.userID);
    				    		$("#board_write_date").val(data.board.boardWriterDate);
    				    		$("#board_views_count").val(data.board.boardViewsCount);
    				    		$("#content").val(data.board.boardContent);
    				    		$("#update_time").val(data.board.boardUpdateDate)
    				    		$("#update_success_btn").hide();
    				    		
    				    		fileList();
    				    	
    				    }
    				})
    				
    				
    				
    				
    				$("#update_board_btn").click(function(){
    					
    	       			$.ajax({
    					    url: "${pageContext.request.contextPath}/board/SelectBoardFileUploadList",
    					    dataType: "json",
    					    type: "GET",
    					    data : {
    					    	boardSeq : "<%=boardSeq%>"
    					    },
    					    async: "false",
    					    success: function (data) {

    					    	if(data.fileList == "null"){
    					    		console.log("첨부파일 존재하지않음")
    					    	}else{
    					    		console.log(data.fileList);
    					    		let str = "<h2>첨부파일</h2>";
    					    		
    					    		for(var x = 0 ; x< data.fileList.length; x++){
    					    			str += "<span class='fileListField' onclick=fileDownLoad("+data.fileList[x].idx+")>" + data.fileList[x].originalFileName + "</span> <span class='deleteX' onclick=fileDelete("+data.fileList[x].idx+")> X </span> <br> "
    					    		}
    					    		
    					    		
    					    		$("#file_content_box").html(str);
    					    	}

    					    	
    					    }
    					})
    					
    					
    					$("#title").attr('readonly',false);
    					$("#content").attr('readonly',false);
    					$("#update_board_btn").hide();
    					$("#update_success_btn").show();
    				})
    				
    				
    				$("#update_success_btn").click(function(){
    					
    					if($("#title").val() == "" || $("#content").val() == ""){
    						swal.fire({
    							icon : "info",
    							title : "제목과 내용을 입력해주세요."
    						})
    					}else{
    						Swal.fire({
  							  title: '게시글을 수정하시겠습니까?',
  							  icon: 'info',
  							  showCancelButton: true,
  							  confirmButtonColor: '#3085d6',
  							  cancelButtonColor: '#d33',
  							  confirmButtonText: '등록하기',
  							  cancelButtonText: '취소'
  							}).then((result) => {
  								  if (result.isConfirmed) {

  									  $.ajax({
  				        				    url: "${pageContext.request.contextPath}/board/UpdateBoardContent",
  				        				    dataType: "json",
  				        				    type: "PUT",
  				        				    data : {
  				        				    	boardSeq : "<%=boardSeq%>",
  				        				    	userID : "<%=user%>",
  				        				    	title : $("#title").val(),
  				        				    	content : $("#content").val()
  				        				    },
  				        				    async: "false",
  				        				    success: function (data) {
  				        				    
  				        				    	if(data.result == 1){
  				        				    		swal.fire({
  				        				    			icon : "success",
  				        				    			title : "수정이 완료되었습니다."
  				        				    		})
  				        				    		setTime()
  				        				    	}
												
  				        				   	 			}
  				        							})
  											    }
  											})
    					}
    					 
    				})
    				
    				$("#delete_board_btn").click(function(){
    					
    					Swal.fire({
							  title: '게시글을 삭제하시겠습니까?',
							  icon: 'info',
							  showCancelButton: true,
							  confirmButtonColor: '#3085d6',
							  cancelButtonColor: '#d33',
							  confirmButtonText: '삭제',
							  cancelButtonText: '취소'
							}).then((result) => {
								  if (result.isConfirmed) {

				    					$.ajax({
				        				    url: "${pageContext.request.contextPath}/board/DeleteBoardContent",
				        				    dataType: "json",
				        				    type: "DELETE",
				        				    data : {
				        				    	boardSeq : "<%=boardSeq%>",
				        				    	userID : "<%=user%>"
				        				    },
				        				    async: "false",
				        				    success: function (data) {
				        				    
				        				    	console.log(data.msgCode)
				        				    	
				        				    	if(data.msgCode == 1){
				        				    		swal.fire({
				        				    			icon : "success",
				        				    			title : "삭제되었습니다."
				        				    		})
				        				    		setTime();
				        				    	}
				        				    	
				        				    	
				        				    	
				        				    			}
				        							})
											    }
											}) 
    									})
    									
    									
    									
       								})
       								
       		function setTime() {
		        setTimeout("location.href = '${pageContext.request.contextPath}/webMain/freeBoard'", 1000)
		    }
       			
       		function fileList(){
       			$.ajax({
				    url: "${pageContext.request.contextPath}/board/SelectBoardFileUploadList",
				    dataType: "json",
				    type: "GET",
				    data : {
				    	boardSeq : "<%=boardSeq%>"
				    },
				    async: "false",
				    success: function (data) {

				    	if(data.fileList == "null"){
				    		console.log("첨부파일 존재하지않음")
				    	}else{
				    		console.log(data.fileList);
				    		let str = "<h2>첨부파일</h2>";
				    		
				    		for(var x = 0 ; x< data.fileList.length; x++){
				    			str += "<span class='fileListField' onclick=fileDownLoad("+data.fileList[x].idx+")>" + data.fileList[x].originalFileName + "</span><br> "
				    		}
				    		
				    		
				    		$("#file_content_box").html(str);
				    	}

				    	
				    }
				})
       		}
       		
       		function fileDownLoad(idx){
       			let boardSeq = "<%=boardSeq%>";
       			window.location.href = "${pageContext.request.contextPath}/board/FileDownLoad?idx="+idx+"&boardIdx="+boardSeq;
       		}
       		
       		function fileDelete(idx){
       			let boardSeq = "<%=boardSeq%>";
       			console.log(idx);
       			
       			$.ajax({
				    url: "${pageContext.request.contextPath}/board/SelectFileDelete",
				    dataType: "json",
				    type: "PUT",
				    data : {
				    	boardSeq : boardSeq,
				    	idx : idx
				    },
				    async: "false",
				    success: function (data) {
				    	
				    	if(data.fileList == "null"){
				    		console.log("첨부파일 존재하지않음")
				    	}else{
				    		console.log(data.fileList);
				    		let str = "<h2>첨부파일</h2>";
				    		
				    		for(var x = 0 ; x< data.fileList.length; x++){
				    			str += "<span class='fileListField' onclick=fileDownLoad("+data.fileList[x].idx+")>" + data.fileList[x].originalFileName + "</span> <span class='deleteX' onclick=fileDelete("+data.fileList[x].idx+")> X </span> <br> "
				    		}
				    		
				    		
				    		$("#file_content_box").html(str);
				    	}

				    	
				    }
				})
       			
       		}
       								
       </script>
       
        
    </body>
</html>
