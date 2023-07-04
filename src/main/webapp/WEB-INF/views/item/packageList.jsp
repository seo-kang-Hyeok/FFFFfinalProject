<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="packagemain" name="title" />
</jsp:include>
			<div class="packgae-logo">
			    <div class="packgae-logo-text">
				    <p id="text1">베지팜이 엄선한 질병 • 건강 기준에 맞춘</p> <br>
				 	<p id="text2">건강 패키지</p>		    
			    </div>
			</div>

		<div class="container" style="width: 1000px;"> 
			<main class="main" >
				<div class="package-List">
					<%--<form action="${pageContext.request.contextPath}/item/packageList.bo" method="get"> --%>	'
					<aside>
						<h3>main</h3>
						<div class="sidebar">
							<!-- 	패키지 메인으로 돌아가는 코드 I PCA가 1인 리스트 모두 출력 클릭하면 PACKGEFORM이 우측에 페이지에 출력됨. -->
							<ul>
								<li><a href=#>•감기 탈출 패키지</a></li>
								<li><a href=#>•혈당 관리 패키지</a></li>
								<li><a href=#>•당뇨 관리 패키지</a></li>
								<li><a href=#>•심혈관계질환</a></li>
							
								<li><a href="${pageContext.request.contextPath}/item/packageForm.bo">•packageForm 가보기</a></li>
							</ul>
						</div>
					</aside>
				</div>
			</main>
		</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />