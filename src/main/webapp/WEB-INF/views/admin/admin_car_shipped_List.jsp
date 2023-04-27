
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../inc/top_admin.jsp"></jsp:include>

<div align="center">
	<br>
	<h1>출고된 자동차 목록 조회</h1>
	<div class="container py-5">
		<div class="mypage-section" id="mypage_section_setting">
			<table class="tb-list">
				<colgroup>
					<col style="width: 10%">
					<col>
					<col style="width: 11%">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제조사</th>
						<th scope="col">모델</th>
						<th scope="col">이름</th>
						<th scope="col">종류</th>
						<th scope="col">연식</th>
						<th scope="col">가격</th>
						<th scope="col">출고 가능 상태</th>
						<th scope="col">인승</th>
						<th scope="col">연료</th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody id="notice_list">
					<c:forEach var="carList" items="${carList }">
						<tr>
							<td>${carList.car_id }</td>
							<td>${carList.car_manufacturer }</td>
							<td><img class="js-vsl-img-car vsl-img-car img-fluid " src="resources/images/car/${carList.car_model }.png" style="width:289px; height:130px;"></td>
							<td>${carList.car_name }</td>
							<td>${carList.car_type }</td>
							<td>${carList.car_year }</td>
							<td>${carList.car_price }</td>
							<td>${carList.car_available }</td>
							<td>${carList.car_seater }</td>
							<td>${carList.car_fuel }</td>
							<td>
								<%-- 수정 버튼 클릭 시 회원 정보 조회 페이지로 이동(파라미터 : id) --%>
								<input type="button" value="반납확인" onclick="">													
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<section id="pageList">
				<c:choose>
					<c:when test="${pageNum > 1 }">
						<input class="prevBtn" type="button" value="이전"
							onclick="location.href='BoardList.bo?pageNum=${pageNum - 1}'">
					</c:when>
					<c:otherwise>
						<input class="prevBtn" type="button" value="이전">
					</c:otherwise>
				</c:choose>

				<c:forEach var="num" begin="${pageInfo.startPage }"
					end="${pageInfo.endPage }">
					<c:choose>
						<c:when test="${pageNum eq num }">
							<%-- 현재 페이지 번호일 경우 --%>
							<b>${num }</b>
						</c:when>
						<c:otherwise>
							<a class="pagingNum" href="BoardList.bo?pageNum=${num }">${num }</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<c:choose>
					<c:when test="${pageNum < pageInfo.maxPage }">
						<input class="nextBtn" type="button" value="다음"
							onclick="location.href='BoardList.bo?pageNum=${pageNum + 1}'">
					</c:when>
					<c:otherwise>
						<input class="nextBtn" type="button" value="다음">
					</c:otherwise>
				</c:choose>
			</section>
		</div>
	</div>
</div>

</body>
</html>