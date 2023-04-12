<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/main.css">

<script type="text/javascript">
	window.onload = function() {
		document.getElementById('event_list_container').style.display = 'block';
		var coupon1 = document.getElementById("coupon1");
		var coupon2 = document.getElementById("coupon2");
		coupon1.onclick = click_Coupon1
		coupon2.onclick = click_Coupon2
//쿠폰 누를 시 해당쿠폰 제외 쿠폰 사라짐, 다시 누를 시 나타남
	}
	function click_Coupon1() {
		if(document.getElementById('coupon2').style.display == 'none'){
			document.getElementById('coupon2').style.display = 'block';
		} else {
			
		document.getElementById('coupon1').style.display = 'block';
		document.getElementById('coupon2').style.display = 'none';
		
		}
	}
	
	function click_Coupon2() {
		if(document.getElementById('coupon1').style.display == 'none'){
			document.getElementById('coupon1').style.display = 'block';
		}else {
			
		document.getElementById('coupon1').style.display = 'none';
		document.getElementById('coupon2').style.display = 'block';
		}
		
	}
</script>
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
					
					
<!-- 						<div class="mb-3">   여백이 조금 생기는데 없어도 될 것 같음..                   -->
<!-- 							<div class="mb-5 mb-lg-4 mx-n15px mx-md-0 dc-none"id="ve_container_dynamic_root_swiper" style="display: none;"> -->
<!-- 								<div class="mb-3 overflow-hidden"> -->
<!-- 									<div class="swiper" id="ve_dynamic_container_swiper"> -->
<!-- 										<div class="swiper-wrapper"></div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								<hr class="dc-none dc-lg-block my-lg-4"> -->
<!-- 							</div> -->
<!-- 						</div> -->
						
						
						
						<div class="link-container" id="event_list_container">
						
						
							<h3>쿠폰 1</h3> <%--쿠폰 코드 위치 확인용 (나중에 지울것) --%>
							<a
								class="js-btn-event link text-decoration-none w-100 mb-3 bg-shadow border-radius-16 overflow-hidden click-effect-press"
								id="coupon1" data-s="153" data-p="0" data-i="0"
								data-l="event_tap"
								
								style="display: block;">
								<div class="cm-rounded bg-white">
									<img
										class="js-event-list-item-img event-list-item-img center-crop object-fit w-100"
										src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_153_20221226010848.png">
									<div class="px-3 py-2">
										<div class="dc-flex flex-wrap justify-content-between align-items-center text-16 my-md-1">
											<span class="js-event-list-item-txt-peroid event-list-item-txt-peroid text-12 color-grey-5">2022.04.11~2099.12.31</span>
											<span class="js-event-list-item-badge badge badge-pill badge-soft-primary font-weight-normal dc-none">멤버십 전용</span>
										</div>
									</div>
								</div>
							</a>
							
							
							
							
							<h3>쿠폰 2</h3> <%--쿠폰 코드 위치 확인용 (나중에 지울것) --%>
							<a
								class="js-btn-event link text-decoration-none w-100 mb-3 bg-shadow border-radius-16 overflow-hidden click-effect-press"
								id="coupon2" data-s="214" data-p="0" data-i="1"
								data-l="event_tap"
								
								style="display: block;">
								<div class="cm-rounded bg-white">
									<img
										class="js-event-list-item-img event-list-item-img center-crop object-fit w-100"
										src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_214_20230316053616.png">
									<div class="px-3 py-2">
										<div class="dc-flex flex-wrap justify-content-between align-items-center text-16 my-md-1">
											<span class="js-event-list-item-txt-peroid event-list-item-txt-peroid text-12 color-grey-5">2023.03.17~2023.04.14</span>
											<span class="js-event-list-item-badge badge badge-pill badge-soft-primary font-weight-normal dc-none">멤버십 전용</span>
										</div>
									</div>
								</div>
							</a>
							
							
							
						</div>
						
					</div> <!-- 레이아웃 바텀의 센터 div -->
					
				</div>
				
			</div> <%--레이아웃 바텀 div --%>

		</div><!-- 전체 레이아웃의 영역을 나눈 div-->
		
	</div><!-- 전체 레이아웃 div-->
	<jsp:include page="../inc/footer.jsp"/>


</body>
</html>