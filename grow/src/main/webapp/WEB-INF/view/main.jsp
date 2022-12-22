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

    <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/highcharts-more.js"></script>
	<script src="https://code.highcharts.com/modules/solid-gauge.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<script src="https://code.highcharts.com/modules/accessibility.js"></script>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- ���̵�� -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
				
				<%@ include file="./fix/sidebar.jsp" %>
	
        </ul>
        <!-- ���̵�� �� -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
						<%@ include file="./fix/header.jsp" %>
                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                    </div>
                    <div class="row px-3 py-3">
                    <%
                    
                    	if(user == "GUEST"){

                    %>
                    
                    
                    

								�α��� �� �̿밡��.

						

                    
                    
                    <%
                    	}else{

                    %>

                    	<div class="col-xl-3 col-md-6 mb-4 text-center">
                    	<figure class="highcharts-figure">
						  <div id="container-oee" class="chart-container"></div>
						</figure>
                    	</div>
                    	<div class="col-xl-3 col-md-6 mb-4 text-center">
                    	<figure class="highcharts-figure">
						  <div id="container-isr" class="chart-container"></div>
						</figure>
                    	</div>
                    	<div class="col-xl-3 col-md-6 mb-4 text-center">
                    	<figure class="highcharts-figure">
						  <div id="container-or" class="chart-container"></div>
						</figure>
                    	</div>
                    	<div class="col-xl-3 col-md-6 mb-4 text-center">
                    	<figure class="highcharts-figure">
						  <div id="container-qi" class="chart-container"></div>
						</figure>
                    	</div>
                    
                    <% 
                    	}
                    %>
                                        </div>
                </div>
            </div>

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
				<%@ include file="./fix/footer.jsp" %>
            </footer>
            <!-- End of Footer -->
        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>

    
    <script>
    
    $(document).ready(function(){
    	$("#loginPage_btn").click(function(){
    		window.location.href = "${pageContext.request.contextPath}/login";
    	});
    	
    	$("#logout_btn").click(function(){
    		window.location.href = "${pageContext.request.contextPath}/logout";
    	})
    	
    	if("<%=user%>" == "GUEST"){
    		console.log("guest");
    	}else{
    		$.ajax({
			    url: "${pageContext.request.contextPath}/normalUser/SelectUserData",
			    dataType: "json",
			    type: "GET",
			    data : {
			    	userId : "<%=user%>"
			    },
			    async: "false",
			    success: function (data) {
					if(data.userInfo.code == null){
						Swal.fire({
							icon : 'info',
							title : '�����ڵ带 ������ּ���.',
							text : '������ ��� �������� ���� �����ڵ� ����ϱ�.'
						})
					}
			    }
			})
    	}
    })
    
    </script>

</body>

</html>