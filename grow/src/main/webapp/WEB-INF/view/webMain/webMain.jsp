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
                <div class="masthead-heading text-uppercase">�������� ����Ʈ�� �ý���</div>
            </div>
        </header>
        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">���� �Ұ�</h2>
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
                    <h2 class="section-heading text-uppercase">����</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
                <ul class="timeline">
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/resources/webMain/assets/img/about/1.jpg" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2018</h4>
                                <h6 class="subheading">�ֽ�ȸ�� ���� ����-����� ������ �Ǹž�</h6>
                            </div>
                            <div class="timeline-body"><p class="text-muted">����</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/resources/webMain/assets/img/about/2.jpg" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2019</h4>
                                <h6 class="subheading">�߼Һ�ó��� - �����������</h6>
                                <h6 class="subheading">�ù��Ϻ� ���� - ����Ʈ�� ���� ���̽��÷�Ʈ ���</h6>
                                <h6 class="subheading">������̾� ���� - ������ ����Ʈ�� ���</h4>
                                <h6 class="subheading">�ֽ�ȸ�� �����ͺ��׷ο� ��� ���� - �ý��� ����Ʈ���� ����</h6>
                                <h6 class="subheading">Innogreen(���⿡ ��� ������ �׷�) �������� - ����ڹ� & �ؿ� ���� ��Ʈ��</h6>
                                <h6 class="subheading">�ѱ�������������ȸ - ����μ������� ���� �� ����</h6>
                                <h6 class="subheading">��꽺Ʈ�������ڸ���(���� ��� ������ �׷�) �������� - ����ڹ�&���� ���� ��Ʈ��</h6>
                            </div>
                            <div class="timeline-body"><p class="text-muted">����</p></div>
                        </div>
                    </li>
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/resources/webMain/assets/img/about/3.jpg" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2020 ~ 2021</h4>
                                <h6 class="subheading">CH20 ���α׷� ���� �Ϸ�</h6>
                                <h6 class="subheading">��ü�� �߿����� �ý���(CH20-S) ���߿Ϸ�</h6>
                                <h6 class="subheading">����� ȭ�簨�� �ý��� ���߿Ϸ� / CH20Ư�� ���</h6>
                                <h6 class="subheading">����� �Լ��� ������ġ ���߿Ϸ�</h6>
                                <h6 class="subheading">CH20 �ܵ��� ���� ����Ʈ�� ���� ����</h6>
                                <h6 class="subheading">CH20 Ŭ������ ����Ʈ�� �÷��� ����(24�� ���� �Ϸ� ����)</h6>
                                <h6 class="subheading">�½� ��/�ܺ� ȯ�� ���� ���α׷� ���� �Ϸ�</h6>
                                <h6 class="subheading">����Ʈ ���� ���ܺ� ȯ�� ����͸� �� ���� �ý��� ���� ����</h6>
                            </div>
							<div class="timeline-body"><p class="text-muted">����</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="${pageContext.request.contextPath}/resources/webMain/assets/img/about/4.jpg" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2022</h4>
                                <h6 class="subheading">�ܵ��� �½� ȯ������� ���� �Ϸ�</h6>
                                <h6 class="subheading">�̱�� ȯ�� ���� Ŭ���� ���� ����</h6>
                                <h6 class="subheading">����ƽ�� ��������(MOU)ü��</h6>
                            </div>
							<div class="timeline-body"><p class="text-muted">����</p></div>	
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
