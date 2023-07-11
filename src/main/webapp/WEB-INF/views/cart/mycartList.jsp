<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<head>
<link href="${pageContext.request.contextPath}/resources/css/cart.css?v=<%System.currentTimeMillis(); %>" rel="stylesheet" />
</head>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="packagemain" name="title" />
</jsp:include>  


<main class="cartList-main">		
	<div class="cart-logo">
		<div class="cart-logo-text">
			<h2>${loginMember.memName}님</h2><h4>의 장바구니</h4>
		</div>
	</div>
	<div class="cart-container">
	<!-- <form name="frm"> -->
		<table class="cart-table">
			<tr>
				<td colspan="5">
					 <h1>일반 상품</h1>
				</td>
			</tr>
			<c:set var = "total" value = "0" />
			<c:choose>
				<c:when test="${empty cartItemList}">
					<tr>
						<td colspan="4">장바구니가 비어있습니다.</td>
					</tr>
				</c:when>
			<c:otherwise>
			<c:forEach items="${cartItemList}" var="Item">
				<tr>
					<td>
						<input type="checkbox" value="{Item.cartNo}">
					</td>
					<td>
		     			<img src="${pageContext.request.contextPath}/resources/images/itemlogo/${Item.itemLogo}" alt="logo"> 
					</td>
					<td>
						<h5 class="itemLocal">${Item.itemLocal}</h5>
						<h5 class="itemname">${Item.itemName}</h5>
						<h5 class="itemPrice">상품가격 <fmt:formatNumber value="${Item.itemPrice}" pattern="#,###"/>원</h5>
						<h5 class="itemCount">재고량${Item.itemCount}</h5>
					</td>
						<td>
						    <h4 class="cartCount">주문수량 
						        <form action="${pageContext.request.contextPath}/cart/updateCart.ca" method="post">
								    <select class="select-Count" name="cartCount">
								        <c:forEach var="i" begin="1" end="${Item.itemCount}">
								            <option value="${i}" ${i == Item.cartCount ? 'selected' : ''}>${i}</option>
								        </c:forEach>
								    </select>   
								    <input type="hidden" name="cartNo" value="${Item.cartNo}">
								    <input type="hidden" name="memId" value="${loginMember.memId}">
								    <button type="submit" name="CountUpDate" class="CountUpDate-btn">수량변경</button>
   				        		<h4>
		   							 <c:set var="total" value="${Item.itemPrice * Item.cartCount}"/>
		    						<fmt:formatNumber value="${total}" pattern="#,###"/>원
								</h4>
								</form>
						    </h4>
						</td>
						<td>					
		 					<button class="buy-button">구매하기</button>
							<form action="${pageContext.request.contextPath}/cart/deleteCart.ca" method="post">
	  							<input type="hidden" name="cartNo" value="${Item.cartNo}">
	  							<input type="hidden" name="memId" value="${loginMember.memId}">
	  							<button class="remove-button" type="submit">삭제하기</button>
							</form>
						</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		<tr>
			<td colspan="5">
				 <h1>패키지 상품</h1>
			</td>
		</tr>
		<c:set var="total" value="0" />
			<c:choose>
				<c:when test="${empty cartPacList}">
					<tr>
						<td colspan="5">장바구니가 비어있습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${cartPacList}" var="Pac">
						<tr>
							<td>
								<input type="checkbox" value="{Pac.cartNo}">
							</td>
							<td>
				     			<img src="${pageContext.request.contextPath}/resources/images/itemlogo/${Pac.itemLogo}" alt="logo"> 
							</td>
							<td>
								<h5 class="itemLocal">${Pac.itemLocal}</h5>
								<h5 class="itemname">${Pac.itemName}</h5>
								<h5 class="itemPrice">상품가격 <fmt:formatNumber value="${Pac.itemPrice}" pattern="#,###"/>원</h5>
								<h5 class="itemCount">재고량${Pac.itemCount}</h5>
							</td>
							<td>
							    <h4 class="cartCount">주문수량 
							        <form action="${pageContext.request.contextPath}/cart/updateCart.ca" method="post">
									    <select class="select-Count" name="cartCount">
									        <c:forEach var="i" begin="1" end="${Pac.itemCount}">
									            <option value="${i}" ${i == Pac.cartCount ? 'selected' : ''}>${i}</option>
									        </c:forEach>
									    </select>   
									    <input type="hidden" name="cartNo" value="${Pac.cartNo}">
									    <input type="hidden" name="memId" value="${loginMember.memId}">
									    <button type="submit" name="CountUpDate" class="CountUpDate-btn">수량변경</button>
	   				        		<h4>
			   							 <c:set var="total" value="${Pac.itemPrice * Pac.cartCount}"/>
			    						<fmt:formatNumber value="${total}" pattern="#,###"/>원
									</h4>
									</form>
							    </h4>
							</td>
							<td>					
			 					<button class="buy-button">구매하기</button>
								<form action="${pageContext.request.contextPath}/cart/deleteCart.ca" method="post">
		  							<input type="hidden" name="cartNo" value="${Pac.cartNo}">
		  							<input type="hidden" name="memId" value="${loginMember.memId}">
		  							<button class="remove-button" type="submit">삭제하기</button>
								</form>
							</td>
						</tr>
			 	</c:forEach>
			</c:otherwise>
			</c:choose>
		</table>
	</div>
		<div class="cart-bar-box">
		<table class="cart-bar">
			<tr>
				<td colspan="2">${loginMember.memName}</td>
			</tr>
			<tr>
				<td colspan="2">
					<h4>기본 배송지</h4>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<h4>${loginMember.memAddr}</h4>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<hr class="underline">
    			</td>
    		</tr>	
			<tr>
				<td>
					<h4>주문금액</h4>
				</td>
				<td>
					<fmt:formatNumber value="${sumMoney}" pattern="#,###"/>원
				</td>
			</tr>
			<tr>
				<td>
					<h4>배송비</h4>
				</td>
				<td>
					3,000원
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<hr class="underline">
    			</td>
    		</tr>	
			<tr>
				<td>
					<h4 class="red-text">결제예정 금액</h4>
				</td>
			    <td>
			        <h2 class="red-text">
			            <fmt:formatNumber value="${sumMoney+3000}" pattern="#,###"/>원
			        </h2>
			    </td>
			</tr>
			<tr>
	    		<td colspan="2"><button class="all-cart-buy-btn">주문하기</button></td>
			</tr>
		</table>
	</div>
	<form action="${pageContext.request.contextPath}/cart/allDeleteCart.ca" method="POST">
		<input type="hidden" name="memId" value="${loginMember.memId}">
	    <button type="submit" class="all-remove-button">장바구니 비우기</button>
	</form>
</main>
<script>
    // 선택한 상품의 cartNo를 가져와서 selectedCartNo에 설정하는 함수
    function updateSelectedCartNo() {
        const selectedCartNo = [];
        const checkboxes = document.querySelectorAll('input[type="checkbox"]:checked');
        checkboxes.forEach(function(checkbox) {
            selectedCartNo.push(checkbox.value);
        });
        document.getElementById('selectedCartNo').value = selectedCartNo.join(',');
    }

    // 체크박스 클릭 시, 선택한 상품의 cartNo 업데이트
    const checkboxes = document.querySelectorAll('input[type="checkbox"]');
    checkboxes.forEach(function(checkbox) {
        checkbox.addEventListener('click', updateSelectedCartNo);
    });
</script>

</script>