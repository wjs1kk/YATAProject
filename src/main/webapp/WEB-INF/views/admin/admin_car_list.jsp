
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="../inc/top_admin.jsp"></jsp:include>

<div align="center">
	<br>
	<h1>자동차 목록 조회</h1>
	<div class="container py-5">
		<div class="mypage-section" id="mypage_section_setting">
			<table class="tb-list">
				<colgroup>
					<col style="width: 10%">
					<col>
					<col style="width: 11%">
				</colgroup>
				<thead>
					<form action="AdminCarList.ad">
						<select name="searchType">
							<option value="car_manufacturer" <c:if test="${param.searchType eq 'car_manufacturer' }">selected</c:if> >제조사</option>
							<option value="car_name" <c:if test="${param.searchType eq 'car_name' }">selected</c:if> >차명칭</option>
							<option value="car_fuel" <c:if test="${param.searchType eq 'car_fuel' }">selected</c:if> >연료</option>
							<option value="car_available" <c:if test="${param.searchType eq 'car_available' }">selected</c:if> >출고 가능 상태</option>
						</select>
						<input type="text" name="searchKeyword" value="${param.searchKeyword }" />
						<input class="nextBtn" type="submit" value="검색"/>
					</form>
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
								<input type="button" class="nextBtn" value="수정" onclick="location.href='AdminCarUpdate.ad?car_id=${carList.car_id}'">
								<input type="button" class="nextBtn" value="삭제" onclick="location.href='AdminCarDelete.ad?car_id=${carList.car_id }'">													
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<section id="pageList">
				<c:choose>
					<c:when test="${param.pageNum eq null }">
						<c:set var="pageNum" value="1" ></c:set>
					</c:when>
					<c:otherwise>
						<c:set var="pageNum" value="${param.pageNum }" ></c:set>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${pageNum > 1 }">
						<input class="nextBtn" type="button" value="이전"
							onclick="location.href='AdminCarList.ad?pageNum=${pageNum - 1}&searchType=${param.searchType }&searchKeyword=${param.searchKeyword }'">
					</c:when>
					<c:otherwise>
						<input class="nextBtn" type="button" value="이전">
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
							<a class="pagingNum" href="AdminCarList.ad?pageNum=${num }&searchType=${param.searchType }&searchKeyword=${param.searchKeyword }">${num }</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<c:choose>
					<c:when test="${pageNum < pageInfo.maxPage }">
						<input class="nextBtn" type="button" value="다음"
							onclick="location.href='AdminCarList.ad?pageNum=${pageNum + 1}&searchType=${param.searchType }&searchKeyword=${param.searchKeyword }'">
					</c:when>
					<c:otherwise>
						<input class="nextBtn" type="button" value="다음">
					</c:otherwise>
				</c:choose>
			</section>
		</div>
	</div>
</div>

<jsp:include page="../inc/footer.jsp"/>

</body>
</html>