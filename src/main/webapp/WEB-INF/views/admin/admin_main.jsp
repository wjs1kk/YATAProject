<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/inc.css" rel="stylesheet" type="text/css">
<link href="css/main.css" rel="stylesheet" type="text/css">

</head>
<body>
	<header>
		<jsp:include page="../inc/top.jsp"></jsp:include>
	</header>
	<div id="main" align="center">
		<h1>관리자 메인페이지</h1>
		<h3><a href="AdminMemberList.me">회원 목록 조회</a></h3>
		<h3><a href="AdminCarList.me">자동차 목록 조회</a></h3>
	</div>
</body>
</html>