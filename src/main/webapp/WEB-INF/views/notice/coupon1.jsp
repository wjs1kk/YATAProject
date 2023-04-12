<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/main.css">
</head>
<body>

	<div class="main-contents">   <!-- 전체 레이아웃 div  -->
	
		<!-- 상위 탭-->
		<jsp:include page="../inc/top.jsp"/>

		<div class="pc-mobile-header-container"> <!--  전체 레이아웃 내의 영역을 나눈 div  -->
		
			<div class="pc-header space-2 text-center dc-none dc-lg-block"> <!-- 레이아웃 탑  -->
				<div class="container">
					<h2 class="text-grey-3 underline-bg dc-inline-block">이벤트</h2>
					<p class="text-grey-5 mb-0">한 식구이신 회원분들만을 위한 이벤트를 모아봤습니다 :)</p>
				</div>
			</div>
	
			<div class="container space-top-lg-2"> <!-- 레이아웃 바텀 div -->
			
				<div class="row">
		
					<!-- 레이아웃 바텀의 왼쪽 탭 -->
					<div class="col-4 text-left dc-lg-block dc-none">
						<div>
							<h3 class="color-grey-3 text-14 list-border-bottom">이벤트</h3>
							<div class="list-group list-group-flush">
								<a class="py-2 text-decoration-none px-0 event-left-menu-doing click-effect-press active">진행중인 이벤트</a>
								<a class="py-2 text-decoration-none px-0 event-left-menu-close click-effect-press">종료된 이벤트</a>
							</div>
						</div>
					</div>
					
			
					<!-- 레이아웃 바텀의 센터 -->
					<div class="col-12 col-lg-8">				
						
						<div class="link-container" id="event_list_container">
						

						
						</div>
						
					</div> <!-- 레이아웃 바텀의 센터 div -->
					
				</div>
				
			</div> <%--레이아웃 바텀 div --%>

		</div><!-- 전체 레이아웃의 영역을 나눈 div-->
		
	</div><!-- 전체 레이아웃 div-->
	<jsp:include page="../inc/footer.jsp"/>


</body>
</html>