<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    

<head>
	<link href="${pageContext.request.contextPath}/resources/css/package.css?v=<%System.currentTimeMillis(); %>" rel="stylesheet" />
</head>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="packagemain" name="title" />
</jsp:include>
<div class="packgae-logo">
	<div class="packgae-logo-text">
		<p id="text1">베지팜이 엄선한 질병 • 건강 기준에 맞춘</p>
		<br>
		<p id="text2">건강 패키지</p>
	</div>
</div>

<div class="container" style="width: 1000px;">
	<main class="pakge-main">

		<div id="package-menu">
			
			<div class="package-card">
				<a href="${pageContext.request.contextPath}/item/pacForm.bo?INo=1" >
				
					<h2>감기 탈출 패키지</h2>
				</a>
			</div>

			<div class="package-card">
				<a href="${pageContext.request.contextPath}/item/pacForm.bo?INo=2">
					<h2>혈당 관리 패키지</h2>
				</a>
			</div>

			<div class="package-card">
				<a href="${pageContext.request.contextPath}/item/pacForm.bo?INo=3">		
					<h2>당뇨 관리 패키지</h2>
				</a>
			</div>

			<div class="package-card">
				<a href="${pageContext.request.contextPath}/item/pacForm.bo?INo=4">
					<h2>심혈관계질환</h2>
				</a>
			</div>
		</div>
		<p>HOME > 패키지 > ${pacForm.IName}</p>

		<div id="package-select">
			<div id="select-img">
				<img src="${pageContext.request.contextPath}/resources/images/${pacForm.ILogo}" alt="logo">
			</div>

			<div class="info-area">
				<div class="info-area_name">
					<h2>${pacForm.IName}</h2>
				</div>

				<div class="info-area_price">
					<h2>${pacForm.IPrice}원</h2>
				</div>

				<div class="info-area_farmBox">
					<div class="info-area_title">
						<span>판매 농가</span>
					</div>
					<div class="info-area_farm">
						<h2>${pacForm.ILocal}</h2>
					</div>
				</div>
				<div class="item-sulyangBox">
					<form name="" action="" method="post">
						<div class="info-area_title">
							<span>수량</span>
						</div>
						<div class="info-area_number">
							<input type="number" name="item-sulyang" min="0" max="${pacForm.ICount}" value="1">
						</div>
				</div>
				
					<div class="info-area_total">
						<span>총 상품금액</span>
						<span class="total_price"> 
							<span>원</span>
						</span>
					</div>
					<div class="info-area_btn">
						<button id="info-area_btn">장바구니</button>
					</div>
				</form>
			</div>
		</div>
		<div class="info-area_content">
			<img src="${pageContext.request.contextPath}/resources/images/${pacForm.IContent}" alt="logo">
		</div>
	</main>
</div>
<!-- 			<table id="info-area-t">
					<tr>
						<td class="info-area_name"><h2>상품명</h2></td>
						<td><h2>감기탈출 패키지</h2></td>
					</tr>
					<tr>
						<td class="info-area_price" colspan="2"><h2>55,000원</h2></td>
					</tr>
					<tr>
						<td class="info-area_content" colspan="2"><h2>맛난 감자감자 냠냠</h2></td>
					</tr>
					<tr>
						<td class="info-area_farm"><h2>판매 농가</h2></td>
						<td><h2>뿡뿡이네</h2></td>
					</tr>
					<tr>
						<td class="info-area_number"><h2>수량</h2></td>
						<td><input type="number" min="1" max="55" value="1"></td>
					</tr>
		
					</table>
	 -->



<jsp:include page="/WEB-INF/views/common/footer.jsp" />