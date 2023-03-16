<%@page import="com.sy.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	MemberVO vo = (MemberVO)session.getAttribute("login");
	String nickName = null;
	if(vo != null){
		nickName = vo.getNickName();	
	}

%>

<!-- navigation -->
<header class="navigation fixed-top">
  <div class="container">
    <nav class="navbar navbar-expand-lg navbar-white">
      <a class="navbar-brand order-1" href="/smtr" style="padding: 0;height: 100%">
        <img class="img-fluid" width="100px" src="${pageContext.request.contextPath }/resources/images/smtr_mainRogo.png">
      </a>
      <div class="cen collapse navbar-collapse text-center order-lg-2 order-3" id="navigation" style="padding-left: 100px;">
        <ul class="navbar-nav mx-auto">
          <li class="nav-item dropdown">
            <a class="nav-link" id="recipeSearch" role="button" data-toggle="dropdown" aria-haspopup="true"
              aria-expanded="false">
              	<img src="${pageContext.request.contextPath }/resources/images/mainBtn1.png">
            </a>
           
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
              aria-expanded="false">
              <img src="${pageContext.request.contextPath }/resources/images/mainBtn2.png"><i class="ti-angle-down ml-1"></i>
            </a>
            <div class="dropdown-menu">
              
              <a class="dropdown-item" href="about-me.html">About Me</a>
              
              <a class="dropdown-item" href="about-us.html">About Us</a>
              
            </div>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="contact.html"><img src="${pageContext.request.contextPath }/resources/images/mainBtn3.png"></a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link" role="button" data-toggle="dropdown" aria-haspopup="true"
              aria-expanded="false"><img src="${pageContext.request.contextPath }/resources/images/mainBtn4.png"></a>           
          </li>
        </ul>
       <div class="loginDiv">
       		<c:choose>
       			<c:when test="<%=nickName == null %>">
					<%=nickName %>
					<button class="loginFormBtn" id="loginFormBtn" type="button" onclick="location.href='${pageContext.request.contextPath}/login/loginForm'"><img class="btnImg" src="${pageContext.request.contextPath }/resources/images/loginBtn.png"></button>		       			
       			</c:when>
       			<c:otherwise>
					<button class="loginChef" id="loginChef" type="button" onclick="location.href='${pageContext.request.contextPath}/chef/myPage'"><img class="btnImg2" src="${pageContext.request.contextPath }/resources/images/loginChef.png"></button>    			
					<button class="logoutBtn" id="logoutFormBtn" type="button" onclick="location.href='${pageContext.request.contextPath}/logout/logout'"><img class="btnImg" src="${pageContext.request.contextPath }/resources/images/logoutBtn.png"></button>
       			</c:otherwise>
       		</c:choose>
       </div>      
      </div>

      <div class="order-2 order-lg-3 d-flex align-items-center">
        <button class="navbar-toggler border-0 order-1" type="button" data-toggle="collapse" data-target="#navigation">
          <i class="ti-menu"></i>
        </button>
      </div>

    </nav>
  </div>
</header>
<!-- /navigation -->

