<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function deleteFile() {
		
		$.ajax({
			type: "POST",
			url: "CardDeleteFile.ad",
			data: {
				"car_id" : ${param.car_id},
				"car_model" : "${car.car_model}"
			},
			success: function(result) {
				if(result == "true"){
					$("#fileBtnArea").html('<input type="file" name="file"/>')
				}else{
					alert("일시적인 오류로 파일 삭제에 실피했습니다!")
				}
			}
		});
	}
	
	
</script>
</head>
<body>
<jsp:include page="../inc/top_admin.jsp"></jsp:include>

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
		<h1>차량 정보 수정</h1>
		<form action="AdminCarUpdatePro.ad" method="post" enctype="multipart/form-data">
			<input type="hidden" name="car_id" value="${param.car_id }">
			<table border="1">
				<tr>
					<th style="text-align: center; background:#3399FF; color: white;">제조사</th>
					<td>
						<select id="car_manufacturer" name="car_manufacturer">
			             	<option value="현대" <c:if test="${car.car_manufacturer eq '현대' }">selected</c:if>>현대</option>
			             	<option value="기아" <c:if test="${car.car_manufacturer eq '기아' }">selected</c:if>>기아</option>
			             	<option value="쉐보레" <c:if test="${car.car_manufacturer eq '쉐보레' }">selected</c:if>>쉐보레</option>
			             	<option value="쌍용" <c:if test="${car.car_manufacturer eq '쌍용' }">selected</c:if>>쌍용</option>
			             	<option value="르노코리아" <c:if test="${car.car_manufacturer eq '르노코리아' }">selected</c:if>>르노코리아</option>
			            </select>  
					</td>
				</tr>
				<tr>
					<th style="text-align: center; background:#3399FF; color: white;">파일 첨부</th>
					<!-- 파일 첨부 형식은 input 태그의 type="file" 속성 사용(파일 업로드 옵션) -->
					<td class="write_td_right">
						<div id="fileBtnArea">
							<c:choose>
								<c:when test="${empty car.car_model }">
										<input type="file" name="file"/>
								</c:when>
								<c:otherwise>
										<a href = "${pageContext.request.contextPath }/resources/images/car/${car.car_model }.png">${car.car_model }</a>
									<input type="button" value="삭제" onclick="deleteFile()">
								</c:otherwise>
							</c:choose>
						</div>
					</td>
				</tr>
				<tr>
					<th style="text-align: center; background:#3399FF; color: white;">이름</th><td><input type="text" id="car_name" name="car_name" value="${car.car_name }"> </td>
				</tr>
				<tr>
					<th style="text-align: center; background:#3399FF; color: white;">종류</th>
					<td>
						<select id="car_type" name="car_type">
			             	<option value="경형" <c:if test="${car.car_type eq '경형' }">selected</c:if>>경형</option>
			             	<option value="중형" <c:if test="${car.car_type eq '중형' }">selected</c:if>>중형</option>
			             	<option value="대형" <c:if test="${car.car_type eq '대형' }">selected</c:if>>대형</option>
			             	<option value="SUV" <c:if test="${car.car_type eq 'SUV' }">selected</c:if>>SUV</option>
			            </select>  
					</td>
				</tr>
				<tr>
					<th style="text-align: center; background:#3399FF; color: white;">연식</th><td><input type="text" id="car_year" name="car_year" value="${car.car_year }"> </td>
				</tr>
				<tr>
					<th style="text-align: center; background:#3399FF; color: white;">가격</th><td><input type="text" id="car_price" name="car_price" value="${car.car_price }"> </td>
				</tr>
				<tr>
					<th style="text-align: center; background:#3399FF; color: white;">인승</th>
					<td>
					
						<select id="car_seater" name="car_seater">
			             	<option value="1" <c:if test="${car.car_seater eq 1 }">selected</c:if>>1인승</option>
			             	<option value="2" <c:if test="${car.car_seater eq 2 }">selected</c:if>>2인승</option>
			             	<option value="3" <c:if test="${car.car_seater eq 3 }">selected</c:if>>3인승</option>
			             	<option value="4" <c:if test="${car.car_seater eq 4 }">selected</c:if>>4인승</option>
			             	<option value="5" <c:if test="${car.car_seater eq 5 }">selected</c:if>>5인승</option>
			             	<option value="6" <c:if test="${car.car_seater eq 6 }">selected</c:if>>6인승</option>
			            </select> 
					</td>
				</tr>
				<tr>
					<th style="text-align: center; background:#3399FF; color: white;">연료</th>
					<td>
						<select id="car_fuel" name="car_fuel">
			             	<option value="가솔린" <c:if test="${car.car_fuel eq '가솔린' }">selected</c:if>>가솔린</option>
			             	<option value="경유" <c:if test="${car.car_fuel eq '경유'  }">selected</c:if>>경유</option>
			             	<option value="LPG" <c:if test="${car.car_fuel eq 'LPG' }">selected</c:if>>LPG</option>
			             	<option value="전기" <c:if test="${car.car_fuel eq '전기' }">selected</c:if>>전기</option>
			            </select>  
					</td>
				</tr>
				<tr>
					<th colspan="2">
						<div align="center">
							<input class="nextBtn" type="submit" value="수정">
							<input class="nextBtn" type="button" value="취소" onclick="history.back()">
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
									
	

</body>
</html>