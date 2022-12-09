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
    <script src="https://kit.fontawesome.com/db6222330e.js" crossorigin="anonymous"></script>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- ���̵�� -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
				
				<%@ include file="../fix/sidebar.jsp" %>
	
        </ul>
        <!-- ���̵�� �� -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
						<%@ include file="../fix/header.jsp" %>
                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">�ǽð� ����</h1>
                    </div>
                    
                    <div class="row">
                    	
                    	<div class="col-xl-12 col-md-6 mb-4 text-center">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class=" font-weight-bold text-primary text-uppercase mb-1 d-inline">
                                                <i class="fa-solid fa-location-dot"></i>
                                                <div id="location_name" class="font-weight-bold text-primary h6 text-uppercase mb-1 d-inline-block">
                                                				������ 
                                                </div>
                                                </div>
                                        </div>
                                        <div class="col-auto">
                                        	<i class="fa-regular fa-compass fa-2x fs-6"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-xl-3 col-md-6 mb-4 text-center">
                            <div class="card border-left-danger shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="h6 font-weight-bold text-primary text-uppercase mb-1">
                                                �µ�</div>
                                            <div id="temp_value" class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa-solid fa-temperature-low fa-2x fs-6"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-xl-3 col-md-6 mb-4 text-center">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="h6 font-weight-bold text-primary text-uppercase mb-1">
                                                ����</div>
                                            <div id="hum_value" class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa-solid fa-droplet fa-2x fs-6"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        
                        <div class="col-xl-3 col-md-6 mb-4 text-center">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="h6 font-weight-bold text-primary text-uppercase mb-1">
                                                �ٶ�</div>
                                            <div id="wind_value" class="h5 mb-0 font-weight-bold text-gray-800"></div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa-solid fa-wind fa-2x fs-6"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        
                        
                        <div class="col-xl-3 col-md-6 mb-4 text-center">
                            <div class="card border-left-dark shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="h6 font-weight-bold text-primary text-uppercase mb-1">
                                                1�ð� ������</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">--</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa-solid fa-cloud-rain fa-2x fs-6"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        
                        <div class="col-xl-6 col-md-6 mb-4 text-center">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="h6 font-weight-bold text-primary text-uppercase mb-1">
                                                ����</div>
                                            <div id="sunrise_time_value" class="h5 mb-0 font-weight-bold text-gray-800">--</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa-regular fa-sun fa-2x fs-6"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="col-xl-6 col-md-6 mb-4 text-center">
                            <div class="card border-left-dark shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="h6 font-weight-bold text-primary text-uppercase mb-1">
                                                �ϸ�</div>
                                            <div id="sunset_time_value" class="h5 mb-0 font-weight-bold text-gray-800">--</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fa-solid fa-sun fa-2x fs-6"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        
                    </div>
                    
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">���� ����</h1>
                    </div>
                    
                </div>
            </div>

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
				<%@ include file="../fix/footer.jsp" %>
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
    	
        function SunRiseOfSunSet(lon, lat) {
	        let url = 'https://apis.data.go.kr/B090041/openapi/service/RiseSetInfoService/getLCRiseSetInfo';
	        const serviceKey = 'e7Z1AnD0iQgs%2BUq9QLRT5V6SiB%2B97Z9GX%2BLTjzkxSMC%2BsEl0wr2Z3aBcTs12JHueD8hVr%2FSUXA5RYPesf8tLow%3D%3D';
	        const date = year + "" + month + "" + day;
	        url = url + "?serviceKey=" + serviceKey + "&locdate=" + date + "&longitude=" + lon + "&latitude=" + lat + "&dnYn=Y";

	        $.ajax({
	            url: url,
	            dataType: "json",
	            type: "GET",
	            async: "false",
	            success: function (data) {
	                console.log(data)
	                let sunrise = data.response.body.items.item.sunrise;
	                let sunset = data.response.body.items.item.sunset
	                let sunrise_hours = sunrise.substring(0, 2);
	                let sunrise_minutes = sunrise.substring(2, 4);
	                let sunset_hours = sunset.substring(0, 2);
	                let sunset_minutes = sunset.substring(2, 4);
	
	                $("#sunrise_time_value").html(sunrise_hours + "��" + sunrise_minutes + "��");
	                $("#sunset_time_value").html(sunset_hours + "��" + sunset_minutes + "��");
            }
        })
    }
    	
    	
    	
    	const serviceKey = 'e7Z1AnD0iQgs%2BUq9QLRT5V6SiB%2B97Z9GX%2BLTjzkxSMC%2BsEl0wr2Z3aBcTs12JHueD8hVr%2FSUXA5RYPesf8tLow%3D%3D';
        
    	const numOfRows = '60'; //row
        
    	const pageNo = '1'; //������
        
    	let today = new Date();
        
    	let week = ['��', '��', 'ȭ', '��', '��', '��', '��'];
        
    	let year = today.getFullYear();
       
    	let month = today.getMonth() + 1;
        
    	let day = today.getDate();
        
    	let hours = today.getHours();
       
    	let minutes = today.getMinutes();
    	
        $(document).ready(function () {
            
        	if (minutes < 30) {
                hours = hours - 1;
                minutes = 40;
            }
        	
            if (hours < 10) {
                hours = '0' + hours;
            }
            
            if (month < 10) {
                month = '0' + month;
            }
            
            if (day < 10) {
                day = '0' + day;
            }
            
            console.log(hours + "" + minutes);
            
            askForCoords();

            $("#main_data_show").show();
            $("#weather_show").hide();
            $("#notice_show").hide();
            const date = new Date();
            $("#sysDate").html(date.toLocaleString('ko-kr'));
        });
        
    	
    	
    	$("#loginPage_btn").click(function(){
    		window.location.href = "${pageContext.request.contextPath}/login";
    	});
    	
    	$("#logout_btn").click(function(){
    		window.location.href = "${pageContext.request.contextPath}/logout";
    	})
    	
    	function askForCoords() {//��ġ�� ���� ��ġ�� �����ɴϴ�.
        	navigator.geolocation.getCurrentPosition(handleGeoSuccess);
    }

    	function handleGeoSuccess(position) {//������ ���� �浵�� ���� latitude�� longutude�� ���� ����
	        latitude = position.coords.latitude; //latitude: ����
	        longitude = position.coords.longitude; //longitude: �浵
	        console.log(latitude);
	        console.log(longitude);
	        toXYData(latitude, longitude);
	        SunRiseOfSunSet(longitude,latitude);
    	}
    	
    	function toXYData(lat, lon) {
            dfs_xy_conv("toXY", lat, lon);
        }
    	
    	function dfs_xy_conv(code, v1, v2) {
            var RE = 6371.00877; // ���� �ݰ�(km)
            var GRID = 5.0; // ���� ����(km)
            var SLAT1 = 30.0; // ���� ����1(degree)
            var SLAT2 = 60.0; // ���� ����2(degree)
            var OLON = 126.0; // ������ �浵(degree)
            var OLAT = 38.0; // ������ ����(degree)
            var XO = 43; // ������ X��ǥ(GRID)
            var YO = 136; // ��1���� Y��ǥ(GRID)
            var DEGRAD = Math.PI / 180.0;
            var RADDEG = 180.0 / Math.PI;

            var re = RE / GRID;
            var slat1 = SLAT1 * DEGRAD;
            var slat2 = SLAT2 * DEGRAD;
            var olon = OLON * DEGRAD;
            var olat = OLAT * DEGRAD;

            var sn = Math.tan(Math.PI * 0.25 + slat2 * 0.5) / Math.tan(Math.PI * 0.25 + slat1 * 0.5);
            sn = Math.log(Math.cos(slat1) / Math.cos(slat2)) / Math.log(sn);
            var sf = Math.tan(Math.PI * 0.25 + slat1 * 0.5);
            sf = Math.pow(sf, sn) * Math.cos(slat1) / sn;
            var ro = Math.tan(Math.PI * 0.25 + olat * 0.5);
            ro = re * sf / Math.pow(ro, sn);
            var rs = {};
            if (code == "toXY") {
                rs['lat'] = v1;
                rs['lng'] = v2;
                var ra = Math.tan(Math.PI * 0.25 + (v1) * DEGRAD * 0.5);
                ra = re * sf / Math.pow(ra, sn);
                var theta = v2 * DEGRAD - olon;
                if (theta > Math.PI) theta -= 2.0 * Math.PI;
                if (theta < -Math.PI) theta += 2.0 * Math.PI;
                theta *= sn;
                rs['x'] = Math.floor(ra * Math.sin(theta) + XO + 0.5);
                rs['y'] = Math.floor(ro - ra * Math.cos(theta) + YO + 0.5);
                nx = Math.floor(ra * Math.sin(theta) + XO + 0.5);
                ny = Math.floor(ro - ra * Math.cos(theta) + YO + 0.5);
                console.log(nx);
                console.log(ny);
            } else {
                rs['x'] = v1;
                rs['y'] = v2;
                var xn = v1 - XO;
                var yn = ro - v2 + YO;
                ra = Math.sqrt(xn * xn + yn * yn);
                if (sn < 0.0) -ra;
                var alat = Math.pow((re * sf / ra), (1.0 / sn));
                alat = 2.0 * Math.atan(alat) - Math.PI * 0.5;

                if (Math.abs(xn) <= 0.0) {
                    theta = 0.0;
                } else {
                    if (Math.abs(yn) <= 0.0) {
                        theta = Math.PI * 0.5;
                        if (xn < 0.0) -theta;
                    } else theta = Math.atan2(xn, yn);
                }
                var alon = theta / sn + olon;
                rs['lat'] = alat * RADDEG;
                rs['lng'] = alon * RADDEG;
            }
            //�� , �� , ��
            const date = year + "" + month + "" + day;
            //�ð�
            const time = hours + "" + minutes;
            console.log(date , time);
            //�ʴܱ� ��Ȳ ��û URL
            let url = 'https://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtNcst'
                + "?serviceKey=" + serviceKey + "&numOfRows=" + numOfRows + "&dataType=json" + "&pageNo=" + pageNo
                + "&base_date=" + date + "&base_time=" + time + "&nx=" + nx + "&ny=" + ny;
            $.ajax({
                url: url,
                dataType: "json",
                type: "GET",
                async: "false",
                success: function (data) {
                    console.log(data);
                    let tempValue;
                    let humValue;
                    let windValue;
                    let vecValue;
                    let vecDirection;
                    let ptyValue;
                    let ptyText;
                    for (let i = 0; i < data.response.body.items.item.length; i++) {
                        if (data.response.body.items.item[i].category == 'T1H') {
                            tempValue = data.response.body.items.item[i].obsrValue;
                        }
                        if (data.response.body.items.item[i].category == 'REH') {
                            humValue = data.response.body.items.item[i].obsrValue;
                        }
                        if (data.response.body.items.item[i].category == 'WSD') {
                        	windValue = data.response.body.items.item[i].obsrValue;
                        }
                        if (data.response.body.items.item[i].category == 'VEC') {
                        	vecValue = data.response.body.items.item[i].obsrValue;
                        }
                        if (data.response.body.items.item[i].category == 'PTY') {
                        	ptyValue = data.response.body.items.item[i].obsrValue;
                        }
                    }
                    
                    if(vecValue < 45){
                    	vecDirection = "��";
                    }else if(vecValue < 90){
                    	vecDirection = "�ϵ�";
                    }else if(vecValue < 135){
                    	vecDirection = "��";
                    }else if(vecValue < 180){
                    	vecDirection = "����";
                    }else if(vecValue < 225){
                    	vecDirection = "��";
                    }else if(vecValue < 270){
                    	vecDirection = "����";
                    }else if(vecValue < 315){
                    	vecDirection = "��";
                    }else if(vecValue < 360){
                    	vecDirection = "�ϼ�";
                    }
                    
                    if(ptyValue = 0){
                    	ptyText = "--";
                    }else if(ptyValue = 1){
                    	ptyText = "��";
                    }else if(ptyValue = 2){
                    	ptyText = "��/��";
                    }else if(ptyValue = 3){
                    	ptyText = "��";
                    }
                    

                    
                    $("#temp_value").html(tempValue + "��C");
                    $("#hum_value").html(humValue + "%");
                    $("#wind_value").html(vecDirection +" "+windValue + "m/s");
                    	
                }
            })
            
            $.ajax({
                url: "${pageContext.request.contextPath}/weather/SelectWeatherLocationName",
                dataType: "json",
                data : {
                	nx : nx,
                	ny : ny
                },
                type: "GET",
                async: "false",
                success: function (data) {
                    console.log(data);
                    
                    const locationName = data.location.Area +" "+ data.location.City +" "+ data.location.RegionName;
                    
                    
                    $("#location_name").html(locationName);
                }
            })
            

            
            
            
        }
    	
    	
    })
    
    
    
    </script>

</body>

</html>