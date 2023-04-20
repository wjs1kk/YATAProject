
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
	<h1>쿠폰 목록 조회</h1>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>사용자 이메일</th>
			<th>이름</th>
			<th>번호</th>
			<th>등록일</th>
			<th>만료일</th>
			<th>사용 가능 여부</th>

		</tr>
		<c:choose>
			<c:when test="${empty couponList }">
				<tr>
					<td colspan="7" align="center">쿠폰 목록이 존재하지 않습니다.</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="couponList" items="${couponList }">
				<tr>
					<td>${couponList.coup_idx }</td>
					<td>${couponList.member_email }</td>
					<td>${couponList.coup_name }</td>
					<td>${couponList.coup_code }</td>
					<td>${couponList.coup_start }</td>
					<td>${couponList.coup_end }</td>
					<td>${couponList.coup_useable }</td>
					<td>
						<%-- 수정 버튼 클릭 시 회원 정보 조회 페이지로 이동(파라미터 : id) --%>
						<input type="button" value="삭제" onclick="location.href='AdminCouponDelete.ad?coup_idx=${couponList.coup_idx }'">													
					</td>
				</tr>			
				</c:forEach>
			</c:otherwise>
		</c:choose>

	</table>
</div>
</body>
</html>