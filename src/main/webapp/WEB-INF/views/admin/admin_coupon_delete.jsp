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
		<form action="AdminCouponDeletePro.ad?coup_idx=${param.coup_idx }" method="post">
			<table border="1" >
				<tr>
					<th>쿠폰 이름</th>
					<td><input type="text" name="coup_name" value="${coupon.coup_name }"></td>
				</tr>
				<tr>
					<th>쿠폰 등록일</th>
					<td><input type="text" name="coup_start" value="${coupon.coup_start }"></td>
				</tr>
				<tr>
					<th>쿠폰 만료일</th>
					<td><input type="text" name="coup_end" value="${coupon.coup_end }"></td>
				</tr>
				<tr>
					<th>쿠폰 할인율</th>
					<td>
						<select id="coup_percent" name="coup_percent" >
			             	<option value="">${coupon.coup_percent }</option>
					</td>
				</tr>
				<tr>
					<th>사용가능</th>
					<td>
						<select id="coup_useable" name="coup_useable" >
			             	<option value="">${coupon.coup_useable }</option>
					</td>
				</tr>
				<tr>
					<th colspan="2">
						<div align="center">
							<input type="submit" value="삭제"> <input type="button"
								value="취소" onclick="history.back()">
						</div>
					</th>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>