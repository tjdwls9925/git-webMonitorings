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

        <!-- 사이드바 -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
				
				<%@ include file="./fix/sidebar.jsp" %>
	
        </ul>
        <!-- 사이드바 끝 -->

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
                    
                    
                    

								로그인 후 이용가능.

						

                    
                    
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
    	
    	var gaugeOptions = {
    		  chart: {
    		    type: 'solidgauge'
    		  },

    		  title: null,

    		  pane: {
    		    center: ['50%', '50%'], //그래프 위치 조정
    		    size: '80%',            //그래프 사이즈 조정
    		    startAngle: -170,       //원 시작 각도 조정
    		    endAngle: 75,           //원 끝 각도 조정
    		    background: {
    		      backgroundColor:
    		        Highcharts.defaultOptions.legend.backgroundColor || '#858796',
    		      innerRadius: '60%',
    		      outerRadius: '100%',
    		      shape: 'arc'
    		    }
    		  },

    		  exporting: {
    		    enabled: false
    		  },

    		  tooltip: {
    		    enabled: false
    		  },

    		  // OEE 게이지 스타일
    		  yAxis: {
    		    stops: [
    		      [0.1, '#55BF3B'], // green
    		      [0.5, '#DDDF0D'], // yellow
    		      [0.9, '#DF5353'] // red
    		    ],
    		    lineWidth: 0,
    		    tickWidth: 0,
    		    minorTickInterval: null,
    		    tickAmount: 2,
    		    title: { //그래프 제목 위치
    		      y: 80
    		    },
    		    labels: { //그래프 범위 값 위치
    		      x: 6,
    		      y: 16
    		    }
    		  },

    		  plotOptions: {
    		    solidgauge: {
    		      dataLabels: {
    		        y: 5,
    		        borderWidth: 0,
    		        useHTML: true
    		      }
    		    }
    		  }
    		};

    		// chart container클래스를 가진 div의 아이디와 대응하여 차트 생성 
    		// 설비종합효율 Overall Equipment Effectiveness
    		var chartOEE = Highcharts.chart('container-oee', Highcharts.merge(gaugeOptions, {
    		  yAxis: {
    		    min: 0,   //그래프가 나타낼 수 있는 최소값
    		    max: 100, // " 최대값
    		    title: {
    		      text: '온도(°C)'
    		    }
    		  },

    		  credits: { //그래프 하단에 Highcharts.com 출력 여부 결정
    		    enabled: false
    		  },

    		  series: [{
    		    name: 'Oee',
    		    data: [50.2],    // 새로고침 했을 때 처음 나타나는 데이터(서버에서 받아야 하는 데이터)
    		    dataLabels: {
    		      format:
    		        '<div style="text-align:center">' +
    		        '<span class="chart-title-span">{y}</span><br/>' + //css 클래스로 값 출력 위치 조정
    		        '</div>'
    		    }
    		  }]

    		}));

    		// 재고율 Inventory Shipment Ratio
    		var chartISR = Highcharts.chart('container-isr', Highcharts.merge(gaugeOptions, {
    		  yAxis: {
    		    min: 0,
    		    max: 100,
    		    title: {
    		      text: '습도(%)'
    		    }
    		  },

    		  credits: {
    		    enabled: false
    		  },

    		  series: [{
    		    name: '재고율%',
    		    data: [76.3],
    		    dataLabels: {
    		      format:
    		        '<div style="text-align:center">' +
    		        '<span class="chart-title-span">{y:.1f}</span><br/>' + 
    		        '</div>'
    		    }
    		  }]

    		}));

    		// 가동률 Operating Ratio
    		var chartOR = Highcharts.chart('container-or', Highcharts.merge(gaugeOptions, {
    		  yAxis: {
    		    min: 0,
    		    max: 100,
    		    title: {
    		      text: 'co2(ppm)'
    		    }
    		  },

    		  credits: {
    		    enabled: false
    		  },

    		  series: [{
    		    name: '가동률%',
    		    data: [73.8], 
    		    dataLabels: {
    		      format:
    		        '<div style="text-align:center">' +
    		        '<span class="chart-title-span">{y:.1f}</span><br/>' +
    		        '</div>'
    		    }
    		  }]

    		}));

    		// 품질지수 Quality Index
    		var chartOR = Highcharts.chart('container-qi', Highcharts.merge(gaugeOptions, {
    		  yAxis: {
    		    min: 0,
    		    max: 100,
    		    title: {
    		      text: '품질지수%'
    		    }
    		  },

    		  credits: {
    		    enabled: false
    		  },

    		  series: [{
    		    name: '품질지수%',
    		    data: [89.2], 
    		    dataLabels: {
    		      format:
    		        '<div style="text-align:center">' +
    		        '<span class="chart-title-span">{y:.1f}</span><br/>' +
    		        '</div>'
    		    }
    		  }]

    		}));

    		// 난수로 값을 실시간으로 생성하여 애니메이션 효과 부여(없어도 무방)
    		setInterval(function () {
    		  // OEE
    		  var point,
    		    newVal,
    		    inc;

    		  if (chartOEE) {
    		    point = chartOEE.series[0].points[0];
    		    inc = Math.round((Math.random() - 0.5) * 100);
    		    newVal = point.y + inc;

    		    if (newVal < 0 || newVal > 100) {
    		      newVal = point.y - inc;
    		    }

    		    point.update(Math.round(newVal));
    		  }

    		  // ISR
    		  if (chartISR) {
    		    point = chartISR.series[0].points[0];
    		    inc = Math.round((Math.random() - 0.5) * 100);
    		    newVal = point.y + inc;

    		    if (newVal < 0 || newVal > 100) {
    		      newVal = point.y - inc;
    		    }

    		    point.update(newVal);
    		  }
    		}, 2000);

    	
    })
    
    </script>

</body>

</html>