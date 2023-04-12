<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%-- JSTL 에서 표시 방식(날짜 등) 변경하려면 JSTL 의 fmt(format) 라이브러리 필요 --%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%
// 자바 코드를 사용하여 날짜 형식을 변경할 경우 java.text.SimpleDateFormat 클래스 활용
// 1. SimpleDateFormat 클래스 객체 생성
// => 파라미터로 날짜 형식을 지정할 포맷 문자열 전달
//    (연도 : y, 월 : M, 일 : d, 시 : H, 분 : m, 초 : s)
SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd HH:mm"); // 년년-월월-일일 시시:분분
// 2. 실제 날짜를 표시할 곳에서 SimpleDateFormat 객체의 format() 메서드를 호출하여
//    날짜가 저장된 객체를 파라미터로 전달하여 리턴되는 날짜 문자열을 출력하기
%>
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
			<%-- 자바 코드를 활용하여 글목록 표시 --%>
			<%
// 			// request 객체의 getAttribute() 메서드를 호출하여 List 객체 가져오기
// 			List<BoardBean> boardList = (List<BoardBean>)request.getAttribute("boardList");
			
// 			// 향상된 for문을 활용하여 List 객체만큼 반복
// 			for(BoardBean board : boardList) {
				%>
<!-- 				<tr> -->
<%-- 					<td><%=board.getBoard_num() %></td> --%>
<%-- 					<td id="subject"><a href="BoardDetail.bo?board_num=<%=board.getBoard_num() %>"><%=board.getBoard_subject() %></a></td> --%>
<%-- 					<td><%=board.getBoard_name() %></td> --%>
<%-- 					자바의 SimpleDateFormat 클래스를 활용하여 날짜 형식 변경 시 --%>
<%-- 					<td><%=sdf.format(board.getBoard_date()) %></td> --%>
<%-- 					<td><%=board.getBoard_readcount() %></td> --%>
<!-- 				</tr> -->
				<%
// 			}
			%>
			
			<%-- JSTL 과 EL 활용하여 글목록 표시를 위한 반복문 작성 - <c:forEach> --%>
			<c:forEach var="board" items="${boardList }">
				<tr>
					<td>${board.board_num }</td>
					
					<%-- 제목에 하이퍼링크 추가(BoardDetail.bo) => 글번호(board_num), 페이지번호(pageNum) 전달 --%>
					<td id="subject">
						<%-- ===================== 답글 관련 처리 ======================= --%>
						<%-- board_re_lev 값이 0보다 크면 답글이므로 들여쓰기 후 이미지(re.gif) 표시 --%>
						<c:if test="${board.board_re_lev > 0 }">
							<%-- 반복문을 통해 board_re_lev 값 만큼 공백 추가 --%>
							<c:forEach var="i" begin="1" end="${board.board_re_lev }">
								&nbsp;&nbsp;
							</c:forEach>
							<%-- 답글 제목 앞에 답글 이미지(re.gif) 추가 --%>
							<img src="images/re.gif">
						</c:if>
						<a href="BoardDetail.bo?board_num=${board.board_num }&pageNum=${pageNum}">${board.board_subject }</a>
					</td>
					
					<td id="name">${board.board_name }</td>
					<%-- JSTL fmt 라이브러리를 활용하여 날짜 포맷 변경 시 --%>
					<td><fmt:formatDate value="${board.board_date }" pattern="yy-MM-dd HH:mm" /></td>
					<td>${board.board_readcount }</td>
				</tr>
			</c:forEach>
		</table>
	</section>
	<section id="pageList">
		<%--
		현재 페이지번호(pageNum) 가 1보다 클 경우에만 [이전] 링크 동작
		=> 클릭 시 BoardList.bo 서블릿 주소에 pageNum - 1 값을 파라미터로 전달 
		--%>
		<c:choose>
			<c:when test="${pageNum > 1 }">
				<input type="button" value="이전" onclick="location.href='BoardList.bo?pageNum=${pageNum - 1}'">
			</c:when>
			<c:otherwise>
				<input type="button" value="이전">
			</c:otherwise>
		</c:choose>
		
		<%-- 페이지번호 목록은 시작페이지(startPage) 부터 끝 페이지(endPage) 까지 표시 --%>
		<c:forEach var="num" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
			<%-- 페이지번호 하이퍼링크 설정 => 페이지번호를 pageNum 파라미터로 전달 --%>
			<%-- 단, 현재 페이지번호는 하이퍼링크 없이 표시 --%>
			<c:choose>
				<c:when test="${pageNum eq num }"> <%-- 현재 페이지 번호일 경우 --%>
					<b>${num }</b>
				</c:when>
				<c:otherwise>
					<a href="BoardList.bo?pageNum=${num }">${num }</a>
				</c:otherwise>				
			</c:choose>
		</c:forEach>
		
		<%--
		현재 페이지번호(pageNum) 가 최대 페이지 번호(maxPage) 보다 작을 경우에만 [다음] 링크 동작
		=> 클릭 시 BoardList.bo 서블릿 주소에 pageNum + 1 값을 파라미터로 전달 
		--%>
		<c:choose>
			<c:when test="${pageNum < pageInfo.maxPage }">
				<input type="button" value="다음" onclick="location.href='BoardList.bo?pageNum=${pageNum + 1}'">
			</c:when>
			<c:otherwise>
				<input type="button" value="다음">
			</c:otherwise>
		</c:choose>
		
	</section>
	<jsp:include page="../inc/footer.jsp"/>
</body>
</html>













