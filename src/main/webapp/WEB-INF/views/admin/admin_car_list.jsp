
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
<jsp:include page="../inc/top.jsp"></jsp:include>
<div align="center">
	<h1>자동차 목록 조회</h1>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제조사</th>
			<th>모델</th>
			<th>이름</th>
			<th>종류</th>
			<th>연식</th>
			<th>가격</th>
			<th>출고 가능</th>
			<th>인승</th>
			<th>연료</th>

		</tr>
		<c:choose>
			<c:when test="${empty carList }">
				<tr>
					<td colspan="10" align="center">자동차 목록이 존재하지 않습니다.</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="carList" items="${carList }">
				<tr>
					<td>${carList.car_id }</td>
					<td>${carList.car_manufacturer }</td>
					<td>${carList.car_model }</td>
					<td>${carList.car_name }</td>
					<td>${carList.car_type }</td>
					<td>${carList.car_year }</td>
					<td>${carList.car_price }</td>
					<td>${carList.car_available }</td>
					<td>${carList.car_seater }</td>
					<td>${carList.car_fuel }</td>
					<td>
						<%-- 수정 버튼 클릭 시 회원 정보 조회 페이지로 이동(파라미터 : id) --%>
						<input type="button" value="등록" onclick="">
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