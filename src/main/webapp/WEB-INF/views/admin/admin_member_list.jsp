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
<script type="text/javascript">

	<!-- 2023-04-28 김동욱 리스트 삭제시 confirm창으로 되묻기 -->
	function AdminMemberDelete(member_email) {
		if(confirm("정말로 삭제하시겠습니까?")){
			location.href='AdminMemberDeletePro.ad?member_email='+member_email;
		}
	}

</script>
</head>
<body>
<jsp:include page="../inc/top_admin.jsp"></jsp:include>
<div align="center">
	<br>
	<h1>회원 목록 조회</h1>
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
						<form action="AdminMemberList.ad">
							<select name="searchType">
								<option value="MEMBER_EMAIL" <c:if test="${param.searchType eq 'MEMBER_EMAIL' }">selected</c:if> >이메일</option>
								<option value="MEMBER_PHONE" <c:if test="${param.searchType eq 'MEMBER_PHONE' }">selected</c:if> >휴대폰 번호</option>
								<option value="MEMBER_DATE" <c:if test="${param.searchType eq 'MEMBER_DATE' }">selected</c:if> >가입일</option>
							</select>
							<input type="text" name="searchKeyword" value="${param.searchKeyword }" />
							<input class="nextBtn" type="submit" value="검색"/>
						</form>
						<th scope="col">이메일</th>
						<th scope="col">이름</th>
						<th scope="col">성별</th>
						<th scope="col">가입일</th>
						<th scope="col">포인트</th>
						<th scope="col">면허증</th>
						<th scope="col">관리자</th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody id="notice_list">
					<c:forEach var="memberList" items="${memberList}">
						<tr>
							<td>${memberList.member_email}</td>
							<td>${memberList.member_name}</td>
							<td>${memberList.member_gender}</td>
							<td>${memberList.member_date}</td>
							<td>${memberList.member_point}</td>
							<td>${memberList.member_license}</td>
							<td>${memberList.member_isadmin}</td>
							<th>
								<input type="button"  class="nextBtn" value="수정" onclick="location.href='AdminMemberInfo.ad?member_email=${memberList.member_email}&member_name=${memberList.member_name}&member_birth=${memberList.member_birth}&member_gender=${memberList.member_gender }&member_phone=${memberList.member_phone }&member_point=${memberList.member_point }&member_license=${memberList.member_license }&member_isadmin=${memberList.member_isadmin }'">
								<!-- 2023-04-28 김동욱 리스트 삭제시 confirm창으로 되묻기 -->
								<input type="button" class="nextBtn" value="삭제" onclick="AdminMemberDelete('${memberList.member_email}')">
							</th>
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
							onclick="location.href='AdminMemberList.ad?pageNum=${pageNum - 1}&searchType=${param.searchType }&searchKeyword=${param.searchKeyword }'">
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
							<a class="pagingNum" href="AdminMemberList.ad?pageNum=${num }&searchType=${param.searchType }&searchKeyword=${param.searchKeyword }">${num }</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<c:choose>
					<c:when test="${pageNum < pageInfo.maxPage }">
						<input class="nextBtn" type="button" value="다음"
							onclick="location.href='AdminMemberList.ad?pageNum=${pageNum + 1}&searchType=${param.searchType }&searchKeyword=${param.searchKeyword }'">
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