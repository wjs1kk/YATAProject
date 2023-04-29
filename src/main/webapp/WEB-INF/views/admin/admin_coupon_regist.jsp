<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<!-- coup_idx -->
	<!-- member_email -->
	<!-- coup_name -->
	<!-- coup_code -->
	<!-- coup_start -->
	<!-- coup_end -->
	<!-- coup_useable -->

	<div align="center">
		<h1>신규 쿠폰 등록</h1>
		<form action="AdminCouponRegistPro.ad" method="post">
			<input type="hidden" name="coup_idx" value="0">
			<table border="1">
				<tr>
					<th>쿠폰 이름</th>
					<td><input type="text" name="coup_name"></td>
				</tr>
				<tr>
					<th>쿠폰 등록일</th>
					<td><input type="date" name="coup_start"></td>
				</tr>
				<tr>
					<th>쿠폰 만료일</th>
					<td><input type="date" name="coup_end"></td>
				</tr>
				<tr>
					<th>쿠폰 할인율</th>
					<td><select name="coup_percent">
							<option value="">선택하기</option>
							<option value="0.1">10%</option>
							<option value="0.3">30%</option>
							</select>
							</td>
				</tr>
				<tr>
					<th colspan="2">
						<div align="center">
							<input type="submit" value="등록"> 
							<input type="button" value="취소" onclick="history.back()">
						</div>
					</th>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>