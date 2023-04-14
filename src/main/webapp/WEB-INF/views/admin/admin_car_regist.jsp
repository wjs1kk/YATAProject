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
<jsp:include page="../inc/top.jsp"></jsp:include>

<!-- car_id -->
<!-- car_manufacturer -->
<!-- car_model -->
<!-- car_name -->
<!-- car_type -->
<!-- car_year -->
<!-- car_price -->
<!-- car_available -->
<!-- car_seater -->
<!-- car_fuel -->

	<div align="center">
		<h1>신규 차량 등록</h1>
		<form action="AdminCarRegistPro.ad">
			<table border="1">
				<tr>
					<th>car_manufacturer</th>
					<td>
						<select name="car_manufacturer">
			             	<option value="">선택하기</option>
			             	<option value="경형">현대</option>
			             	<option value="중형">기아</option>
			             	<option value="대형">쉐보레</option>
			             	<option value="SUV">쌍용</option>
			             	<option value="SUV">르노코리아</option>
			            </select>  
					</td>
				</tr>
				<tr>
					<th>car_model</th><td><input type="text" name="car_model"> </td>
				</tr>
				<tr>
					<th>car_name</th><td><input type="text" name="car_name"> </td>
				</tr>
				<tr>
					<th>car_type</th>
					<td>
						<select name="car_type">
			             	<option value="">선택하기</option>
			             	<option value="경형">경형</option>
			             	<option value="중형">중형</option>
			             	<option value="대형">대형</option>
			             	<option value="SUV">SUV</option>
			            </select>  
					</td>
				</tr>
				<tr>
					<th>car_year</th><td><input type="text" name="car_year"> </td>
				</tr>
				<tr>
					<th>car_price</th><td><input type="text" name="car_price"> </td>
				</tr>
				<tr>
					<th>car_seater</th>
					<td>
						<select name="car_seater">
			             	<option value="">선택하기</option>
			             	<option value="1">1인승</option>
			             	<option value="2">2인승</option>
			             	<option value="3">3인승</option>
			             	<option value="4">4인승</option>
			             	<option value="5">5인승</option>
			             	<option value="6">6인승</option>
			            </select> 
					</td>
				</tr>
				<tr>
					<th>car_fuel</th>
					<td>
						<select name="car_fuel">
			             	<option value="">선택하기</option>
			             	<option value="가솔린">가솔린</option>
			             	<option value="경유">경유</option>
			             	<option value="LPG">LPG</option>
			             	<option value="전기">전기</option>
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


<!-- 2	기아	morning	모닝 3세대	경형	2021	20000	1	5	가솔린 -->
<!-- 3	기아	rey	레이 1세대	경형	2018	20000	1	5	가솔린 -->
<!-- 4	쉐보레	spark	스파크 4세대	경형	2018	20000	1	5	가솔린 -->
<!-- 5	현대	casper	캐스퍼	경형	2023	20000	1	5	가솔린 -->
<!-- 6	기아	K5	K5 3세대	중형	2023	25000	1	5	가솔린 -->
<!-- 7	현대	sonata_DN8	쏘나타 DN8	중형	2023	25000	1	5	가솔린 -->
<!-- 8	르노코리아	SM6	SM6 1세대	중형	2020	25000	1	5	가솔린 -->
<!-- 9	현대	genesis_G70	제네시스 G70	중형	2019	25000	1	5	가솔린 -->
<!-- 10	기아	stinger	스팅어	중형	2019	25000	1	5	가솔린 -->
<!-- 11	현대	grandeur_IG	그랜저 IG	대형	2019	30000	1	5	가솔린 -->
<!-- 12	기아	K7	K7 2세대	대형	2019	30000	1	5	가솔린 -->
<!-- 13	기아	K8	K8	대형	2023	30000	1	5	가솔린 -->
<!-- 14	현대	grandeur_GN7	그랜저 GN7	대형	2023	30000	1	5	가솔린 -->
<!-- 15	현대	genesis_G80_3	제네시스 G80 3세대	대형	2023	30000	1	5	가솔린 -->
<!-- 16	현대	genesis_G80_2	제네시스 G80 2세대	대형	2019	30000	1	5	가솔린 -->
<!-- 17	기아	K9	K9 2세대	대형	2019	30000	1	5	가솔린 -->
<!-- 18	현대	venue	베뉴	SUV	2023	25000	1	5	가솔린 -->
<!-- 19	현대	kona	코나 1세대	SUV	2020	25000	1	5	가솔린 -->
<!-- 20	기아	soul_2	쏘울 2세대	SUV	2016	25000	1	5	가솔린 -->
<!-- 21	기아	soul_3	쏘울 3세대	SUV	2020	25000	1	5	가솔린 -->
<!-- 22	기아	stonic	스토닉	SUV	2020	25000	1	5	가솔린 -->
<!-- 23	기아	seltos	셀토스	SUV	2022	25000	1	5	가솔린 -->
<!-- 24	기아	sportage_4	스포티지 4세대	SUV	2023	25000	1	5	가솔린 -->
<!-- 25	쉐보레	trailblazer	트레일블레이저	SUV	2022	25000	1	5	가솔린 -->
<!-- 26	쌍용	torres	토레스	SUV	2023	25000	1	5	가솔린 -->
<!-- 27	현대	palisade	팰리세이드 1세대	SUV	2023	25000	1	5	가솔린 -->
<!-- 28	기아	sportage_5	스포티지 5세대	SUV	2023	25000	1	5	가솔린 -->
									
	


<jsp:include page="../inc/footer.jsp"></jsp:include>
</body>
</html>