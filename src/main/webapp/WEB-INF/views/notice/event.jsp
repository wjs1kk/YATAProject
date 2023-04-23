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
		
		var modalC = document.getElementById("modal_close");
		var modalC2 = document.getElementById("modal_close2");
		
		coupon1.onclick = click_Coupon1
		coupon2.onclick = click_Coupon2
		modalC.onclick = close
		modalC2.onclick = close2
	}
	//쿠폰 누를 시 해당 쿠폰의 쿠폰창 오픈
	function click_Coupon1() {
		document.getElementById("modal_select_area").style.display = 'block';
	}

	function click_Coupon2() {
		document.getElementById("modal_select_area2").style.display = 'block';
	}

// 	폼닫기
	function close() {
		document.getElementById("modal_select_area").style.display = 'none';			
	}
	
	function close2() {
		document.getElementById("modal_select_area2").style.display = 'none';			
	}	
</script>
</head>
<body>
<!-- 쿠폰땜에 있는거 무시하삼 -->
<input type="hidden" name="coup_idx" value="0">											

	<div class="main-contents">
		<!-- 전체 레이아웃 div  -->

		<!-- 상위 탭-->
		<jsp:include page="../inc/top.jsp" />

		<div class="pc-mobile-header-container">
			<!--  전체 레이아웃 내의 영역을 나눈 div  -->
			<div class="pc-header space-2 text-center dc-none dc-lg-block">
				<!-- 레이아웃 탑  -->
				<div class="container">
					<h2 class="text-grey-3 underline-bg dc-inline-block">이벤트</h2>
					<p class="text-grey-5 mb-0">한 식구이신 회원분들만을 위한 이벤트를 모아봤습니다 :)</p>
				</div>
			</div>
			<div class="container space-top-lg-2">
				<!-- 레이아웃 바텀 div -->

				<div class="row">

					<!-- 레이아웃 바텀의 왼쪽 탭 -->
					<div class="col-4 text-left dc-lg-block dc-none">
						<div>
							<h3 class="color-grey-3 text-14 list-border-bottom">이벤트</h3>
							<div class="list-group list-group-flush">
								<a
									class="py-2 text-decoration-none px-0 event-left-menu-doing click-effect-press active">진행중인
									이벤트</a> <a
									class="py-2 text-decoration-none px-0 event-left-menu-close click-effect-press">종료된
									이벤트</a>
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


							<h3>쿠폰 1</h3>
							<%--쿠폰 코드 위치 확인용 (나중에 지울것) --%>
							<a
								class="js-btn-event link text-decoration-none w-100 mb-3 bg-shadow border-radius-16 overflow-hidden click-effect-press"
								id="coupon1" data-s="153" data-p="0" data-i="0"
								data-l="event_tap" style="display: block;">
								<div class="cm-rounded bg-white">
									<img
										class="js-event-list-item-img event-list-item-img center-crop object-fit w-100"
										src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_153_20221226010848.png">
									<div class="px-3 py-2">
										<div
											class="dc-flex flex-wrap justify-content-between align-items-center text-16 my-md-1">
											<span
												class="js-event-list-item-txt-peroid event-list-item-txt-peroid text-12 color-grey-5">2022.04.11~2099.12.31</span>
											<span
												class="js-event-list-item-badge badge badge-pill badge-soft-primary font-weight-normal dc-none">멤버십
												전용</span>
										</div>
									</div>
								</div>
							</a>
							<!-- 	쿠폰발급창 -->
							<div class="contents-modal" id="eventSelect">
								<div class="modal fade pr-0 show" id="modal_select_area"
									tabindex="-1" role="dialog" data-backdrop="true"
									data-keyboard="true" data-pageview="1"
									style="z-index: 1050; display: hidden; padding-right: 17px;"
									aria-modal="true">
									<div
										class="modal-dialog modal-dialog-centered modal-lg modal-dialog-scrollable stretched-modal"
										role="document">
										<div class="modal-content">
											<div class="modal-header">
												<div class="modal-title-wrapper dc-flex align-items-center">
													<h5 class="modal-title line-height-1 text-16 color-grey-3"
														id="modal_common_popup_txt_title">쿠폰</h5>
													<div class="ml-2" id="js_modal_common_title_sub_button"
														style="display: block;"></div>
												</div>

												<!-- 닫기 버튼 -->
												<button id="modal_close"
													class="js-btn-modal-close btn btn-xs btn-icon btn-soft-secondary right-auto"
													type="button" data-dismiss="modal" aria-label="Close">
													<svg aria-hidden="true" width="16" height="16"
														viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
										<path fill="currentColor"
															d="M11.5,9.5l5-5c0.2-0.2,0.2-0.6-0.1-0.9l-1-1c-0.3-0.3-0.7-0.3-0.9-0.1l-5,5l-5-5C4.3,2.3,3.9,2.4,3.6,2.6l-1,1 C2.4,3.9,2.3,4.3,2.5,4.5l5,5l-5,5c-0.2,0.2-0.2,0.6,0.1,0.9l1,1c0.3,0.3,0.7,0.3,0.9,0.1l5-5l5,5c0.2,0.2,0.6,0.2,0.9-0.1l1-1 c0.3-0.3,0.3-0.7,0.1-0.9L11.5,9.5z">
										</path>
										</svg>
												</button>

											</div>
											<img src="resources/images/10P_coupon.jpg">
											<div class="text-center display-3 font-weight-bold">
													<button class="w-50 h-10 btn btn-lg btn-primary text-28" style="top: 700px; left: 200px; position: absolute;"
													onclick="location.href='couponEnroll'">쿠폰 발급</button>																										
											</div>
										</div>
									</div>
								</div>
							</div>




							<h3>쿠폰 2</h3>
							<%--쿠폰 코드 위치 확인용 (나중에 지울것) --%>
							<a
								class="js-btn-event link text-decoration-none w-100 mb-3 bg-shadow border-radius-16 overflow-hidden click-effect-press"
								id="coupon2" data-s="214" data-p="0" data-i="1"
								data-l="event_tap" style="display: block;">
								<div class="cm-rounded bg-white">
									<img
										class="js-event-list-item-img event-list-item-img center-crop object-fit w-100"
										src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_214_20230316053616.png">
									<div class="px-3 py-2">
										<div
											class="dc-flex flex-wrap justify-content-between align-items-center text-16 my-md-1">
											<span
												class="js-event-list-item-txt-peroid event-list-item-txt-peroid text-12 color-grey-5">2023.03.17~2023.04.14</span>
											<span
												class="js-event-list-item-badge badge badge-pill badge-soft-primary font-weight-normal dc-none">멤버십
												전용</span>
										</div>
									</div>
								</div>
							</a>
							<!-- 	쿠폰발급창2 -->
							<div class="contents-modal" id="eventSelect2">
								<div class="modal fade pr-0 show" id="modal_select_area2"
									tabindex="-1" role="dialog" data-backdrop="true"
									data-keyboard="true" data-pageview="1"
									style="z-index: 1050; display: hidden; padding-right: 17px;"
									aria-modal="true">
									<div
										class="modal-dialog modal-dialog-centered modal-lg modal-dialog-scrollable stretched-modal"
										role="document">
										<div class="modal-content">
											<div class="modal-header">
												<div class="modal-title-wrapper dc-flex align-items-center">
													<h5 class="modal-title line-height-1 text-16 color-grey-3"
														id="modal_common_popup_txt_title">쿠폰2</h5>
													<div class="ml-2" id="js_modal_common_title_sub_button"
														style="display: block;"></div>
												</div>

												<!-- 닫기 버튼 -->
												<button id="modal_close2"
													class="js-btn-modal-close btn btn-xs btn-icon btn-soft-secondary right-auto"
													type="button" data-dismiss="modal" aria-label="Close">
													<svg aria-hidden="true" width="16" height="16"
														viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
										<path fill="currentColor"
															d="M11.5,9.5l5-5c0.2-0.2,0.2-0.6-0.1-0.9l-1-1c-0.3-0.3-0.7-0.3-0.9-0.1l-5,5l-5-5C4.3,2.3,3.9,2.4,3.6,2.6l-1,1 C2.4,3.9,2.3,4.3,2.5,4.5l5,5l-5,5c-0.2,0.2-0.2,0.6,0.1,0.9l1,1c0.3,0.3,0.7,0.3,0.9,0.1l5-5l5,5c0.2,0.2,0.6,0.2,0.9-0.1l1-1 c0.3-0.3,0.3-0.7,0.1-0.9L11.5,9.5z">
										</path>
										</svg>
												</button>

											</div>
											<img src="resources/images/30P_coupon.jpg">
											<div class="text-center display-3 font-weight-bold">
													<button class="w-50 h-10 btn btn-lg btn-primary text-28" style="top: 750px; left: 200px; position: absolute;"
													onclick="location.href='couponEnroll2'">쿠폰 발급2</button>																										
											</div>
										</div>
									</div>
								</div>
							</div>


						</div>

					</div>
					<!-- 레이아웃 바텀의 센터 div -->

				</div>

			</div>
			<%--레이아웃 바텀 div --%>

		</div>
		<!-- 전체 레이아웃의 영역을 나눈 div-->

	</div>
	<!-- 전체 레이아웃 div-->
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>