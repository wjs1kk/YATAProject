
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
	<h1>예약 목록 조회</h1>
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
					<form action="AdminReservationList.ad">
						<select name="searchType">
							<option value="member_email" <c:if test="${param.searchType eq 'member_email' }">selected</c:if> >이메일</option>
							<option value="res_place" <c:if test="${param.searchType eq 'res_place' }">selected</c:if> >대여장소</option>
							<option value="car_id" <c:if test="${param.searchType eq 'car_id' }">selected</c:if> >자동차 번호</option>
							<option value="res_date" <c:if test="${param.searchType eq 'res_date' }">selected</c:if> >대여 날짜</option>
						</select>
						<input type="text" name="searchKeyword" value="${param.searchKeyword }" />
						<input class="nextBtn" type="submit" value="검색"/>
					</form>
						<th scope="col">이메일</th>
						<th scope="col">면허증 번호</th>
						<th scope="col">면허증 패스워드</th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody id="notice_list">
					<c:forEach var="licenseList" items="${licenseList }">
						<tr>
							<td>${licenseList.member_email }</td>
							<td>${licenseList.license_num }</td>
							<td>${licenseList.license_pass }</td>
							<td><input type="button" value="면허증 확인" onclick="location.href = 'AdminLicenseAprove.ad?lic_member_email=${licenseList.member_email }'"> </td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<section id="pageList">
				<!-- 초기값 pageNum이 pageNum = 1 -->
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
							onclick="location.href='AdminReservationList.ad?pageNum=${pageNum - 1}&searchType=${param.searchType }&searchKeyword=${param.searchKeyword }'">
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
							<a class="pagingNum" href='AdminReservationList.ad?pageNum=${num }&searchType=${param.searchType }&searchKeyword=${param.searchKeyword }'>${num }</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<c:choose>
					<c:when test="${pageNum < pageInfo.maxPage }">
						<input class="nextBtn" type="button" value="다음"
							onclick="location.href='AdminReservationList.ad?pageNum=${pageNum + 1}&searchType=${param.searchType }&searchKeyword=${param.searchKeyword }'">
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