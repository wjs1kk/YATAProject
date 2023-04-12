<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
<style type="text/css">
#listForm {
	width: 1024px;
	max-height: 610px;
	margin: auto;
}

h2 {
	text-align: center;
}

table {
	margin: auto;
	width: 1024px;
}

#tr_top {
	background: #b8f1ff;
	text-align: center;
}

table td {
	text-align: center;
}

#subject {
	text-align: left;
	padding-left: 20px;
	/* 제목 길이 제한 (잘린 부분은 ... 으로 표시) */
	max-width: 450px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#name {
	/* 작성자 길이 제한 (잘린 부분은 ... 으로 표시) */
	max-width: 100px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#pageList {
	margin: auto;
	width: 1024px;
	text-align: center;
}

#emptyArea {
	margin: auto;
	width: 1024px;
	text-align: center;
}

#buttonArea {
	margin: auto;
	width: 1024px;
	text-align: right;
}

/* 하이퍼링크 밑줄 제거 */
a {
	text-decoration: none;
}
</style>
<!-- css/main.css 파일 불러오기 -->
<link href="css/inc.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<%-- inc/top.jsp 페이지 삽입(jsp:include 액션태그 사용 시 / 경로는 webapp 가리킴) --%>
		<jsp:include page="../inc/top.jsp"></jsp:include>
	</header>

	<!-- 게시판 리스트 -->
	<h2>게시판 글 목록</h2>
	<section id="buttonArea">
		<input type="button" value="글쓰기" onclick="location.href='write.no'" />
	</section>
	<section id="listForm">
		<table>
			<tr id="tr_top">
				<td width="100px">번호</td>
				<td>제목</td>
				<td width="150px">작성자</td>
				<td width="150px">날짜</td>
				<td width="100px">조회수</td>
			</tr>
			<%-- JSTL 과 EL 활용하여 글목록 표시를 위한 반복문 작성 - <c:forEach> --%>
			<c:forEach var="board" items="${noticeList }">
				<tr>
					<td>${notice.board_num }</td>

					<%-- 제목에 하이퍼링크 추가(BoardDetail.bo) => 글번호(board_num), 페이지번호(pageNum) 전달 --%>
					<td id="subject">
						<%-- ===================== 답글 관련 처리 ======================= --%> <%-- board_re_lev 값이 0보다 크면 답글이므로 들여쓰기 후 이미지(re.gif) 표시 --%>
						<a
						href="BoardDetail.bo?board_num=${board.board_num }&pageNum=${pageNum}">${board.board_subject }</a>
					</td>

					<td id="name">${board.board_name }</td>
					<%-- JSTL fmt 라이브러리를 활용하여 날짜 포맷 변경 시 --%>
					<td><fmt:formatDate value="${board.board_date }"
							pattern="yy-MM-dd HH:mm" /></td>
					<td>${board.board_readcount }</td>
				</tr>
			</c:forEach>
		</table>
	</section>

	<jsp:include page="../inc/footer.jsp" />
</body>
</html>












