<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="packagemain" name="title" />
</jsp:include>

<div class="container">
	
	<form action="${pageContext.request.contextPath}/item/packageList.bo" method="get">
		<aside>
			<h3>main</h3>
			<div class="sidebar">
				<!-- 	패키지 메인으로 돌아가는 코드
				I PCA가 1인 리스트 모두 출력
				클릭하면 PACKGEFORM이 우측에 페이지에 출력됨. -->
				<ul>
					<li><a href=#>•감기 탈출 패키지</a></li>
					<li><a href=#>•혈당 관리 패키지</a></li>
					<li><a href=#>•당뇨 관리 패키지</a></li>
					<li><a href=#>•집중 관리 프로잭트</a></li>
					<li><a href=#>•심혈관계질환</a></li>
					<li><a href=#>•하루 600Kcal A</a></li>
					<li><a href=#>•하루 600Kcal B</a></li>
					<li>
						<a href="${pageContext.request.contextPath}/item/packageForm.bo">•packageForm 가보기</a>
					</li>
					
				</ul>
			</div>
		</aside>
	</form>
</div>
<div class="container"> 
	<main class="main">
		<div class="packageList.jsp">
		<%-- 	<img class="packgae-logo" src="${pageContext.request.contextPath}/resources/images/pexels-photo-5677794.jpeg" alt="packgae-logo">
   		 --%>	
			<p>건강을 위한 목적과 필요에 따라 골라 먹는</p>
			<p>맛있는 야채</p>
			<p>질환별 추천 패키지입니다.</p>
			<p>건강한 텃밭에서 자란 채소들로 여러분의 식단을 책임집니다.</p>
		</div>
	</main>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />