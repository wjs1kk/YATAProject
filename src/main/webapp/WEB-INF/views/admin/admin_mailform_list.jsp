<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	<!-- 2023-04-28 김동욱 답변 삭제 기능 추가 및 삭제시 confirm으로 되묻기 -->
	function AdminMailFormDelete(board_num) {
		if(confirm("정말로 삭제하시겠습니까?")){
			location.href='AdminMailFormDelete.ad?board_num='+board_num
		}
	}
</script>
</head>
<body>
<jsp:include page="../inc/top_admin.jsp"></jsp:include>


<div align="center">
	<br>
	<h1>1:1 문의 내역 목록</h1>
	
	<div class="container py-5">

		<div class="mypage-section" id="mypage_section_setting">
			<table class="tb-list">
				<colgroup>
					<col style="width: 10%">
					<col>
					<col style="width: 11%">
				</colgroup>
				<thead>
					<form action="AdminMailForm.ad">
						<select name="searchType">
							<option value="member_email" <c:if test="${param.searchType eq 'member_email' }">selected</c:if> >이메일</option>
							<option value="board_subject" <c:if test="${param.searchType eq 'board_subject' }">selected</c:if> >제목</option>
							<option value="board_date" <c:if test="${param.searchType eq 'board_date' }">selected</c:if> >작성날짜</option>
						</select>
						<input type="text" name="searchKeyword" value="${param.searchKeyword }" />
						<input class="nextBtn" type="submit" value="검색"/>
					</form>
					<tr>
						<th scope="col">No</th>
						<th width="500" scope="col">제목</th>
						<th scope="col">날짜</th>
						<th scope="col">이메일</th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody id="notice_list">
					<c:forEach var="mailFormList" items="${mailFormList}">
						<tr>
							<td>${mailFormList.board_num}</td>
							<td class="tb-subj"><a style="color: black;"
								href="AdminMailFormReply.ad?board_num=${mailFormList.board_num}">
									
									<!-- 2023-04-27 김동욱 관리자의 답변의 글은 들여쓰기가 되게 수정 -->
									<c:if
										test="${mailFormList.board_re_lev > 0 }">
										<c:forEach var="i" begin="1"
											end="${mailFormList.board_re_lev }">&nbsp;&nbsp;</c:forEach>
										<img
											src="https://static.thenounproject.com/png/88514-200.png"
											width="10px" height="10px" style="margin: 0 5px 0 20px;">
										<a href="AdminMailFormReply.ad?board_num=${mailFormList.board_num}">
									</c:if> <c:if test="${mailFormList.board_re_lev < 1 }">
										<span class="it-notice">${mailFormList.board_progress}</span>
										<a href="AdminMailFormReply.ad?board_num=${mailFormList.board_num}">
									</c:if> ${mailFormList.board_subject} </a>
									
							</a>
							</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${mailFormList.board_date}" /></td>
							<td>${mailFormList.member_email}</td>
							<th>

								<input type="button" class="nextBtn" value="답변" onclick="location.href='AdminMailFormReply.ad?board_num=${mailFormList.board_num}'">
								<!-- 2023-04-28 김동욱 답변 삭제 기능 추가 및 삭제시 confirm으로 되묻기 -->
								<input type="button" class="nextBtn" value="삭제" onclick="AdminMailFormDelete('${mailFormList.board_num}')">		
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
					<c:when test="${pageNum > 1 }">
						<input class="nextBtn" type="button" value="이전"
							onclick="location.href='AdminMailForm.ad?pageNum=${pageNum - 1}&searchType=${param.searchType }&searchKeyword=${param.searchKeyword }'">
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
							<a class="pagingNum" href="AdminMailForm.ad?pageNum=${num }&searchType=${param.searchType }&searchKeyword=${param.searchKeyword }">${num }</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<c:choose>
					<c:when test="${pageNum < pageInfo.maxPage }">
						<input class="nextBtn" type="button" value="다음"
							onclick="location.href='AdminMailForm.ad?pageNum=${pageNum + 1}&searchType=${param.searchType }&searchKeyword=${param.searchKeyword }'">
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