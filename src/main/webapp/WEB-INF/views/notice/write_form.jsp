<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
<!-- 
스프링에서 외부에서 접근해야하는 자원(이미지, CSS 파일, 자바스크립트 파일 등)은 
resources 디렉토리에 위치해야한다!
-->
<link href="${pageContext.request.contextPath }/resources/css/inc.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/resources/css/subpage.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<jsp:include page="../inc/top.jsp" />
	</header>
	<!-- 게시판 등록 -->
	<article id="writeForm">
		<h1>게시판 글 등록</h1>
		<form action="writePro.no" name="writeForm" method="post">
			<table>
				<tr>
					<td class="write_td_left"><label for="board_subject">제목</label></td>
					<td class="write_td_right"><input type="text" id="board_subject" name="board_subject" required="required" /></td>
				</tr>
				<tr>
					<td class="write_td_left"><label for="board_content">내용</label></td>
					<td class="write_td_right">
						<textarea id="board_content" name="board_content" required="required"></textarea>
					</td>
				</tr>
				<tr>
					<td class="write_td_left"><label for="board_file">파일 첨부</label></td>
					<!-- 파일 첨부 형식은 input 태그의 type="file" 속성 사용 -->
					<td class="write_td_right"><input type="file" name="board_file" required="required" /></td>
				</tr>
			</table>
			<section id="btnArea">
				<input type="submit" value="등록">&nbsp;&nbsp;
				<input type="reset" value="다시쓰기">&nbsp;&nbsp;
				<input type="button" value="취소" onclick="history.back()">
			</section>
		</form>
	</article>
</body>
</html>








