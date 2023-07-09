<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<style>
    body {font-family: Arial, sans-serif;}
    .form-container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    .form-container h3 {
        margin-top: 0;
        margin-bottom: 20px;
        color: #4caf50;
        font-size: 20px;
    }
    .form-container label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }
    .form-container input[type="text"],
    .form-container input[type="number"],
    .form-container input[type="tel"],
    .form-container input[type="email"],
    .form-container input[type="date"],
    .form-container textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        }
    .form-container .form-row {
        display: flex;
        align-items: center;
    }
    .form-container .form-row .form-col {
        flex: 1;
        margin-right: 10px;
    }
    .form-container input[type="submit"],
    .form-container input[type="button"],
    .form-container input[type="reset"] {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 4px;
        background-color: #4caf50;
        color: #fff;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    .form-container input[type="submit"]:hover,
    .form-container input[type="reset"]:hover {
        background-color: #45a049;
    }
</style> 


<div class="form-container">
    <form  action="${pageContext.request.contextPath}/member/myPage.me" method="get">
        <h3>개인 정보(${loginMember.MId})</h3>
        <div class="form-row">
            <div class="form-col">
                <label for="user_name">이름</label>
                <input type="text" id="mName" name="mName" value="${loginMember.MName}" readonly>
            </div>   
            <div class="form-col">
                <label for="user_birth">생년월일</label>
                <input type="text" id="mBirth" name="mBirth" value="${loginMember.MBirth}" readonly>
            </div>
        </div>
        <div class="form-row">
            <div class="form-col">
                <label for="user_phone">전화번호</label>
                <input type="tel" id="mTel" name="mTel" value="${loginMember.MTel}" readonly>
            </div>
            <div class="form-col">
                <label for="user_email">이메일</label>
                <input type="email" id="mEmail" name="mEmail" value="${loginMember.MEmail}" readonly>
            </div>
        </div>
        <div class="form-row">
            <div class="form-col">
                <label for="start_date">주소</label>
                <input type="text" id="mAddr" name="mAddr" value="${loginMember.MAddr}" readonly>
            </div>
        </div>
            
    <div class="form-row">
	    <div class="form-col">
			<input type="button" id="editMInfoBtn" value="정보 수정">
		</div>
		
		<div class="form-col">
			<input type="button" id="editPwdBtn" value="비밀번호 수정">
		</div>
			    
		<div class="form-col">
		    <input type="reset" value="취소">
		</div>
    </div>

    <script>
	    document.querySelector("#editPwdBtn").addEventListener('click', (e) => {
			location.href="${pageContext.request.contextPath}/member/editPwd.me?pwd=${loginMember.MPwd}";
		});
	    
	    document.querySelector("#editMInfoBtn").addEventListener('click', (e) => {
	    	location.href="${pageContext.request.contextPath}/member/editMInfo.me(${loginMember.MPwd})";
	    });
	    
    </script> 
    
</div>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>