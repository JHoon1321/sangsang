<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- 탑 넣기 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:choose>
	<c:when test="${!empty sessionScope.hId }">
		<%@ include file="../inc/new_top_host.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.mId }">
		<%@ include file="../inc/new_top_user.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.adId }">
		<%@ include file="../inc/new_top_admin.jsp"%>
	</c:when>
	<c:otherwise>
		<%@ include file="../inc/new_top_user.jsp"%>
	</c:otherwise>
</c:choose>
<!-- 탑 완료 -->
<!-- Hero -->
        <!-- Hero -->
        <section class="section section-header bg-primary overlay-primary text-white pb-11" data-background="../assets/img/team-hero.jpg">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-xl-7 text-center">
                        <h1 class="display-2 mb-3">상상공방 고객센터</h1>
                        <p class="lead">안녕하세요! 상상공방의 고객센터입니다.<br> 문의사항이 있으시면 언제든지 편하게 연락주세요!</p>        
                    </div>
                </div>
            </div>
        </section>
        <!-- Section -->
        <!-- 지도 api -->
        <div class="section py-0">
            <div class="container mt-n10">
                <div class="row">
                    <div class="col-12">
                        <iframe class="map rounded" id="gmap_canvas" src="https://maps.google.com/maps?q=san%20francisco&t=&z=8&ie=UTF8&iwloc=&output=embed"></iframe>
                    </div>
                </div>
            </div>
        </div>
        <!-- 지도 api -->
        <!-- Section -->
        <section class="section section-lg pt-6">
            <div class="container">
                <div class="row justify-content-center mb-5 mb-lg-6">
                    <div class="col-12 ">
                        <div class="row justify-content-center mt-4 mt-lg-5">
                                    <div class="col-12">
                                        <!-- Contact Card -->
                                        <div class="card border-0 p-0 p-md-5">
                                            <div class="card-header text-center p-0 pb-5">
                                                <br><br><br><h2>Want to work with us?</h2>
                                                <p>Cool! Let’s talk about your project</p>
                                            </div><hr>
                                          <!--   <div class="card-body p-0">
                                                <form action="#" method="post">
                                                    Form
                                                    <div class="form-group">
                                                        <label for="name">Your Name</label>
                                                        <div class="input-group mb-4">
                                                            <div class="input-group-prepend">
                                                                <span class="input-group-text"><span class="far fa-user-circle"></span></span>
                                                            </div>
                                                            <input class="form-control" id="name" placeholder="e.g. Bonnie Green" type="text" aria-label="contact name input" required>
                                                        </div>
                                                    </div>
                                                    Form
                                                    <div class="form-group">
                                                        <label for="email">Your Email</label>
                                                        <div class="input-group mb-4">
                                                            <div class="input-group-prepend">
                                                                <span class="input-group-text"><span class="far fa-envelope"></span></span>
                                                            </div>
                                                            <input class="form-control" id="email" placeholder="example@company.com" type="email" aria-label="contact email input">
                                                        </div>
                                                    </div>
                                                    Form
                                                    <div class="form-group">
                                                        <label for="message">Your message</label>
                                                        <textarea class="form-control" placeholder="Enter your message..." id="message" rows="4"></textarea>
                                                    </div>
                                                    End of Form
                                                    
                                                    <div style="text-color:white">
                                                    <button type="submit" class="btn btn-block rounded btn-secondary"><a href="mailto:﻿csb9762@gmail.com">Send message</a></button>
                                                </div>
                                                </form>
                                            </div> -->
                                        </div>
                                        <!-- End of Contact Card -->
                                    </div>
                                </div>
                        <!-- Contact Card -->
                        <div class="card border-0 p-2 p-md-3">
                            <div class="card-body px-0">
                                <div class="row">
                                    <div class="col-sm-6 col-md-4 text-center">
                                        <!-- Visit Box -->
                                        <div class="icon-box mb-4">
                                            <div class="icon icon-dark mb-4">
                                                <span class="fas fa-map-marker-alt"></span>
                                            </div>
                                            <h2 class="h5 icon-box-title">Visit us</h2>
                                            <span>
                                                서울특별시 서초구<br> 서초대로 309 <br>장안빌딩 4층
                                            </span>
                                        </div>
                                        <!-- End of Visit Box -->
                                    </div>
                                    <div class="col-sm-6 col-md-4 text-center d-sm-none d-md-block">
                                        <!-- Call Box -->
                                        <div class="icon-box mb-4">
                                            <div class="icon icon-dark mb-4">
                                                <span class="fas fa-phone-volume"></span>
                                            </div>
                                            <h2 class="h5 icon-box-title">Call</h2>
                                            <span>010-3673-0143</span>
                                            <div class="text-small text-gray">
                                                Mon - Fri<br>9:30am - 6:30pm
                                            </div>
                                        </div>
                                        <!-- End of Call Box -->
                                    </div>
                                    <div class="col-sm-6 col-md-4 text-center">
                                        <!-- Email Box -->
                                        <div class="icon-box mb-4">
                                            <div class="icon icon-dark mb-4">
                                                <span class="far fa-paper-plane"></span>
                                            </div>
                                            <h2 class="h5 icon-box-title">Email</h2>
                                            <a href="mailto:﻿csb9762@gmail.com"><br>csb9762@gamil.com</a>
                                        </div>
                                        <br><br>
                                        <!-- End of Email Box -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End of Contact Card -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 text-center mb-5">
                        <h2>Our support team</h2>
                    </div>
                    <!-- 강유빈 -->
                    <div class="col-12 col-md-6 col-lg-4 mb-5 mb-lg-0">
                        <div class="card text-center">
                            <div class="card-header bg-white">
                                <img src="../assets/img/team/profile-picture-2.jpg" class="card-img-top rounded shadow border-0" alt="Christopher Avatar">
                            </div>
                            <div class="card-body">
                                <span class="card-subtitle text-gray font-weight-normal">Sales</span>
                                <h3 class="h4 card-title mt-2">강유빈</h3>
                                <ul class="list-unstyled d-flex justify-content-center mt-3">
                                    <li>
                                        <a href="#" target="_blank" aria-label="facebook social link" class="icon icon-sm icon-facebook mr-3">
                                            <span class="fab fa-facebook-f"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="twitter social link" class="icon icon-sm icon-twitter mr-3">
                                            <span class="fab fa-twitter"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="slack social link" class="icon icon-sm icon-slack mr-3">
                                            <span class="fab fa-slack-hash"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="dribbble social link" class="icon icon-sm icon-dribbble mr-3">
                                            <span class="fab fa-dribbble"></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- 오정훈 -->
                    <div class="col-12 col-md-6 col-lg-4 mb-5 mb-lg-0">
                        <div class="card text-center">
                            <div class="card-header bg-white">
                                <img src="../assets/img/team/profile-picture-3.jpg" class="card-img-top rounded shadow border-0" alt="Bonnie Avatar">
                            </div>
                            <div class="card-body">
                                <span class="card-subtitle text-gray font-weight-normal">Marketing</span>
                                <h3 class="h4 card-title mt-2">오정훈</h3>
                                <ul class="list-unstyled d-flex justify-content-center mt-3">
                                    <li>
                                        <a href="#" target="_blank" aria-label="facebook social link" class="icon icon-sm icon-facebook mr-3">
                                            <span class="fab fa-facebook-f"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="twitter social link" class="icon icon-sm icon-twitter mr-3">
                                            <span class="fab fa-twitter"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="slack social link" class="icon icon-sm icon-slack mr-3">
                                            <span class="fab fa-slack-hash"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="dribbble social link" class="icon icon-sm icon-dribbble mr-3">
                                            <span class="fab fa-dribbble"></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- 배재영 -->
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="card text-center">
                            <div class="card-header bg-white">
                                <img src="../assets/img/team/profile-picture-4.jpg" class="card-img-top rounded shadow border-0" alt="Neil Avatar">
                            </div>
                            <div class="card-body">
                                <span class="card-subtitle text-gray font-weight-normal">Invoice</span>
                                <h3 class="h4 card-title mt-2">배재영</h3>
                                <ul class="list-unstyled d-flex justify-content-center mt-3">
                                    <li>
                                        <a href="#" target="_blank" aria-label="facebook social link" class="icon icon-sm icon-facebook mr-3">
                                            <span class="fab fa-facebook-f"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="twitter social link" class="icon icon-sm icon-twitter mr-3">
                                            <span class="fab fa-twitter"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="slack social link" class="icon icon-sm icon-slack mr-3">
                                            <span class="fab fa-slack-hash"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="dribbble social link" class="icon icon-sm icon-dribbble mr-3">
                                            <span class="fab fa-dribbble"></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 text-center mb-2">
                        <br>
                    </div>
                    <!-- 최원정 -->
                    <div class="col-12 col-md-6 col-lg-4 mb-5 mb-lg-0">
                        <div class="card text-center">
                            <div class="card-header bg-white">
                                <img src="../assets/img/team/profile-picture-2.jpg" class="card-img-top rounded shadow border-0" alt="Christopher Avatar">
                            </div>
                            <div class="card-body">
                                <span class="card-subtitle text-gray font-weight-normal">Sales</span>
                                <h3 class="h4 card-title mt-2">최원정</h3>
                                <ul class="list-unstyled d-flex justify-content-center mt-3">
                                    <li>
                                        <a href="#" target="_blank" aria-label="facebook social link" class="icon icon-sm icon-facebook mr-3">
                                            <span class="fab fa-facebook-f"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="twitter social link" class="icon icon-sm icon-twitter mr-3">
                                            <span class="fab fa-twitter"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="slack social link" class="icon icon-sm icon-slack mr-3">
                                            <span class="fab fa-slack-hash"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="dribbble social link" class="icon icon-sm icon-dribbble mr-3">
                                            <span class="fab fa-dribbble"></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- 최수빈 -->
                    <div class="col-12 col-md-6 col-lg-4 mb-5 mb-lg-0">
                        <div class="card text-center">
                            <div class="card-header bg-white">
                                <img src="../assets/img/team/profile-picture-2.jpg" class="card-img-top rounded shadow border-0" alt="Christopher Avatar">
                            </div>
                            <div class="card-body">
                                <span class="card-subtitle text-gray font-weight-normal">Sales</span>
                                <h3 class="h4 card-title mt-2">최수빈</h3>
                                <ul class="list-unstyled d-flex justify-content-center mt-3">
                                    <li>
                                        <a href="#" target="_blank" aria-label="facebook social link" class="icon icon-sm icon-facebook mr-3">
                                            <span class="fab fa-facebook-f"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="twitter social link" class="icon icon-sm icon-twitter mr-3">
                                            <span class="fab fa-twitter"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="slack social link" class="icon icon-sm icon-slack mr-3">
                                            <span class="fab fa-slack-hash"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="dribbble social link" class="icon icon-sm icon-dribbble mr-3">
                                            <span class="fab fa-dribbble"></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                    <!-- 김준영 -->
                    <div class="col-12 col-md-6 col-lg-4 mb-5 mb-lg-0">
                        <div class="card text-center">
                            <div class="card-header bg-white">
                                <img src="../assets/img/team/profile-picture-2.jpg" class="card-img-top rounded shadow border-0" alt="Christopher Avatar">
                            </div>
                            <div class="card-body">
                                <span class="card-subtitle text-gray font-weight-normal">Sales</span>
                                <h3 class="h4 card-title mt-2">김준영</h3>
                                <ul class="list-unstyled d-flex justify-content-center mt-3">
                                    <li>
                                        <a href="#" target="_blank" aria-label="facebook social link" class="icon icon-sm icon-facebook mr-3">
                                            <span class="fab fa-facebook-f"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="twitter social link" class="icon icon-sm icon-twitter mr-3">
                                            <span class="fab fa-twitter"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="slack social link" class="icon icon-sm icon-slack mr-3">
                                            <span class="fab fa-slack-hash"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" aria-label="dribbble social link" class="icon icon-sm icon-dribbble mr-3">
                                            <span class="fab fa-dribbble"></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           
        </section>
      
<c:choose>
	<c:when test="${!empty sessionScope.hId }">
		<%@ include file="../inc/bottom_host.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.mId }">
		<%@ include file="../inc/bottom.jsp"%>
	</c:when>
	<c:when test="${!empty sessionScope.adId }">
		<%@ include file="../inc/bottom_admin.jsp"%>
	</c:when>
	<c:otherwise>
		<%@ include file="../inc/bottom.jsp"%>
	</c:otherwise>
</c:choose>
<!-- 바텀 완료 -->