<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="packagemain" name="title" />
</jsp:include>  
<img src="${pageContext.request.contextPath}/resources/images/v29_3.png" class="navimg" alt="Header Image">

<div class="container" style="width: 1200px;"> 
	<aside>
		<div class="sidebar">
			<ul>
				<li><a href=#>•곡류</a></li>
				<li><a href=#>•깨</a></li>
				<li><a href=#>•콩</a></li>
				<li><a href=#>•과일</a></li>
				<li><a href=#>•건과</a></li>
				<li><a href=#>•견과</a></li>
				<li><a href=#>•나물</a></li>
				<li><a href=#>•버섯</a></li>
			</ul>
		</div>
	</aside>
	<main class="itemList-main">	
		<c:forEach items="${itemlist}" var="item">
			<div class="card">
				<img src="${pageContext.request.contextPath}/resources/images/itemlogo/${item.ILogo}" alt="logo"> 
				<h3>${item.IName}</h3>
				<a href="${pageContext.request.contextPath}/item/itemForm.bo?INo=${pac.INo}" >${item.IPrice}원</a>
			</div>
		</c:forEach>
	</main>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" />