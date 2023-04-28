<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link href="css/inc.css" rel="stylesheet" type="text/css"> -->
<!-- <link href="css/main.css" rel="stylesheet" type="text/css"> -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
</head>
<body>
		<!-- 상위 탭-->
	<header>
		<jsp:include page="../inc/top_admin.jsp"></jsp:include>
	</header>
	
	<div class="main-contents">   <!-- 전체 레이아웃 div  -->
		<div class="pc-mobile-header-container"> <!--  전체 레이아웃 내의 영역을 나눈 div  -->
			<div class="pc-header space-2 text-center dc-none dc-lg-block"> <!-- 레이아웃 탑  -->
				<div class="container">
					<h2 class="text-grey-3 underline-bg dc-inline-block">관리자 페이지</h2>
				</div>
			</div>
			<div class="container space-top-lg-2"> <!-- 레이아웃 바텀 div -->
				<div class="row">
					<!-- 레이아웃 바텀의 왼쪽 탭 -->
					<div class="col-4 text-left dc-lg-block dc-none">
						<div>
							<h5 class="color-grey-3 text-14 list-border-bottom">관리자 메뉴</h5>
							<div class="list-group list-group-flush">
<!-- 								<a class="py-2 text-decoration-none px-0 event-left-menu-doing click-effect-press active">진행중인 이벤트</a> -->
<!-- 								<a class="py-2 text-decoration-none px-0 event-left-menu-close click-effect-press">종료된 이벤트</a> -->
								<a class="py-2 text-decoration-none px-0 event-left-menu-doing click-effect-press active" href="AdminMemberList.ad">회원 목록 조회</a>
								<a class="py-2 text-decoration-none px-0 event-left-menu-doing click-effect-press active" href="AdminCarList.ad">자동차 목록 조회</a>
								<a class="py-2 text-decoration-none px-0 event-left-menu-doing click-effect-press active" href="AdminCarRegist.ad">신규 차량 등록</a>	
								<a class="py-2 text-decoration-none px-0 event-left-menu-doing click-effect-press active" href="AdminCouponList.ad">쿠폰 조회</a>
								<a class="py-2 text-decoration-none px-0 event-left-menu-doing click-effect-press active" href="AdminCouponRegist.ad">쿠폰 등록</a>
								<a class="py-2 text-decoration-none px-0 event-left-menu-doing click-effect-press active" href="AdminCarShippedList.ad">출고된 차량 목록 조회</a>
								<a class="py-2 text-decoration-none px-0 event-left-menu-doing click-effect-press active" href="AdminReservationList.ad">예약 목록 조회</a>
								<a class="py-2 text-decoration-none px-0 event-left-menu-doing click-effect-press active" href="AdminMailForm.ad">1:1 문의 내역 목록 조회</a>
								<a class="py-2 text-decoration-none px-0 event-left-menu-doing click-effect-press active" href="UnansweredMailForm.ad">미답변 1:1 문의 내역 목록</a>
								<a class="py-2 text-decoration-none px-0 event-left-menu-doing click-effect-press active" href="AdminLicenseForm.ad">면허증 등록 신청 목록</a>
							</div>
						</div>
					</div>
					<!-- 레이아웃 바텀의 센터 -->
					<div class="col-12 col-lg-8">
						<div class="link-container" id="event_list_container">
						
						
							<table>
								<tr>
									<th>
										<h4 style="color: #0D6FFC">
											<img alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABBBJREFUaEPtmceKFUEUhr9RTJj2KmIYRTGiC/UZFAzomDdmMGfRhaILc3aj61HMYdRXMAsqYsBRjA9gGEyg8g9dULes7q6+dbkyMgcEmT516vxVJ9V/a2jhUtPC/acVwL++wXJvoD0wKfk3CuiVAHkP3AeuAJeBHxkA+wHbgDbAJeBqjr7XVDkApgK7ATmQJS+BDcDFFCUBFXgjr4D1GfrRANomjq8tGDZ7gU3AL2fdJ6Crx9ZhYI1HPxrAAWB1QeeN+h5go7NW4bM1xd6h0L1CQ0hhc87Z7DtwHDgFPE6+DQNmAYsB5YktU5JYt/82EpgHLAI6BOj/hTcEgBx56sS8knU88CjlBOXYNaCn9b0RGJKSqCMSfVMMtOwd0B/4mXXrIQCmA6ctIzr5McDDnHASiNvOTUwDzqes0+3ddW5idnLDqVuFAFCIzLQsHAFWBubCUWCZpXsSmJOx9iCwyvp+BpgRewPPgYGWEZ3+nUAAY4Gblu4zYHDG2tHAPev7a6BvLIDPQBfLiErfl0AA0lW5NCJb3TLWKpG/Wd/1/06VBiAH5EiISPejpSgw3TMWdgS+VhqAG0IKCyVniIwDbliKsjUoY6E6szq0kTdAn9gbUOKpthtRYq4I8R44Biy1dOuBuRlr9ydd2KicBVQFUyWkCtUBqgZGVEZ1Cw9yQOg0lcB2Q8sqo+oRSmCFkRFVLB1gFAA58CRpKsbQB2BCBghVkwagh7Xzi6SR+RrTUOA60NvS1x4aGLMm2uAHzWTPlCjDJ6xR4jcwHFDzWeCcvL5p/BYoW3Tq0l3inLx0NL5cyAvVkBAyNjSQadwtR3YCm52FW4Ad4D1E5c7ykI2KANDDQ45oxi8iejvIeXecVnn19QQVCXVjV9+7ZxEAxoBCQTN+bQ4KxbxuTK8zn6gIaIgz8jbRV+UJlnIAyHg7YGIS10pYM0VqgjRPSjmeNUkOALZbT0o9Qe0uHASiXABBxquh1AqgGqectcd/ewPqvmpeSlTD+3SOPO0moOK8ke8GNK/sCuB9IvEg3khlVqSWT3y80TpX3wYg3kfdVpxMNaUob6Rnp7gpjSclbXxf8qGazpu9ivJG4qiaCTZzAyG8j2I4RpRDhjfy8UDKOTUzW8RszAcWengj5WeDAKTxPhqX86iTcgEV5Y18+nqt1QqA+2BROxfzkEZaleu0u87HG8kXlwE06zQ3iQ2xH0h1AhDD+8SCKcobiZOyx+x6AYjhfWIBuLxR3qNfkXHL2rRRAGJ4n1gALm8kvslHuZt9VAhsTqpJAJrrqSXVHi+K7l+i3wogNobKiID/7wY0IZofIsTF2D8yVOCAc00U3b9EXzmgjqufiiT6aUi/rFRTiu5fol/tilPxg2kFUPEjLWiwxd/AHx883yjeNSCcAAAAAElFTkSuQmCC">
											&nbsp;총회원수
										</h4>
									</th>
									<td>
										<h4>:&nbsp;&nbsp;${map.totalMember }명</h4>
									</td>
								</tr>
								<tr><td></td></tr>
								<tr><td></td></tr>
								<tr>
									<th>
										<h4 style="color: #0D6FFC">
											<img alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABBBJREFUaEPtmceKFUEUhr9RTJj2KmIYRTGiC/UZFAzomDdmMGfRhaILc3aj61HMYdRXMAsqYsBRjA9gGEyg8g9dULes7q6+dbkyMgcEmT516vxVJ9V/a2jhUtPC/acVwL++wXJvoD0wKfk3CuiVAHkP3AeuAJeBHxkA+wHbgDbAJeBqjr7XVDkApgK7ATmQJS+BDcDFFCUBFXgjr4D1GfrRANomjq8tGDZ7gU3AL2fdJ6Crx9ZhYI1HPxrAAWB1QeeN+h5go7NW4bM1xd6h0L1CQ0hhc87Z7DtwHDgFPE6+DQNmAYsB5YktU5JYt/82EpgHLAI6BOj/hTcEgBx56sS8knU88CjlBOXYNaCn9b0RGJKSqCMSfVMMtOwd0B/4mXXrIQCmA6ctIzr5McDDnHASiNvOTUwDzqes0+3ddW5idnLDqVuFAFCIzLQsHAFWBubCUWCZpXsSmJOx9iCwyvp+BpgRewPPgYGWEZ3+nUAAY4Gblu4zYHDG2tHAPev7a6BvLIDPQBfLiErfl0AA0lW5NCJb3TLWKpG/Wd/1/06VBiAH5EiISPejpSgw3TMWdgS+VhqAG0IKCyVniIwDbliKsjUoY6E6szq0kTdAn9gbUOKpthtRYq4I8R44Biy1dOuBuRlr9ydd2KicBVQFUyWkCtUBqgZGVEZ1Cw9yQOg0lcB2Q8sqo+oRSmCFkRFVLB1gFAA58CRpKsbQB2BCBghVkwagh7Xzi6SR+RrTUOA60NvS1x4aGLMm2uAHzWTPlCjDJ6xR4jcwHFDzWeCcvL5p/BYoW3Tq0l3inLx0NL5cyAvVkBAyNjSQadwtR3YCm52FW4Ad4D1E5c7ykI2KANDDQ45oxi8iejvIeXecVnn19QQVCXVjV9+7ZxEAxoBCQTN+bQ4KxbxuTK8zn6gIaIgz8jbRV+UJlnIAyHg7YGIS10pYM0VqgjRPSjmeNUkOALZbT0o9Qe0uHASiXABBxquh1AqgGqectcd/ewPqvmpeSlTD+3SOPO0moOK8ke8GNK/sCuB9IvEg3khlVqSWT3y80TpX3wYg3kfdVpxMNaUob6Rnp7gpjSclbXxf8qGazpu9ivJG4qiaCTZzAyG8j2I4RpRDhjfy8UDKOTUzW8RszAcWengj5WeDAKTxPhqX86iTcgEV5Y18+nqt1QqA+2BROxfzkEZaleu0u87HG8kXlwE06zQ3iQ2xH0h1AhDD+8SCKcobiZOyx+x6AYjhfWIBuLxR3qNfkXHL2rRRAGJ4n1gALm8kvslHuZt9VAhsTqpJAJrrqSXVHi+K7l+i3wogNobKiID/7wY0IZofIsTF2D8yVOCAc00U3b9EXzmgjqufiiT6aUi/rFRTiu5fol/tilPxg2kFUPEjLWiwxd/AHx883yjeNSCcAAAAAElFTkSuQmCC">
											&nbsp;당일 가입한 회원수
										</h4>
									</th>
									<td>
										<h4>:&nbsp;&nbsp;${map.totayJoin }명</h4>
									</td>
								</tr>
								<tr><td></td></tr>
								<tr><td></td></tr>
								<tr>
									<th>
										<h4 style="color: #0D6FFC">
										<img alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAltJREFUaEPtmrtOVUEUhj9qUKRFLcXEHqhUFKwAteIJFFrovLRGY2erPgFUoFTcURNJfAAMUHErgajUmD+Zk0wGztkzm73PmUn2qk5OZs/835q1Zq19aaM8GwE+mukngPkylmorY1Iz5z5w3fw+AG6UsVaZAGeO4FLWKmVSI7wC8Am5agcaeKkKoWaE0CNgDLhrjsl2n0XrjDkEgutF3hy4DXw2wi+h+dylwfUiD8B9YBa4VqTyvAUvFECe/wl0lSC+KSH07YKwmQM+AL+AUwssulNICbvgeP4F8L7ObkQHoKR9ZomV55+mVAd+A8qBmj0A1lIC+At0WIKvAP9SBrgKCKqeRZcDbgg9BFZTAnCT+AvwJCWAIWDREfwKeJfKMSqd68A9R/BXq5DZORFdDkh3D7BRQCuhir0HfAdmgKW8rUloL6R1tANq5orsh9SiPAe2QkHyAGiNW6adVmdalB2byi4Yb8sLUFtg0LqhuekUOm8R1kBB9APbvhdfFqDROo2SWBW9F5gEHjuT6KAYiB3A1vcSeOsI1pG97APRqh1wtakojlp/fjL3x5kMsQCoLbE9vgncyVQPxAKgzvaPJVgFUc1ipsUC0AmcWGoFo/8yLRYAHcd2NU4uhPTyYzjVJH4NvHFiRTuykhk/LUxiJW0fMOV4Xpp1k6RTyctCcqD2zqvba+Z8g45MK7Hje3kIgP3Oy3f+kHESr8c0arG9LRYAhc044O35GmEIQJEhpMcxu8APYNo3YS/alhAA7201A6O8pQyBqAB8vFWFUAMvVSHU6hBK/mOPpnxu8x9SoHox9ruGXAAAAABJRU5ErkJggg==">
										&nbsp;총매출액
										</h4>
									</th>
									<td>
										<h4>:&nbsp;&nbsp;${map.totalSales }원</h4>
									</td>
								</tr>
								<tr><td></td></tr>
								<tr><td></td></tr>
								<tr>
									<th>
										<h4 style="color: #0D6FFC">
										<img alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAltJREFUaEPtmrtOVUEUhj9qUKRFLcXEHqhUFKwAteIJFFrovLRGY2erPgFUoFTcURNJfAAMUHErgajUmD+Zk0wGztkzm73PmUn2qk5OZs/835q1Zq19aaM8GwE+mukngPkylmorY1Iz5z5w3fw+AG6UsVaZAGeO4FLWKmVSI7wC8Am5agcaeKkKoWaE0CNgDLhrjsl2n0XrjDkEgutF3hy4DXw2wi+h+dylwfUiD8B9YBa4VqTyvAUvFECe/wl0lSC+KSH07YKwmQM+AL+AUwssulNICbvgeP4F8L7ObkQHoKR9ZomV55+mVAd+A8qBmj0A1lIC+At0WIKvAP9SBrgKCKqeRZcDbgg9BFZTAnCT+AvwJCWAIWDREfwKeJfKMSqd68A9R/BXq5DZORFdDkh3D7BRQCuhir0HfAdmgKW8rUloL6R1tANq5orsh9SiPAe2QkHyAGiNW6adVmdalB2byi4Yb8sLUFtg0LqhuekUOm8R1kBB9APbvhdfFqDROo2SWBW9F5gEHjuT6KAYiB3A1vcSeOsI1pG97APRqh1wtakojlp/fjL3x5kMsQCoLbE9vgncyVQPxAKgzvaPJVgFUc1ipsUC0AmcWGoFo/8yLRYAHcd2NU4uhPTyYzjVJH4NvHFiRTuykhk/LUxiJW0fMOV4Xpp1k6RTyctCcqD2zqvba+Z8g45MK7Hje3kIgP3Oy3f+kHESr8c0arG9LRYAhc044O35GmEIQJEhpMcxu8APYNo3YS/alhAA7201A6O8pQyBqAB8vFWFUAMvVSHU6hBK/mOPpnxu8x9SoHox9ruGXAAAAABJRU5ErkJggg==">
										&nbsp;당일매출액
										</h4>
									</th>
									<td>
										<h4>:&nbsp;&nbsp;${map.todaySales }원</h4>
									</td>
								</tr>
								<tr><td></td></tr>
								<tr><td></td></tr>
								<tr>
									<th>
										<h4 style="color: #0D6FFC">
										<img alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAABYpJREFUaEPVmnXIZUUYh581wAYbA1SwRVEMsMXAxl7F7sVEQbFQLOzAbsVYE+wOVExUREUUVPxHV2zBBpPnY2Z5Hc+5Z879dq/uwOXju2femd9v5u1zJzDjjR2AyxPsSRNmMPy7ArcBsyTcU9oI7AgcDKwBzN9C8nvgPeAZ4Fzgh56HsQ1wTT5J4OEO+RK80/9FYDbgVmDnnmA+SzKv9JD7FFgsnySw+ADZJvC/AxPLG7geOKAHiDj1C2BN4JNK+b+KeW3asAtwe1Abxf4A9gEmR6HVgTcqN2+bpn7uVblGDYGB4N0nErgYOCpsrn6rSu+3AJoLOBY4JTzXLhYGfq0g0UWgE3xJ4Clg07Cx7ur+CiASXD7Mcw0Nu2sMIlAFviTwNLBJ2HUr4LEuFMANwP5hnrdyQYVcG4Fq8CWBq4FJYeNjgAsrgBwOXBbmTQb2rJBrItALfEngSOCSsPGNlR5pXeDFIKc3WhT4s4NESWDiIG/TtlY0YnVXO8hDn75OxUnOCgh63jBXUi/3JKBfzxFW0amuctA6kcAigAEpDz2KUdiFu4buc48w6SzgpJ4E4vQq8KUK+f/nyQ3mxdYv1KMNk9d/V3j4LLDxkASqwTcRuBnYO2x8NnBi1/EDK6S8KE99F1h5SAJd26klOpux3KkM3+Ycd4YV3gZW7VoROA44ZxrdQMV2TMm5U0lAQ/wyGJOeYomO/KYp0aqJBdrWzDVoG+a0EnDuC8B6QehU4LSWjZrAewArAV93gHNNDb0viYEq5J6HAleEzRVYEvitALR1SjWi6/NUzfOfGPJke4s1pbBzA+bq84TVdiu8jI+eBzYIcwRvBI7eqDegvgJtOfilwBFhMSOtLjUOjV0VyuM7YMXkivviGHp+G4HlUhodn6syj4adlgb0UnOE7+4DLEdHNgYV9YLdMiAxbV6liMxHAxcVaA8DrhwVg0EEVAdPOBqpCV/MPGcCnivUy0i6E/DAKEh0tVXKFPubVLxEF6m6WYpaoeXxE7DRNChRO8+gi8BCwIeFR/Jkty9WVtUeLG7LeKDdjLfOHkiii4DCRtXzilUOAbydOA4Cri2+8yZ0wU09H2vnfZOdLQB8BbyUHMWrFfXE2FY1BLQBfX6sDX5OTa+y4D+zIY3WJrSdaNhbALcAC7Ycr/WFJe5bwJuptmhsFNQQcI+l0mIxuH0EWLioKnm43hkttYANAm9uw6I92KnngLXJQ8AJZV5WS8BNLFgsXOJ4PeX9PxbfHwhcVdiEUwx2Rvro2WoI5DnejPanilWrUNygqXNn52K7hlxpc+CeBLgNpOmHp+rpGmNcx25ILE9LWTNR2zhjh9bnBpxv/asXigHO7w16VmUabRzLADYHYnabn7flTu6xFrBaqkVU09h3Ut5M1iy5NwFl5gQsGe2DxvFaykT1JnEY7MyrrJNz2tE38TsdODksasNAYkMRUE7vYYK3bAH2A2BbwL/lMHfSS9k80C0/0qZXDd9rNxpyHtrSfOMhoKwdC3V37WLDX5Jexx5TD6ytUxs7eX1toFxddbo7GV757N70ksT0Y1qM6UJAYBrddalfXwK1TaPu3pQaVeMhMt0IZFD7ARZCManLz8xqTb01/mHHdCcgMN2mzd3SQ2XQT6Z0XLfb1TstiY6EQFap41OvSBtpGh+n3EjV+rbySkZGIOPxBZ6+30LfWNA0jAc2kb0RP++0zPNmo2uW9Njb0/F6oZrD81Xt+anA6ZpvC0cStiZ9xeVf35z6niKqpZnqZqMikEGbGlgv7w7M3sWk47lr3DFqAhmTEdRXuYKo6buWXB5PcWfMJkahQoMOUzsx+/TjC5YmFxzlbdv4fnjqrwL+awIRnAFRY7Wvmj+2ND1pKz9/QaDu/2P8nwgMZRYzPIG/AW7OIqUKhUMUAAAAAElFTkSuQmCC">
										&nbsp;당일예약건수
										</h4>
									</th>
									<td>
										<h4>:&nbsp;&nbsp;${map.todayReservation }건</h4>
									</td>
								</tr>
								<tr><td></td></tr>
								<tr><td></td></tr>
								<tr>
									<th>
										<h4 style="color: #0D6FFC">
										<img alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAhZJREFUaEPtmT0vREEUhp9NhEYkJBq0WsLfoCOhEB+VCpFIFIQEDYUIGo1CJIiIxv9ATWk1vqOS+MrZ3E1mb2bv7j07a+/IVU7mzHmf855xZ2YzeP6X8Vw/KUCtHRQH+oE9oK1GYu6BSeBCk18A7oB2TbDDmCzQoVlPAH40gVWIUe3HfwmgqoTCkbDzqrw2B1QLpQDovkmpA4rWyYeke0AqkaQWKmamfKmngTPbBB8ARPcnMAKchCF8ARDdX8A4cGhC+ARgdSJJALYP6CBwBNQZVS9wIukAojsSwgcAgRgKet90Qjb2sC8AxSCyPgHkIY6T+l+o3FNwwRHENwek+ClABQfQglDtaTR1IHUgqEDVWshVhf9knSS9C6mAk/K0qBIP5I4StX7c1YrPPQrbPt9rwIKx6gcwZ9yERoENoMGYswosxVTiJI8N4BroMsRMAbshcTPAljF2BfTEBHCSxwbwDjQaYpqB15A4GXs2xiSmKSaAkzzlALQALyFxMvbkGECVxwYg7dBtiJN22Q4BzAKbxtgl0BvTASd5bACyIRdDm3geOAjGxoB1oN6YswIsxwRwkscG0ArcxujpN6ATeIgJ4CRPsVvQAHAaPD1G6foOXg3OY4rPT684T9Q1Thbfj3BCKj8BaMWbEOo8pe6hYrM8rPYFbSInyJvgJ9Ed4FFZ+XCYOk8pAEf6qrdMClC92pa3svcO/AIr8aOOCuhspQAAAABJRU5ErkJggg==">
										&nbsp;출고 가능한 차량 수
										</h4>
									</th>
									<td>
										<h4>:&nbsp;&nbsp;${map.totalAvailableCar }개</h4>
									</td>
								</tr>
								<tr><td></td></tr>
								<tr><td></td></tr>
								<tr>
									<th>
										<h4 style="color: #0D6FFC">
										<img alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAhZJREFUaEPtmT0vREEUhp9NhEYkJBq0WsLfoCOhEB+VCpFIFIQEDYUIGo1CJIiIxv9ATWk1vqOS+MrZ3E1mb2bv7j07a+/IVU7mzHmf855xZ2YzeP6X8Vw/KUCtHRQH+oE9oK1GYu6BSeBCk18A7oB2TbDDmCzQoVlPAH40gVWIUe3HfwmgqoTCkbDzqrw2B1QLpQDovkmpA4rWyYeke0AqkaQWKmamfKmngTPbBB8ARPcnMAKchCF8ARDdX8A4cGhC+ARgdSJJALYP6CBwBNQZVS9wIukAojsSwgcAgRgKet90Qjb2sC8AxSCyPgHkIY6T+l+o3FNwwRHENwek+ClABQfQglDtaTR1IHUgqEDVWshVhf9knSS9C6mAk/K0qBIP5I4StX7c1YrPPQrbPt9rwIKx6gcwZ9yERoENoMGYswosxVTiJI8N4BroMsRMAbshcTPAljF2BfTEBHCSxwbwDjQaYpqB15A4GXs2xiSmKSaAkzzlALQALyFxMvbkGECVxwYg7dBtiJN22Q4BzAKbxtgl0BvTASd5bACyIRdDm3geOAjGxoB1oN6YswIsxwRwkscG0ArcxujpN6ATeIgJ4CRPsVvQAHAaPD1G6foOXg3OY4rPT684T9Q1Thbfj3BCKj8BaMWbEOo8pe6hYrM8rPYFbSInyJvgJ9Ed4FFZ+XCYOk8pAEf6qrdMClC92pa3svcO/AIr8aOOCuhspQAAAABJRU5ErkJggg==">
										&nbsp;출고된 차량 수
										</h4>
									</th>
									<td>
										<h4>:&nbsp;&nbsp;${map.totalShippedCar }개</h4>
									</td>
								</tr>
								<tr><td></td></tr>
								<tr><td></td></tr>
								<tr>
									<th>
										<h4 style="color: #0D6FFC">
										<img alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAxFJREFUaEPtmUuoTlEUx39XHokolOfQQCGPQpmIMhADkkgeeRtI7tjYGCNJlGcMvAojkiSMiDAy81YGrgy8W7d9vvbd9j7nW+fsfb7z1T3Dc9be5//f671XD13+9DQY/xhgOvAXeA189WFtIoFZwCFgBTDMgP4J3AIOAi9sIk0jsBY4C4wMWMZ3YCNwPfveJALrgXPA0AKzFhILM000hUAI/CtAMM5wSF0D1sg7HwF5txvYDswERpV09HfAHuBGwXof+F/m/2JO8uwETlj7iE+MB/pcAlOMGpeWBO0uewtMy9krBH4TcMlZJ9qwNTEfeGITGALcBmKBl//nEdCAl70KCewFjkU6edkmz4S04LcApy1sP4AJrgk9Nt6dyd0EdgAfI5KSrbTgffJeJ+4DRltgJwMfGghewugC4KUbhSRlp0xyMU5eotMG4LIvkaUksA644CSp38BW4LxHy23L21EoFYG2wRgiKvnUBFRgAK38gEwcWwNaMFr5foWl0oAWjFa+5TYpCGjBaOWDoTKGCWnBaOX/C1gxNaAFo5X35tRYBLRgtPLBgiAGAWkDLzpJSjKmryQuUwvlVjNVCUgJ/gaQuil7agMfI4zOlaYiEfhVwHGzd7Czq6qBA8Bhi0CrzHX0ri3kZLlodqrZJ9gYVSVwFVhtge0FjjjgyzpsW2G9CgGx/0+muc4wzwOeWgTKgpctkhNw7f8LMBGQm7UlprdeqYhObrRJTsC1/2+A9KrjAnEvLzr5liQn4Np/XrzWgq/FhD6bm4HcRAO8B/YBV4oEne/JNWCHOfvf4gv3gbvAPeAZ8EcJvhYNZIlmOPAgAuDanbjEoaqWJDchFZoSwoMEOj07GNRA12nAvdydlOBmul1flkGLlNDZIyPWsb7F9ik/AhZZQjIa2pXghrqIhHR3J82YNZN9CCwuIrAfOFq0e4e+y8zOnpG1YNgaGAHIkGNOh0CGfnsHWO7pD/rlXUeVFu4MsKwhJAT8ZlMQeiGFxqwy1twGzHamNnXwkr7iOXDK+IKbDwZg6HSorHwgXU/gHyoi/DGtX6VrAAAAAElFTkSuQmCC">
										&nbsp;미답변 문의 수
										</h4>
									</th>
									<td>
										<h4>:&nbsp;&nbsp;${map.totalUnansweredMailform }개</h4>
									</td>
								</tr>
								
							</table>
							
						</div>
					</div> <!-- 레이아웃 바텀의 센터 div -->
				</div>
			</div> <%--레이아웃 바텀 div --%>
		</div><!-- 전체 레이아웃의 영역을 나눈 div-->
	</div><!-- 전체 레이아웃 div-->
	
	
	
	<jsp:include page="../inc/footer.jsp"/>
	
</body>
</html>