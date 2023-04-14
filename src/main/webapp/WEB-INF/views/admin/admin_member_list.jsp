
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/inc.css" rel="stylesheet" type="text/css">
<link href="resources/css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="../inc/top_admin.jsp"></jsp:include>
<div align="center">
	<h1>회원 목록 조회</h1>
	<table border="1">
		<tr>
			<th>이메일</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>생년월일</th>
			<th>성별</th>
			<th>번호</th>
			<th>가입일</th>
			<th>포인트</th>
			<th>면허증</th>

		</tr>
		<c:choose>
			<c:when test="${empty memberList }">
				<tr>
					<td colspan="9" align="center">회원 목록이 존재하지 않습니다.</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="memberList" items="${memberList }">
				<tr>
					<td>${memberList.member_email }</td>
					<td>${memberList.member_passwd }</td>
					<td>${memberList.member_name }</td>
					<td>${memberList.member_birth }</td>
					<td>${memberList.member_gender }</td>
					<td>${memberList.member_phone }</td>
					<td>${memberList.member_date }</td>
					<td>${memberList.member_point }</td>
					<td>${memberList.member_license }</td>
					<td>
						<%-- 수정 버튼 클릭 시 회원 정보 조회 페이지로 이동(파라미터 : id) --%>
						<input type="button" value="수정" onclick="">
						<input type="button" value="삭제">
					</td>
				</tr>			
				</c:forEach>
			</c:otherwise>
		</c:choose>

	</table>
</div>
</body>
</html>