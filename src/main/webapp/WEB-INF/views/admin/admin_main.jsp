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
									<th><h5 style="color: #0D6FFC">총회원수</h5></th><td><h4>:&nbsp;&nbsp;${map.totalMember }명</h4></td>
								</tr>
								<tr>
									<th><h5 style="color: #0D6FFC">당일 가입한 회원수</h5></th><td><h4>:&nbsp;&nbsp;${map.totayJoin }명</h4></td>
								</tr>
								<tr>
									<th><h5 style="color: #0D6FFC">총매출액</h5></th><td><h4>:&nbsp;&nbsp;${map.totalSales }원</h4></td>
								</tr>
								<tr>
									<th><h5 style="color: #0D6FFC">당일매출액</h5></th><td><h4>:&nbsp;&nbsp;${map.todaySales }원</h4></td>
								</tr>
								<tr>
									<th><h5 style="color: #0D6FFC">당일예약건수</h5></th><td><h4>:&nbsp;&nbsp;${map.todayReservation }건</h4></td>
								</tr>
								<tr>
									<th><h5 style="color: #0D6FFC">출고 가능한 차량 수</h5></th><td><h4>:&nbsp;&nbsp;${map.totalAvailableCar }개</h4></td>
								</tr>
								<tr>
									<th><h5 style="color: #0D6FFC">출고된 차량 수</h5></th><td><h4>:&nbsp;&nbsp;${map.totalShippedCar }개</h4></td>
								</tr>
								<tr>
									<th><h5 style="color: #0D6FFC">미답변 문의 수</h5></th><td><h4>:&nbsp;&nbsp;${map.totalUnansweredMailform }개</h4></td>
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