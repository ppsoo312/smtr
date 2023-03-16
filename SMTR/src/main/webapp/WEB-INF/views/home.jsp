<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en-us"><head>
  <meta charset="utf-8">
  <title>Reader | Hugo Personal Blog Template</title>
  <base href="/" />
</head>
  <%@ include file="layout/property.jsp" %>
<body>
	<%@ include file="layout/header.jsp" %>
	
	<%@ include file="main/popularChef.jsp" %>
	
	<div class="recipeSPorm">
		<div class="container">
			<div id="tabstrip-left">
				<ul>
					<li id="ganreLi">종류별</li>
					<li id="situationalLi">상황별</li>
					<li id="ingredientLi">재료별</li>
					<li id="cookeryLi">방법별</li>
				</ul>	
				<div id="ganre"></div>			
				<div id="situational"></div>			
				<div id="ingredient"></div>			
				<div id="cookery"></div>			
			</div>
			<br>
			<div class="searchInsert" id="searchInsert">
				<div class="insertList"></div>
				<div class="totalSearch">
					<input type="button" id="totalSearchBtn" value="검색" />
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="myPage/saveRecipe.jsp" %>
	<!-- durl -->

</body>
<script src="${pageContext.request.contextPath }/resources/js/home.js"></script>
</html>