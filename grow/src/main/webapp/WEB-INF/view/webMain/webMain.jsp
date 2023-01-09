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
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark" id="mainNav">
            	<%@ include file="./fix/header.jsp" %>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container">
                <div class="masthead-subheading">Welcome to Master balgrow!</div>
                <div class="masthead-heading text-uppercase">혁신적인 스마트팜 시스템</div>
            </div>
        </header>
        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">서비스 소개</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
                <div class="row text-center">
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">W-LINK</h4>
                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fa-solid fa-camera fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">M-LINK</h4>
                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            
                            <i class="fa-solid fa-temperature-half fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">C-LINK</h4>
                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                    </div>
                </div>
                <div class="row text-center" style="margin-top: 30px;">
                    <div class="col-md-6">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-shopping-cart fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">S-LINK</h4>
                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                    </div>
                    <div class="col-md-6">
                        <span class="fa-stack fa-4x">
                            <i class="fas fa-circle fa-stack-2x text-primary"></i>
                            <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
                        </span>
                        <h4 class="my-3">A-LINK</h4>
                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>
                    </div>
                </div>
            </div>
        </section>
        
        <!-- About-->
        <section class="page-section" id="about">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">연혁</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
                <ul class="timeline">
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/resources/webMain/assets/img/about/1.jpg" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2018</h4>
                                <h6 class="subheading">주식회사 따솜 설립-농업용 보온재 판매업</h6>
                            </div>
                            <div class="timeline-body"><p class="text-muted">공백</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/resources/webMain/assets/img/about/2.jpg" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2019</h4>
                                <h6 class="subheading">중소벤처기업 - 여성기업인증</h6>
                                <h6 class="subheading">시민일보 등재 - 스마트팜 장비로 아이스플랜트 재배</h6>
                                <h6 class="subheading">서울와이어 등재 - 지능형 스마트팜 장비</h4>
                                <h6 class="subheading">주식회사 마스터벨그로우 사명 변경 - 시스템 소프트웨어 업종</h6>
                                <h6 class="subheading">Innogreen(벨기에 농업 컨설팅 그룹) 업무협약 - 기술자문 & 해외 영업 파트너</h6>
                                <h6 class="subheading">한국산업기술진흥협회 - 기업부설연구소 인증 및 설립</h6>
                                <h6 class="subheading">써브스트라투스코리아(국내 농업 컨설팅 그룹) 업무협약 - 기술자문&국내 영업 파트너</h6>
                            </div>
                            <div class="timeline-body"><p class="text-muted">공백</p></div>
                        </div>
                    </li>
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/resources/webMain/assets/img/about/3.jpg" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2020 ~ 2021</h4>
                                <h6 class="subheading">CH20 프로그램 개발 완료</h6>
                                <h6 class="subheading">인체용 발열감지 시스템(CH20-S) 개발완료</h6>
                                <h6 class="subheading">돈사용 화재감시 시스템 개발완료 / CH20특허 출원</h6>
                                <h6 class="subheading">농업용 함수율 측정장치 개발완료</h6>
                                <h6 class="subheading">CH20 단동형 간편 스마트팜 개발 착수</h6>
                                <h6 class="subheading">CH20 클라우드형 스마트팜 플랫폼 구축(24년 개발 완료 예정)</h6>
                                <h6 class="subheading">온실 내/외부 환경 측정 프로그램 개발 완료</h6>
                                <h6 class="subheading">스마트 수조 내외부 환경 모니터링 및 제어 시스템 개발 착수</h6>
                            </div>
							<div class="timeline-body"><p class="text-muted">공백</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/resources/webMain/assets/img/about/4.jpg" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2022</h4>
                                <h6 class="subheading">단동형 온실 환경제어기 개발 완료</h6>
                                <h6 class="subheading">미기상 환경 센서 클라우드 서비스 개시</h6>
                                <h6 class="subheading">삼양옵틱스 업무협약(MOU)체결</h6>
                            </div>
							<div class="timeline-body"><p class="text-muted">공백</p></div>	
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image">
                            <h4>
                                Be Part
                                <br />
                                Of Our
                                <br />
                                Story!
                            </h4>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
        
        <!-- Footer-->
        <footer class="footer py-4">
            <%@ include file="./fix/footer.jsp" %>
        </footer>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        
    </body>
</html>
