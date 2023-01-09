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
        
        	div ul li a{
        		color : #0B0504;
        		text-decoration: none;
        		font-size: 20px;
        	}
        
        table tbody tr td a{
        	color: black;
        	text-decoration: none;
        }
        
        .paging a{
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
        	<table class="table table-hover text-center">
        		<thead>
        			<tr>
        				<th>번호</th>
        				<th>제목</th>
        				<th>작성자</th>
        				<th>날짜</th>
        				<th>조회수</th>        			
        			</tr>
        		</thead>
        		<tbody id="tbody_box">
        			<tr>
        				<td>1</td>
        				<td><a href="#">안녕하세요</a></td>
        				<td>헬로</td>
        				<td>2023.01.03</td>
        				<td>3</td>
        			</tr>
        			<tr>
        				<td>2</td>
        				<td><a href="#">안녕하세요</a></td>
        				<td>헬로</td>
        				<td>2023.01.03</td>
        				<td>3</td>
        			</tr>
        			<tr>
        				<td>3</td>
        				<td><a href="#">안녕하세요</a></td>
        				<td>헬로</td>
        				<td>2023.01.03</td>
        				<td>3</td>
        			</tr>
        			<tr>
        				<td>4</td>
        				<td><a href="#">안녕하세요</a></td>
        				<td>헬로</td>
        				<td>2023.01.03</td>
        				<td>3</td>
        			</tr>
        			<tr>
        				<td>5</td>
        				<td><a href="#">안녕하세요</a></td>
        				<td>헬로</td>
        				<td>2023.01.03</td>
        				<td>3</td>
        			</tr>
        			<tr>
        				<td>6</td>
        				<td><a href="#">안녕하세요</a></td>
        				<td>헬로</td>
        				<td>2023.01.03</td>
        				<td>3</td>
        			</tr>
        			<tr>
        				<td>7</td>
        				<td><a href="#">안녕하세요</a></td>
        				<td>헬로</td>
        				<td>2023.01.03</td>
        				<td>3</td>
        			</tr>
        			<tr>
        				<td>8</td>
        				<td><a href="#">안녕하세요</a></td>
        				<td>헬로</td>
        				<td>2023.01.03</td>
        				<td>3</td>
        			</tr>
        			<tr>
        				<td>9</td>
        				<td><a href="#">안녕하세요</a></td>
        				<td>헬로</td>
        				<td>2023.01.03</td>
        				<td>3</td>
        			</tr>
        			<tr>
        				<td>10</td>
        				<td><a href="#">안녕하세요</a></td>
        				<td>헬로</td>
        				<td>2023.01.03</td>
        				<td>3</td>
        			</tr>
        		</tbody>
        	</table>
        

        	
        	<nav aria-label="Page navigation example" class="mt-4">
        	  
				<ul class="pagination justify-content-center">
				    <li class="page-item">
 						<a id="prev_btn" class="page-link" class="page-link" href="#">Previous</a>  
				    </li>
				    <li id="pageNum" class="page-item"><a class="page-link" href="#">1</a></li>
				    <li class="page-item">
				      <a id="next_btn" class="page-link" href="#">다음</a>
				    </li>
				  </ul>
        	
        	<a id="write_btn" class="btn btn-primary float-end">글쓰기</a>
  				   
  				
			</nav>
			
        			
        </div>
       
       
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        
        <script>
	    
        
        
        	$(document).ready(function(){
        		
        		let LastPageNum = 0;
        		
        		let pageCount = 1;
		    	
		    	$("#pageNum").html('<a class="page-link" href="#">' + pageCount + '</a>')
		    	
		    	$("#prev_btn").hide();
		    	
				
		    	
		    	
		    	$("#next_btn").click(function(){
		    		
		    		
		    		
					
					pageCount = pageCount+1;
					
					$("#pageNum").html('<a class="page-link" href="#">' + pageCount + '</a>');
					
					$("#prev_btn").show();
					
					pageRequest(pageCount);
					
					
					
	
				})
				
				
				$("#prev_btn").click(function(){
					pageCount = pageCount-1;
					$("#pageNum").html('<a class="page-link" href="#">' + pageCount + '</a>');
					pageRequest(pageCount);
					$("#next_btn").show();
					
					if(pageCount == 1){
						swal.fire({
							icon : "info",
							title : "첫 페이지입니다."
						})
						$("#prev_btn").hide();
					
					}

					
				})
				

        		$.ajax({
				    url: "${pageContext.request.contextPath}/board/SelectBoardContent",
				    dataType: "json",
				    type: "GET",
				    data : {
				    	pageCount : (pageCount - 1) * 10 
				    },
				    async: "false",
				    success: function (data) {
				    	
				    	console.log(data.boardList.length);
				    	let str = "";
						for(let x = 0; x < data.boardList.length; x++){
							str+= "<tr onclick='callBoardDetail("+data.boardList[x].boardSeq+")' style='cursor:pointer'>"
								+ "<td>" + data.boardList[x].boardSeq + "</td>"
								+ "<td>" + data.boardList[x].boardTitle + "</td>"
								+ "<td>" + data.boardList[x].userID + "</td>"
								+ "<td>" + data.boardList[x].boardWriterDate + "</td>"
								+ "<td>" + data.boardList[x].boardViewsCount + "</td>"
								+ "</tr>"
						}
				    	
				    	$("#tbody_box").html(str);
				    	pageRequest(pageCount);
				    	
				    }
				}),
				
        		

        		
        		$("#write_btn").click(function(){
                	const user = "<%=user%>";
            		
                	if(user == "GUEST"){
                		swal.fire({
                			icon : "info",
                			title : "로그인 후 이용가능."
                		})
                		setTime();
                	}else{
                		window.location.href="${pageContext.request.contextPath}/webMain/freeBoardWrite?id="+user;
                	}
        		})
        	})
        	
        	
        	function setTime() {
    		        setTimeout("location.href = '${pageContext.request.contextPath}/webMain/login'", 1000)
    		}
        	
        	function callBoardDetail(boardSeq){
        		
        		$.ajax({
				    url: "${pageContext.request.contextPath}/board/UserViewsCount",
				    dataType: "json",
				    type: "PUT",
				    data : {
				    	boardSeq : boardSeq
				    },
				    async: "false",
				    success: function (data) {
				    	window.location.href="${pageContext.request.contextPath}/webMain/boardDetail?boardSeq=" + boardSeq;
				    }
				})

		    	}
        	
        	
        	function pageRequest(pageNum){
        		$.ajax({
				    url: "${pageContext.request.contextPath}/board/SelectBoardContent",
				    dataType: "json",
				    type: "GET",
				    data : {
				    	pageCount : (pageNum - 1) * 10 
				    },
				    async: "false",
				    success: function (data) {
				    	
				    	console.log('글 갯수' ,data.boardList.length)
				    	
				    	let str = "";
						for(let x = 0; x < data.boardList.length; x++){
							str+= "<tr onclick='callBoardDetail("+data.boardList[x].boardSeq+")' style='cursor:pointer'>"
							+ "<td>" + data.boardList[x].boardSeq + "</td>"
							+ "<td>" + data.boardList[x].boardTitle + "</td>"
							+ "<td>" + data.boardList[x].userID + "</td>"
							+ "<td>" + data.boardList[x].boardWriterDate + "</td>"
							+ "<td>" + data.boardList[x].boardViewsCount + "</td>"
							+ "</tr>"
						}
				    	
				    	$("#tbody_box").html(str);
				  
				    	if(data.boardList.length < 10){
				    		$("#next_btn").hide();
				    	}else{
					    	if(data.boardList.length = 10){
					    		$.ajax({
								    url: "${pageContext.request.contextPath}/board/SelectBoardContent",
								    dataType: "json",
								    type: "GET",
								    data : {
								    	pageCount : (pageNum) * 10 
								    },
								    async: "false",
								    success: function (data) {
								    	
								    	console.log('다음페이지 글 갯수' ,data.boardList.length)
								    	
								    	if(data.boardList.length == 0){
								    		
								    		$("#next_btn").hide();
								    	}
										
								    }
								})
					    	}
				    	}
				    	
				    	
				    	

				    	
				    }
				})
        	}
        	
       
        	
        </script>
        
    </body>
</html>
