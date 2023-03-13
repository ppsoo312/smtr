<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/property.jsp" %>
<%@ include file="../layout/header.jsp" %>
<div class="loginForm"></div>
<section class="section-sm2">
   <div class="container">
     <div class="row align-items-center justify-content-center">
       <div class="col-lg-5 col-md-6 order-2 order-md-1">
         <div class="pr-lg-4 pr-0">
            <h2 class="mb-3">나만의 레시피 공유<br>다른 요리사 레시피 습득</h2>
            <p>회원가입을 통한 다른 요리사 레시피 저장 언제든 편하게 열람~<br>나의 요리도 여러 사람과 공유하여 인기도 얻기</p>
         </div>
       </div>
       <div class="col-lg-5 col-md-6 mb-4 mb-md-0 order-1 order-md-2">
         <img class="img-fluid w-100" src="${pageContext.request.contextPath }/resources/images/loginImg.png">
       </div>
     </div>
   </div>
</section>
<section class="section-sm pt-0">
   <div class="container">
      <div class="row justify-content-around align-items-center">
         <div class="col-lg-10 mb-5 text-center">
            <h2>로그인 종류</h2>
         </div>
      </div>
      <div class="row justify-content-center">
         <div class="col-xl-10 col-lg-12">
            <div class="row no-gutters justify-content-center pricing-wrapper shadow rounded bg-white">
               <div class="col-lg-4 pricing-item">
                  <div class="card shadow-none rounded-0">
                     <h3>KAKAO <br> LOGIN</h3>
                     <p>카카오톡으로 로그인하기</p>
                     <div class="price d-flex align-items-center">
                        <img src="${pageContext.request.contextPath }/resources/images/kakaoLogin.png" style="width: 120px">
                     </div>
                     <div class="card-footer bg-transparent border-0 p-0 mt-4">
                        <button type="button" name="loginSelect" id="kakao_login"class="btn btn-outline-primary">kakao_Login</button>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 pricing-item">
                  <div class="card shadow-none rounded-0">
                     <h3>ShowMeTheRecipe <br> LOGIN</h3>
                     <p>ShowMeTheRecipe로 로그인하기</p>
                     <div class="price d-flex align-items-center">
                     	<img src="${pageContext.request.contextPath }/resources/images/smtr_mainRogo.png" style="width: 120px">
                     </div>
                    
                     <div class="card-footer bg-transparent border-0 p-0 mt-4">
                        <button type="button" name="loginSelect" id="smtr_login"class="btn btn-outline-primary">smtr_Login</button>
                        <button type="button" name="loginSelect" id="smtr_join"class="btn btn-outline-primary">회원가입</button>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 pricing-item">
                  <div class="card shadow-none rounded-0">
                     <h3>Naver <br> LOGIN</h3>
                     <p>네이버로 로그인하기</p>
                     <div class="price d-flex align-items-center">
                        <img src="${pageContext.request.contextPath }/resources/images/naverLogin.png" style="width: 120px">
                     </div>
                     <div class="card-footer bg-transparent border-0 p-0 mt-4">
                        <button type="button" name="loginSelect" id="naver_login"class="btn btn-outline-primary">naver_Login</button>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>

<script src="${pageContext.request.contextPath}/resources/js/login.js"></script>