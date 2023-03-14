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
            <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
              aria-expanded="false">
              	레시피 찾기 <i class="ti-angle-down ml-1"></i>
            </a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="index-full.html">Homepage Full Width</a>
              
              <a class="dropdown-item" href="index-full-left.html">Homepage Full With Left Sidebar</a>
              
              <a class="dropdown-item" href="index-full-right.html">Homepage Full With Right Sidebar</a>
              
              <a class="dropdown-item" href="index-list.html">Homepage List Style</a>
              
              <a class="dropdown-item" href="index-list-left.html">Homepage List With Left Sidebar</a>
              
              <a class="dropdown-item" href="index-list-right.html">Homepage List With Right Sidebar</a>
              
              <a class="dropdown-item" href="index-grid.html">Homepage Grid Style</a>
              
              <a class="dropdown-item" href="index-grid-left.html">Homepage Grid With Left Sidebar</a>
              
              <a class="dropdown-item" href="index-grid-right.html">Homepage Grid With Right Sidebar</a>
              
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
              aria-expanded="false">
              About <i class="ti-angle-down ml-1"></i>
            </a>
            <div class="dropdown-menu">
              
              <a class="dropdown-item" href="about-me.html">About Me</a>
              
              <a class="dropdown-item" href="about-us.html">About Us</a>
              
            </div>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="contact.html">Contact</a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
              aria-expanded="false">Pages <i class="ti-angle-down ml-1"></i>
            </a>
            <div class="dropdown-menu">
              
              <a class="dropdown-item" href="author.html">Author</a>
              
              <a class="dropdown-item" href="author-single.html">Author Single</a>

              <a class="dropdown-item" href="advertise.html">Advertise</a>
              
              <a class="dropdown-item" href="post-details.html">Post Details</a>
              
              <a class="dropdown-item" href="post-elements.html">Post Elements</a>
              
              <a class="dropdown-item" href="tags.html">Tags</a>

              <a class="dropdown-item" href="search-result.html">Search Result</a>

              <a class="dropdown-item" href="search-not-found.html">Search Not Found</a>
              
              <a class="dropdown-item" href="privacy-policy.html">Privacy Policy</a>
              
              <a class="dropdown-item" href="terms-conditions.html">Terms Conditions</a>

              <a class="dropdown-item" href="404.html">404 Page</a>
              
            </div>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="shop.html">Shop</a>
          </li>
        </ul>
       <div class="loginDiv">
       		<c:choose>
       			<c:when test="<%=nickName == null %>">
					<%=nickName %>
					<button class="loginFormBtn" id="loginFormBtn" type="button" onclick="location.href='${pageContext.request.contextPath}/login/loginForm'"><img class="btnImg" src="${pageContext.request.contextPath }/resources/images/loginBtn.png"></button>		       			
       			</c:when>
       			<c:otherwise>
					<button class="loginBtn" type="button" onclick="location.href='${pageContext.request.contextPath}/member/myPage'"><img class="btnImg1" src="${pageContext.request.contextPath }/resources/images/loginChef.png"></button>
					<button class="loginBtn" type="button" onclick="location.href='${pageContext.request.contextPath}/logout/logout'"><img class="btnImg" src="${pageContext.request.contextPath }/resources/images/logoutBtn.png"></button>     			
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

