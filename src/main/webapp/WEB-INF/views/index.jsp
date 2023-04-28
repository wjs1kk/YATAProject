<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<script type="text/javascript">
	/* 지점선택창 누르면 #zoneSelect로 넘어가지면서 불투명도 0 ->1로 변경이 돼서 팝업창이 보임  */
	function zoneSelect() {
		location.href = "#zoneSelect";
	}

	/* 닫기 누르면 앞페이지로 가면서 다시 팝업창이 보이지 않음 */
	function zoneSelect_close() {
		history.back();
	}

	/* 카카오맵 API에서 마커에 클릭이벤트 등록후 index페이지에 request로 지점정보와 같이 포워딩할 예정 */
</script>

<style type="text/css">

/* 메인 시작*/

.index-container-main-banner {
	max-width: 1920px !important;
}

/* 메인 끝 */

/* 	팝업창 초기에 불투명도 0 설정*/
.contents-modal {
	opacity: 0;
}

/* 	 지역선택창 누르면 불투명도 0 ->1로 변경돼서 팝업창이 보임*/
.contents-modal:target {
	top: 50px;
	opacity: 1;
}
</style>

</head>
<body>
	<main id="content" role="main">
		<div class="main-contents">
			<!-- 		nav -->
			<jsp:include page="inc/top.jsp" />
			<div class="pc-mobile-header-container index-page">

				<!-- 지도 선택 팝업창 -->
				<div class="contents-modal" id="zoneSelect">
					<div class="modal fade pr-0 show" id="modal_select_area"
						tabindex="-1" role="dialog" data-backdrop="true"
						data-keyboard="true" data-pageview="1"
						style="z-index: 1050; display: block; padding-right: 17px;"
						aria-modal="true">
						<div
							class="modal-dialog modal-dialog-centered modal-lg modal-dialog-scrollable stretched-modal"
							role="document">
							<div class="modal-content">
								<div class="modal-header">


									<div class="modal-title-wrapper dc-flex align-items-center">
										<h5 class="modal-title line-height-1 text-16 color-grey-3"
											id="modal_common_popup_txt_title">국내 지역 선택</h5>
										<div class="ml-2" id="js_modal_common_title_sub_button"
											style="display: block;">
											<div class="click-effect-press"
												id="modal_header_overseas_toggle_button"
												style="display: flex;">
												<span class="js-overseas-toggle js-overseas-toggle-domestic text-12 color-grey-5 dc-none"
													data-isoverseas="0" style="display: none;">국내지역</span>
											</div>
										</div>
									</div>

									<!-- 닫기 버튼 -->
									<button id="modal_close"
										class="js-btn-modal-close btn btn-xs btn-icon btn-soft-secondary right-auto"
										type="button" data-dismiss="modal" aria-label="Close"
										onclick="zoneSelect_close()">
										<svg aria-hidden="true" width="16" height="16"
											viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
										<path fill="currentColor" d="M11.5,9.5l5-5c0.2-0.2,0.2-0.6-0.1-0.9l-1-1c-0.3-0.3-0.7-0.3-0.9-0.1l-5,5l-5-5C4.3,2.3,3.9,2.4,3.6,2.6l-1,1 C2.4,3.9,2.3,4.3,2.5,4.5l5,5l-5,5c-0.2,0.2-0.2,0.6,0.1,0.9l1,1c0.3,0.3,0.7,0.3,0.9,0.1l5-5l5,5c0.2,0.2,0.6,0.2,0.9-0.1l1-1 c0.3-0.3,0.3-0.7,0.1-0.9L11.5,9.5z">
										</path>
										</svg>
									</button>

								</div>

								<div class="container-address-search dc-none bg-color-bg"
									id="js_container_view_search_address" style="display: none;">
									<div
										class="dc-none js-as-list-item as-list-item w-100 px-3 py-2 click-effect-press"
										id="template_address_search">
										<div
											class="dc-flex justify-content-between align-items-center">
											<div class="dc-flex align-items-baseline">
												<img
													src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiNBQUI0QzYiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTggMTVzNS01Ljk0NiA1LTguODEyQzEzIDMuMzIzIDEwLjc2MSAxIDggMVMzIDMuMzIzIDMgNi4xODhDMyA5LjA1NCA4IDE1IDggMTV6bTAtN2MxLjEwNSAwIDItLjg5NSAyLTJzLS44OTUtMi0yLTItMiAuODk1LTIgMiAuODk1IDIgMiAyeiIgY2xpcC1ydWxlPSJldmVub2RkIi8+Cjwvc3ZnPgo=">
												<div class="ml-2">
													<div class="js-as-txt-title text-14 color-grey-3"></div>
													<div
														class="js-as-txt-road-address text-12 color-grey-5 mt-1"></div>
													<div class="js-as-container-old-address dc-none">
														<div class="dc-flex align-items-center">
															<div class="as-badge-old-address">지번</div>
															<div
																class="js-as-txt-old-address text-12 color-grey-5 ml-1"></div>
														</div>
													</div>
												</div>
											</div>
											<div
												class="js-as-btn-delete-history click-effect-press dc-none">
												<img
													src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiNDNEM0QzQiIGQ9Ik04IDE1YzMuODY2IDAgNy0zLjEzNCA3LTdzLTMuMTM0LTctNy03LTcgMy4xMzQtNyA3IDMuMTM0IDcgNyA3eiIvPgogICAgPHBhdGggZmlsbD0iI2ZmZiIgZmlsbC1ydWxlPSJldmVub2RkIiBkPSJNNy4yOTMgOGwtMi4xMjEgMi4xMjIuNzA3LjcwN0w4IDguNzA3bDIuMTIyIDIuMTIyLjcwNy0uNzA3TDguNzA3IDggMTAuODMgNS44OGwtLjcwNy0uNzA3TDggNy4yOTMgNS44OCA1LjE3MmwtLjcwNy43MDdMNy4yOTMgOHoiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K">
											</div>
										</div>
									</div>
									<div
										class="dc-none js-as-popular-loc as-list-item w-100 p-3 click-effect-press"
										id="template_as_popular_loc_list">
										<div class="dc-flex text-14 color-grey-3">
											<div class="js-aspol-txt-order font-weight-bold"></div>
											<div class="js-aspol-txt-name ml-3"></div>
										</div>
									</div>
								</div>
								
								
								<!-- 지도 팝업창 상단 지도 이동 탭 -->
								<div class="dc-none js-msa-tabs" style="display: block;">
									<button onclick="전포()">전포</button>
									<button onclick="부전()">부전</button> 
								    <button onclick="사상()">사상</button> 
								    <button onclick="개금()">개금</button> 
								</div>
								
								
								<div class="modal-body" body-scroll-lock-ignore="">
									<div class="container-as-contents is-exist-tab"
										id="js_vsas_container_area">
										<div class="" id="js_vsas_container_area_s_kor"
											style="display: block;">
											<div class="dc-flex">
											
												<!-- 지도 영역 -->
												<div id="map"
													style="width: 780px; height: 630px;"></div>
												<script type="text/javascript"
													src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3ac7eaf0b889d2a25e8a1f59096c406a"></script>
												<script>
													var container = document
															.getElementById('map');
													var options = {
														center : new kakao.maps.LatLng(
																35.15849019679627,
																129.06202404131136),
														level : 3
													};

													var map = new kakao.maps.Map(
															container, options);

													var positions = [
															{
																content : '<input type="text" id="res_place" value="전포지점" style="padding:5px; background: #0d6ffc; color: white; border-radius: 10px; font-weight: bold;">',
																latlng : new kakao.maps.LatLng(
																		35.15849019679627,
																		129.06202404131136)
															},
															{
																content : '<input type="text" id="res_place" value="부전지점" style="padding:5px; background: #0d6ffc; color: white; border-radius: 10px; font-weight: bold;">',
																latlng : new kakao.maps.LatLng(
																		35.15975905300518,
																		129.06186404315977)
															},
															{
																content : '<input type="text" id="res_place" value="사상지점" style="padding:5px; background: #0d6ffc; color: white; border-radius: 10px; font-weight: bold;">',
																latlng : new kakao.maps.LatLng(
																		35.158690073109824,
																		129.06113477638084)
															},
															{
																content : '<input type="text" id="res_place" value="개금지점" style="padding:5px; background: #0d6ffc; color: white; border-radius: 10px; font-weight: bold;">',
																latlng : new kakao.maps.LatLng(
																		35.15730753621485,
																		129.06294334538524)
															} ];

													for (var i = 0; i < positions.length; i++) {
														// 마커를 생성합니다
														var marker = new kakao.maps.Marker(
																{
																	map : map, // 마커를 표시할 지도
																	position : positions[i].latlng
																// 마커의 위치
																});
														// 마커에 표시할 인포윈도우를 생성합니다 
														var infowindow = new kakao.maps.InfoWindow(
																{
																	content : positions[i].content
																// 인포윈도우에 표시할 내용
																});
														// 마커에 이벤트를 등록하는 함수 만들고 즉시 호출하여 클로저를 만듭니다
														// 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
														(function(marker,
																infowindow) {
															// 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다 
															kakao.maps.event
																	.addListener(
																			marker,
																			'mouseover',
																			function() {
																				infowindow
																						.open(
																								map,
																								marker);
																			});
															// 마커에 mouseout 이벤트를 등록하고 마우스 아웃 시 인포윈도우를 닫습니다
															kakao.maps.event
																	.addListener(
																			marker,
																			'mouseout',
																			function() {
																				infowindow
																						.close();
																			});

															kakao.maps.event.addListener(
																			marker,
																			'click',
																			function() {
																				$(function() {
																					let res_place = $(
																							"#res_place")
																							.val();
																					
																					location.href = "?res_place="+res_place+"&rentalDatetime="+$('#demo').val();
																				})
																			});
														})(marker, infowindow);
													}
													
													
													//지도 위도 경도 이동 버튼 클릭 이벤트
													function 전포() {
													    // 이동할 위도 경도 위치를 생성합니다 
													    var moveLatLon = new kakao.maps.LatLng(35.15849019679627, 129.06202404131136);
													    
													    // 지도 중심을 부드럽게 이동시킵니다
													    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
													    map.panTo(moveLatLon);            
													}        
													function 부전() {
													    var moveLatLon = new kakao.maps.LatLng(35.15975905300518, 129.06186404315977);
													    map.panTo(moveLatLon);            
													}        
													
													function 사상() {
													    var moveLatLon = new kakao.maps.LatLng(35.158690073109824, 129.06113477638084);
													    map.panTo(moveLatLon);            
													}        
													function 개금() {
													    var moveLatLon = new kakao.maps.LatLng(35.15730753621485, 129.06294334538524);
													    map.panTo(moveLatLon);            
													} 
													

													// 지도에 클릭 이벤트를 등록합니다
													// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
													kakao.maps.event
															.addListener(
																	map,
																	'click',
																	function(
																			mouseEvent) {

																		// 클릭한 위도, 경도 정보를 가져옵니다 
																		var latlng = mouseEvent.latLng;

																		var message = '클릭한 위치의 위도는 '
																				+ latlng
																						.getLat()
																				+ ' 이고, ';
																		message += '경도는 '
																				+ latlng
																						.getLng()
																				+ ' 입니다';

																		var resultDiv = document
																				.getElementById('result');
																		resultDiv.innerHTML = message;

																	});
												</script>

												<p id="result"></p>
												<%--위도 경도 확인용(지도에서 아무 위치 클릭하면 클릭한 위치의 위도와 경도가 나옴)  --%>

											</div>
											<!-- 지도 영역 끝 -->

										</div>


										<div class="container-as-bottom-bar is-pc-modal"
											id="js_csabb_container_bottom_info">
											<div class="box-round-address-info px-3 pt-3"
												id="js_csabb_card_bottom_info">
												<div class="pb-3 click-effect-press"
													id="js_csabb_btn_address_search" style="display: block;">
													<div
														class="container-input-common-search in-bottom-bar box-round-gray">
														<span class="icon mr-2 line-height-1"><img
															src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiNBQUI0QzYiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTYuMjE4IDExLjg0MUMzLjMzNiAxMS44NDEgMSA5LjQxNCAxIDYuNDIxIDEgMy40MjcgMy4zMzYgMSA2LjIxOCAxczUuMjE4IDIuNDI3IDUuMjE4IDUuNDJjMCAuOTc0LS4yNDcgMS44ODctLjY3OSAyLjY3Ni4wNjMuMDQuMTIyLjA5LjE3Ny4xNDZsMy43NzggMy45MjVjLjM4My4zOTguMzgzIDEuMDQzIDAgMS40NDFsLS4wODkuMDkyYy0uMzgzLjM5OC0xLjAwNC4zOTgtMS4zODcgMGwtMy43NzgtMy45MjVjLS4wMi0uMDItLjAzNy0uMDQtLjA1NC0uMDYtLjg4Mi43MDYtMS45ODcgMS4xMjYtMy4xODYgMS4xMjZ6bTAtMi4xNjhjMS43MyAwIDMuMTMxLTEuNDU2IDMuMTMxLTMuMjUyIDAtMS43OTctMS40MDItMy4yNTMtMy4xMy0zLjI1My0xLjczIDAtMy4xMzIgMS40NTYtMy4xMzIgMy4yNTMgMCAxLjc5NiAxLjQwMiAzLjI1MiAzLjEzMSAzLjI1MnoiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K"></span><span
															class="span-txt text-16 color-grey-4"
															id="js_csabb_txt_placeholder">국내 지역명, 역, 건물 이름으로
															검색</span>
													</div>

												</div>
											</div>
										</div>

									</div>
								</div>
								<div class="modal-footer" style="display: none;">
									<button class="btn btn-white border-0" id="modal_btn_cancel"
										type="button" data-dismiss="modal">뒤로</button>
									<button class="btn btn-primary btn-pill btn-lg px-6"
										id="modal_btn_ok" type="button">진행</button>
								</div>
							</div>
						</div>
					</div>
				</div>

				<section
					class="index-container-first-section bg-color-primary-blue-light loading-shimmer"
					id="js_section_main_banner" style="display: block;">
					<div class="dc-lg-block dc-none w-100"
						style="min-height: 0px; background-color: white;">
						<div
							class="swiper w-100 position-relative swiper-initialized swiper-horizontal swiper-pointer-events"
							id="js_index_main_banner_pc_swiper_root">
							<div class="swiper-wrapper w-100"
								id="js_index_main_banner_pc_swiper_container" aria-live="off"
								style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
								<div
									class="js-btn-main-banner click-effect-press w-100 swiper-slide swiper-slide-duplicate swiper-slide-active"
									id="js_index_main_banner_swiper_pc_14"
									data-swiper-slide-index="14" role="group" aria-label="15 / 15"
									style="width: 1903px;">
									<a
										class="dc-block js-index-container-banner click-effect-press"
										data-i="14" href=""
										style="background-color: rgb(198, 219, 237);">
										<div class="container index-container-main-banner">
											<div class="banner-title">
												<p>YA-TA와 함께하는 신나는 여행</p>
												<h1>YA-TA와 함께</h1>
											</div>
											<img
												class="js-index-img-banner index-img-main-banner swiper-lazy swiper-lazy-loaded"
												draggable="false"
												src="https://www.billycar.co.kr/pc_assets/img/contents/main_visual01.png" height="450px">
											<!-- 												 메인 이미지 넣는곳 -->
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</section>


				<!-- 				렌트 정보 구역 -->
				<section class="index-container-search" id="js_index_section_search"
					style="display: block;">
					<div class="d-flex justify-content-center">
						<div class="index-box-search">
							<nav
								class="nav nav-classic nav-borderless dc-flex align-items-start"
								id="js_main_search_nav">
								<li class="nav-item text-center">
									<div
										class="js-index-tab-rent-type nav-link click-effect-press color-grey-4 pt-1 pb-2 text-16 active"
										data-type="1" data-tab="1">예약하기</div>
								</li>
							</nav>
							<!-- 							지역 날짜 시간 적용하는 곳 클릭하면 지역 시간 날짜 설정 가능하게 해야함.-->
							<div class="row mt-3">
								<div class="col-lg-6">
									<div class="form-group mb-0">
										<div
											class="dc-flex align-items-center justify-content-start mb-1">
											<img class="icon mr-1"
												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTciIHZpZXdCb3g9IjAgMCAxNiAxNyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGNsaXAtcGF0aD0idXJsKCN6OXRtdTNmem9hKSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGZpbGw9IiNENEQ0RDQiPgogICAgICAgIDxwYXRoIGQ9Ik04IDIuNWE1IDUgMCAwIDAtNSA1YzAgMS4zNjguODA4IDMuMjY2IDEuOTEgNC44NTQuNTQ1Ljc4NCAxLjE0MiAxLjQ2MyAxLjcwOSAxLjk0QzcuMjA2IDE0Ljc4OSA3LjY4MyAxNSA4IDE1Yy4zMTcgMCAuNzk0LS4yMTIgMS4zODEtLjcwNS41NjctLjQ3OCAxLjE2NC0xLjE1NyAxLjcwOC0xLjk0MUMxMi4xOTIgMTAuNzY2IDEzIDguODY4IDEzIDcuNWE1IDUgMCAwIDAtNS01em0tNiA1YTYgNiAwIDEgMSAxMiAwYzAgMS42Ny0uOTQyIDMuNzcxLTIuMDkgNS40MjQtLjU4LjgzNi0xLjIzMyAxLjU4OC0xLjg4NSAyLjEzNkM5LjM5MyAxNS41OSA4LjY4MyAxNiA4IDE2Yy0uNjgzIDAtMS4zOTMtLjQwOS0yLjAyNS0uOTQtLjY1Mi0uNTQ5LTEuMzA1LTEuMy0xLjg4Ni0yLjEzNkMyLjk0MiAxMS4yNzIgMiA5LjE3IDIgNy41eiIvPgogICAgICAgIDxwYXRoIGQ9Ik04IDUuNWEyIDIgMCAxIDAgMCA0IDIgMiAwIDAgMCAwLTR6bS0zIDJhMyAzIDAgMSAxIDYgMCAzIDMgMCAwIDEtNiAweiIvPgogICAgPC9nPgogICAgPGRlZnM+CiAgICAgICAgPGNsaXBQYXRoIGlkPSJ6OXRtdTNmem9hIj4KICAgICAgICAgICAgPHBhdGggZmlsbD0iI2ZmZiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCAuNSkiIGQ9Ik0wIDBoMTZ2MTZIMHoiLz4KICAgICAgICA8L2NsaXBQYXRoPgogICAgPC9kZWZzPgo8L3N2Zz4K"><label
												class="text-14 color-grey-4 mb-0">지점</label>
										</div>
										<div
											class="index-search-selected-box px-3 py-lg-2 py-25 click-effect-press"
											data-type="location" onclick="zoneSelect()">

											<div
												class="wordbreak-keepall text-14 font-weight-bold color-grey-3 ellipsis"
												id="js_index_txt_location">
												<input type="text" value="${param.res_place }"
													placeholder="대여 위치 선택" readonly="readonly"
													style="border: none; font-weight: bolder;">
											</div>

										</div>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group mb-0">
										<div
											class="dc-flex align-items-center justify-content-start mb-1">
											<img class="icon mr-1"
												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTciIHZpZXdCb3g9IjAgMCAxNiAxNyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGNsaXAtcGF0aD0idXJsKCMwcXVhOHdkMzZhKSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGZpbGw9IiNENEQ0RDQiPgogICAgICAgIDxwYXRoIGQ9Ik04IDIuNWE2IDYgMCAxIDAgMCAxMiA2IDYgMCAwIDAgMC0xMnptLTcgNmE3IDcgMCAxIDEgMTQgMCA3IDcgMCAwIDEtMTQgMHoiLz4KICAgICAgICA8cGF0aCBkPSJNOCA0LjVhLjUuNSAwIDAgMSAuNS41djMuNUgxMGEuNS41IDAgMCAxIDAgMUg4YS41LjUgMCAwIDEtLjUtLjVWNWEuNS41IDAgMCAxIC41LS41eiIvPgogICAgPC9nPgogICAgPGRlZnM+CiAgICAgICAgPGNsaXBQYXRoIGlkPSIwcXVhOHdkMzZhIj4KICAgICAgICAgICAgPHBhdGggZmlsbD0iI2ZmZiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCAuNSkiIGQ9Ik0wIDBoMTZ2MTZIMHoiLz4KICAgICAgICA8L2NsaXBQYXRoPgogICAgPC9kZWZzPgo8L3N2Zz4K"><label
												class="text-14 color-grey-4 mb-0">대여 및 반납날짜 선택하기</label>
										</div>
										<div
											class="index-search-selected-box px-3 py-25 click-effect-press"
											id="js_index_rent_date_view" data-type="period">
											<!-- 날짜 선택창 -->
											<!-- 날짜선택 -->
													<input type="text" id="demo" name="demo" value="" style="border:0 solid black; background-color:transparent; width:250px; font-weight: bolder;" />
														<script>
														$(function () {
														    $('#demo').daterangepicker({
														        "locale": {
														            "format": "MM.DD HH:mm",
														            "separator": " ~ ",
														            "applyLabel": "확인",
														            "cancelLabel": "취소",
														            "fromLabel": "From",
														            "autoclose": "true",
														            "toLabel": "To",
														            "todayHighlight" : "true",
														            "customRangeLabel": "Custom",
														            "weekLabel": "W",
														            "daysOfWeek": ["월", "화", "수", "목", "금", "토", "일"],
														            "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
														            "firstDay": 1
														        },
														        "startDate": new Date(),
														        "endDate": new Date(),
														        "drops": "down",
														        timePicker: true,
														        timePicker24Hour: true
														        
														    }, function (start, end) {
														    	var startDate = start.format('MM-DD HH');
														    	var endDate = end.format('MM-DD HH');
														    	var time = Math.ceil((end - start) / (1000*60*60));
														    	$('#time').text(time + " 시간");
														    });
														});
														</script>
														<!-- 	시간표시 -->
														<p id="time" style="border:0 solid black; background-color:transparent;">시간</p>
										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- 						차량 검색버튼  -->
						<!-- 						창용 차량 검색버튼에 rent화면에 장소데이터 전송  -->
						<div class="js-index-btn-search ml-2 dc-lg-block dc-none text-decoration-none click-effect-press" onclick="rent1()">
							<div class="index-btn-search border-radius-normal dc-flex flex-column justify-content-center align-items-center" id="search" >
								<img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzUiIGhlaWdodD0iMzYiIHZpZXdCb3g9IjAgMCAzNSAzNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Im0yMyAyMi41IDcgNyIgc3Ryb2tlPSIjZmZmIiBzdHJva2Utd2lkdGg9IjMiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgogICAgPHBhdGggZD0iTTE1LjUgMjMuNWM1LjI0NyAwIDkuNS00LjAzIDkuNS05cy00LjI1My05LTkuNS05Yy01LjI0NiAwLTkuNSA0LjAzLTkuNSA5czQuMjU0IDkgOS41IDl6IiBzdHJva2U9IiNmZmYiIHN0cm9rZS13aWR0aD0iMyIvPgo8L3N2Zz4K">
								<div class="text-16 font-weight-bold mt-2" >차량 검색</div>
							</div>
						</div>
					</div>
				</section>

				<div class="index-search-history"></div>

				<!-- 				추천 여행지 영역 -->
				<section class="bg-white index-section-small-padding dc-lg-block" id="section_main_recommend_location_pc" style="display: block;">
					<div class="container">
						<div class="text-24 color-grey-3">YATA 추천 여행지</div>
						<div class="text-14 color-grey-5">이번엔 여기로 떠나볼까요?</div>
						<div class="position-relative">
							<div class="index-pc-swiper-root-recommend-location swiper-root overflow-hidden swiper-initialized swiper-horizontal swiper-pointer-events" id="js_index_pc_swiper_root_recommend_location">
								<div class="swiper-wrapper" id="js_index_pc_swiper_container_recommend_location" aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">
									<div class="swiper-slide swiper-slide-active" role="group" aria-label="1 / 11" style="width: 190px;">
										<div class="js-index-recommend-location" id="js_pc_index_recommend_location_0">
											<div class="index-wrapper-box-recommend-location-pc">
												<a class="dc-block index-box-recommend-location click-effect-press text-decoration-none" data-title="해운대" data-i="0" href="https://map.naver.com/v5/search/%ED%95%B4%EC%9A%B4%EB%8C%80%20%EB%86%80%EA%B1%B0%EB%A6%AC?c=15,0,0,0,dh"><div class="index-box-recommend-location-up js-main-img-recommend-location" style="background-image: url(&quot;https://post-phinf.pstatic.net/MjAxNzA4MDFfMiAg/MDAxNTAxNTU1MDYwNzcz.KQ4kkG9xSZ67lO8OzYWlX6L8fduoXhJ53vhtNh7piLwg.0PXWV4GqdSGy0BqUYoOPmHW4HJUU4cJwmbHq7FYVug8g.JPEG/_DSC7331%ED%8C%94%EB%A0%88%EB%93%9C%EC%8B%9C%EC%A6%88%EC%95%BC%EA%B2%BD.jpg?type=w1200&quot;);"></div>
													<div class="index-box-recommend-location-down text-center">
														<div class="js-index-recommend-loc-title text-20 font-weight-bold color-grey-3 mt-2">해운대</div>
														<div class="js-index-recommend-loc-desc text-12 color-grey-5 wordbreak-keepall">부산 대표 관광지</div>
													</div></a>
											</div>
										</div>
									</div>
									<div class="swiper-slide swiper-slide-next" role="group" aria-label="2 / 11" style="width: 190px;">
										<div class="js-index-recommend-location" id="js_pc_index_recommend_location_1">
											<div class="index-wrapper-box-recommend-location-pc">
												<a class="dc-block index-box-recommend-location click-effect-press text-decoration-none" data-title="광안리" data-i="1" href="https://map.naver.com/v5/search/%EA%B4%91%EC%95%88%EB%A6%AC%20%EB%86%80%EA%B1%B0%EB%A6%AC?c=13,0,0,0,dh"><div class="index-box-recommend-location-up js-main-img-recommend-location" style="background-image: url(&quot;https://www.visitbusan.net/uploadImgs/files/cntnts/20191229160530047_oen&quot;);"></div>
													<div class="index-box-recommend-location-down text-center">
														<div class="js-index-recommend-loc-title text-20 font-weight-bold color-grey-3 mt-2">광안리</div>
														<div class="js-index-recommend-loc-desc text-12 color-grey-5 wordbreak-keepall">야경이 아름다운 광안대교</div>
													</div></a>
											</div>
										</div>
									</div>
									<div class="swiper-slide" role="group" aria-label="3 / 11" style="width: 190px;">
										<div class="js-index-recommend-location" id="js_pc_index_recommend_location_2">
											<div class="index-wrapper-box-recommend-location-pc">
												<a class="dc-block index-box-recommend-location click-effect-press text-decoration-none" data-title="남포동" data-i="2" href="https://map.naver.com/v5/search/%EB%82%A8%ED%8F%AC%EB%8F%99%20%EB%86%80%EA%B1%B0%EB%A6%AC?c=13,0,0,0,dh"><div class="index-box-recommend-location-up js-main-img-recommend-location" style="background-image: url(&quot;https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/product/2470640579/B.jpg?636000000&quot;);"></div>
													<div class="index-box-recommend-location-down text-center">
														<div class="js-index-recommend-loc-title text-20 font-weight-bold color-grey-3 mt-2">남포동</div>
														<div class="js-index-recommend-loc-desc text-12 color-grey-5 wordbreak-keepall">다양한 영화와 먹거리</div>
													</div></a>
											</div>
										</div>
									</div>
									<div class="swiper-slide" role="group" aria-label="4 / 11" style="width: 190px;">
										<div class="js-index-recommend-location" id="js_pc_index_recommend_location_3">
											<div class="index-wrapper-box-recommend-location-pc">
												<a class="dc-block index-box-recommend-location click-effect-press text-decoration-none" data-title="태종대" data-i="3" href="https://map.naver.com/v5/search/%ED%83%9C%EC%A2%85%EB%8C%80%20%EB%86%80%EA%B1%B0%EB%A6%AC?c=15,0,0,0,dh"><div class="index-box-recommend-location-up js-main-img-recommend-location" style="background-image: url(&quot;https://www.visitbusan.net/uploadImgs/files/cntnts/20191222180830266_oen&quot;);"></div>
													<div class="index-box-recommend-location-down text-center">
														<div class="js-index-recommend-loc-title text-20 font-weight-bold color-grey-3 mt-2">태종대</div>
														<div class="js-index-recommend-loc-desc text-12 color-grey-5 wordbreak-keepall">해안절벽이 보이는 숲</div>
													</div></a>
											</div>
										</div>
									</div>
									<div class="swiper-slide" role="group" aria-label="5 / 11" style="width: 190px;">
										<div class="js-index-recommend-location" id="js_pc_index_recommend_location_4">
											<div class="index-wrapper-box-recommend-location-pc">
												<a class="dc-block index-box-recommend-location click-effect-press text-decoration-none" data-title="영도" data-i="4" href="https://map.naver.com/v5/search/%EC%98%81%EB%8F%84%20%EB%86%80%EA%B1%B0%EB%A6%AC?c=12,0,0,0,dh"><div class="index-box-recommend-location-up js-main-img-recommend-location" style="background-image: url(&quot;https://image14.hanatour.com/uploads/2020/03/20191122-FAN06055_63343935.jpg&quot;);"></div>
													<div class="index-box-recommend-location-down text-center">
														<div class="js-index-recommend-loc-title text-20 font-weight-bold color-grey-3 mt-2">영도</div>
														<div class="js-index-recommend-loc-desc text-12 color-grey-5 wordbreak-keepall">유니크한
															매력의 도시</div>
													</div></a>
											</div>
										</div>
									</div>
									<div class="swiper-slide" role="group" aria-label="6 / 11" style="width: 190px;">
										<div class="js-index-recommend-location" id="js_pc_index_recommend_location_5">
											<div class="index-wrapper-box-recommend-location-pc">
												<a class="dc-block index-box-recommend-location click-effect-press text-decoration-none" data-title="기장" data-i="5" href="https://map.naver.com/v5/search/%EA%B8%B0%EC%9E%A5%20%EB%86%80%EA%B1%B0%EB%A6%AC?c=12,0,0,0,dh"><div class="index-box-recommend-location-up js-main-img-recommend-location" style="background-image: url(&quot;https://png.pngtree.com/thumb_back/fw800/background/20230322/pngtree-haedong-yonggungsa-temple-on-sea-shore-busan-photo-image_2095026.jpg&quot;);"></div>
													<div class="index-box-recommend-location-down text-center">
														<div class="js-index-recommend-loc-title text-20 font-weight-bold color-grey-3 mt-2">기장</div>
														<div class="js-index-recommend-loc-desc text-12 color-grey-5 wordbreak-keepall">바다 앞 해동용궁사</div>
													</div></a>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</section>

			<!-- 				리뷰 영역 데이터 받아와서 foreach 해야함.-->
			<div class="is-only-none-member">
				<section
					class="bg-color-very-very-light-blue index-section-padding is-only-none-member opacity-0 animated-fadein"
					id="js_section_main_reviews">
					<div class="container">
						<div class="text-center">
							<div class="text-32 font-weight-bold color-grey-2">YATA 고객
								리뷰</div>
							<div class="text-16 color-grey-4">YATA는 이미 전국의 고객들로부터 사랑받고
								있습니다.</div>
						</div>
						<div class="row mt-5">
							<div class="col">
								<div
									class="swiper swiper-initialized swiper-horizontal swiper-pointer-events"
									id="js_index_review_swiper_root">
									<div class="swiper-wrapper" id="js_index_review_swiper"
										aria-live="polite"
										style="transform: translate3d(0px, 0px, 0px);">
										<div class="index-box-review swiper-slide swiper-slide-active"
											role="group" aria-label="1 / 12" style="margin-right: 20px;">
											<div class="text-center">
												<div class="text-40 font-weight-bold text-primary">${review[0].review_star }</div>
												<div
													class="index-box-review-container-rate d-flex justify-content-center">
													<img class="index-box-review-img-rate-star"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEzIDEzIj4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGQ9Ik0zLjg4NyAxMS40NjVhLjU0Mi41NDIgMCAwIDEtLjc4Ni0uNTdMMy42IDcuOTgzbC0yLjExNC0yLjA2YS41NDIuNTQyIDAgMCAxIC4zLS45MjVsMi45MjItLjQyNCAxLjMwNi0yLjY0OGEuNTQyLjU0MiAwIDAgMSAuOTcyIDBsMS4zMDYgMi42NDggMi45MjIuNDI0Yy40NDUuMDY1LjYyMi42MS4zLjkyNEw5LjQgNy45ODRsLjUgMi45MWEuNTQyLjU0MiAwIDAgMS0uNzg3LjU3MUw2LjUgMTAuMDkxbC0yLjYxMyAxLjM3NHoiLz4KPC9zdmc+Cg=="><img
														class="index-box-review-img-rate-star"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEzIDEzIj4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGQ9Ik0zLjg4NyAxMS40NjVhLjU0Mi41NDIgMCAwIDEtLjc4Ni0uNTdMMy42IDcuOTgzbC0yLjExNC0yLjA2YS41NDIuNTQyIDAgMCAxIC4zLS45MjVsMi45MjItLjQyNCAxLjMwNi0yLjY0OGEuNTQyLjU0MiAwIDAgMSAuOTcyIDBsMS4zMDYgMi42NDggMi45MjIuNDI0Yy40NDUuMDY1LjYyMi42MS4zLjkyNEw5LjQgNy45ODRsLjUgMi45MWEuNTQyLjU0MiAwIDAgMS0uNzg3LjU3MUw2LjUgMTAuMDkxbC0yLjYxMyAxLjM3NHoiLz4KPC9zdmc+Cg=="><img
														class="index-box-review-img-rate-star"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEzIDEzIj4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGQ9Ik0zLjg4NyAxMS40NjVhLjU0Mi41NDIgMCAwIDEtLjc4Ni0uNTdMMy42IDcuOTgzbC0yLjExNC0yLjA2YS41NDIuNTQyIDAgMCAxIC4zLS45MjVsMi45MjItLjQyNCAxLjMwNi0yLjY0OGEuNTQyLjU0MiAwIDAgMSAuOTcyIDBsMS4zMDYgMi42NDggMi45MjIuNDI0Yy40NDUuMDY1LjYyMi42MS4zLjkyNEw5LjQgNy45ODRsLjUgMi45MWEuNTQyLjU0MiAwIDAgMS0uNzg3LjU3MUw2LjUgMTAuMDkxbC0yLjYxMyAxLjM3NHoiLz4KPC9zdmc+Cg=="><img
														class="index-box-review-img-rate-star"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEzIDEzIj4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGQ9Ik0zLjg4NyAxMS40NjVhLjU0Mi41NDIgMCAwIDEtLjc4Ni0uNTdMMy42IDcuOTgzbC0yLjExNC0yLjA2YS41NDIuNTQyIDAgMCAxIC4zLS45MjVsMi45MjItLjQyNCAxLjMwNi0yLjY0OGEuNTQyLjU0MiAwIDAgMSAuOTcyIDBsMS4zMDYgMi42NDggMi45MjIuNDI0Yy40NDUuMDY1LjYyMi42MS4zLjkyNEw5LjQgNy45ODRsLjUgMi45MWEuNTQyLjU0MiAwIDAgMS0uNzg3LjU3MUw2LjUgMTAuMDkxbC0yLjYxMyAxLjM3NHoiLz4KPC9zdmc+Cg=="><img
														class="index-box-review-img-rate-star"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEzIDEzIj4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGQ9Ik0zLjg4NyAxMS40NjVhLjU0Mi41NDIgMCAwIDEtLjc4Ni0uNTdMMy42IDcuOTgzbC0yLjExNC0yLjA2YS41NDIuNTQyIDAgMCAxIC4zLS45MjVsMi45MjItLjQyNCAxLjMwNi0yLjY0OGEuNTQyLjU0MiAwIDAgMSAuOTcyIDBsMS4zMDYgMi42NDggMi45MjIuNDI0Yy40NDUuMDY1LjYyMi42MS4zLjkyNEw5LjQgNy45ODRsLjUgMi45MWEuNTQyLjU0MiAwIDAgMS0uNzg3LjU3MUw2LjUgMTAuMDkxbC0yLjYxMyAxLjM3NHoiLz4KPC9zdmc+Cg==">
												</div>
												<div class="mt-3">
													<div class="text-16 text-left">
															<!-- 리뷰 내용 -->
															${review[0].review_content }
													</div>
												</div>
												<div class="index-box-review-bottom-box text-left">
													<div class="index-txt-review-bottom-box-top text-14">제주에서
														1일 렌트하신</div>
													<div class="text-16-b text-white">${review[0].member_name }님</div>
												</div>
											</div>
										</div>
										<div class="index-box-review swiper-slide swiper-slide-next"
											role="group" aria-label="2 / 12" style="margin-right: 20px;">
											<div class="text-center">
												<div class="text-40 font-weight-bold text-primary">${review[1].review_star }</div>
												<div
													class="index-box-review-container-rate d-flex justify-content-center">
													<img class="index-box-review-img-rate-star"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEzIDEzIj4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGQ9Ik0zLjg4NyAxMS40NjVhLjU0Mi41NDIgMCAwIDEtLjc4Ni0uNTdMMy42IDcuOTgzbC0yLjExNC0yLjA2YS41NDIuNTQyIDAgMCAxIC4zLS45MjVsMi45MjItLjQyNCAxLjMwNi0yLjY0OGEuNTQyLjU0MiAwIDAgMSAuOTcyIDBsMS4zMDYgMi42NDggMi45MjIuNDI0Yy40NDUuMDY1LjYyMi42MS4zLjkyNEw5LjQgNy45ODRsLjUgMi45MWEuNTQyLjU0MiAwIDAgMS0uNzg3LjU3MUw2LjUgMTAuMDkxbC0yLjYxMyAxLjM3NHoiLz4KPC9zdmc+Cg=="><img
														class="index-box-review-img-rate-star"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEzIDEzIj4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGQ9Ik0zLjg4NyAxMS40NjVhLjU0Mi41NDIgMCAwIDEtLjc4Ni0uNTdMMy42IDcuOTgzbC0yLjExNC0yLjA2YS41NDIuNTQyIDAgMCAxIC4zLS45MjVsMi45MjItLjQyNCAxLjMwNi0yLjY0OGEuNTQyLjU0MiAwIDAgMSAuOTcyIDBsMS4zMDYgMi42NDggMi45MjIuNDI0Yy40NDUuMDY1LjYyMi42MS4zLjkyNEw5LjQgNy45ODRsLjUgMi45MWEuNTQyLjU0MiAwIDAgMS0uNzg3LjU3MUw2LjUgMTAuMDkxbC0yLjYxMyAxLjM3NHoiLz4KPC9zdmc+Cg=="><img
														class="index-box-review-img-rate-star"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEzIDEzIj4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGQ9Ik0zLjg4NyAxMS40NjVhLjU0Mi41NDIgMCAwIDEtLjc4Ni0uNTdMMy42IDcuOTgzbC0yLjExNC0yLjA2YS41NDIuNTQyIDAgMCAxIC4zLS45MjVsMi45MjItLjQyNCAxLjMwNi0yLjY0OGEuNTQyLjU0MiAwIDAgMSAuOTcyIDBsMS4zMDYgMi42NDggMi45MjIuNDI0Yy40NDUuMDY1LjYyMi42MS4zLjkyNEw5LjQgNy45ODRsLjUgMi45MWEuNTQyLjU0MiAwIDAgMS0uNzg3LjU3MUw2LjUgMTAuMDkxbC0yLjYxMyAxLjM3NHoiLz4KPC9zdmc+Cg=="><img
														class="index-box-review-img-rate-star"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEzIDEzIj4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGQ9Ik0zLjg4NyAxMS40NjVhLjU0Mi41NDIgMCAwIDEtLjc4Ni0uNTdMMy42IDcuOTgzbC0yLjExNC0yLjA2YS41NDIuNTQyIDAgMCAxIC4zLS45MjVsMi45MjItLjQyNCAxLjMwNi0yLjY0OGEuNTQyLjU0MiAwIDAgMSAuOTcyIDBsMS4zMDYgMi42NDggMi45MjIuNDI0Yy40NDUuMDY1LjYyMi42MS4zLjkyNEw5LjQgNy45ODRsLjUgMi45MWEuNTQyLjU0MiAwIDAgMS0uNzg3LjU3MUw2LjUgMTAuMDkxbC0yLjYxMyAxLjM3NHoiLz4KPC9zdmc+Cg=="><img
														class="index-box-review-img-rate-star"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEzIDEzIj4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGQ9Ik0zLjg4NyAxMS40NjVhLjU0Mi41NDIgMCAwIDEtLjc4Ni0uNTdMMy42IDcuOTgzbC0yLjExNC0yLjA2YS41NDIuNTQyIDAgMCAxIC4zLS45MjVsMi45MjItLjQyNCAxLjMwNi0yLjY0OGEuNTQyLjU0MiAwIDAgMSAuOTcyIDBsMS4zMDYgMi42NDggMi45MjIuNDI0Yy40NDUuMDY1LjYyMi42MS4zLjkyNEw5LjQgNy45ODRsLjUgMi45MWEuNTQyLjU0MiAwIDAgMS0uNzg3LjU3MUw2LjUgMTAuMDkxbC0yLjYxMyAxLjM3NHoiLz4KPC9zdmc+Cg==">
												</div>
												<div class="mt-3">
													<div class="text-16 text-left">
														${review[1].review_content }
													</div>
												</div>
												<div class="index-box-review-bottom-box text-left">
													<div class="index-txt-review-bottom-box-top text-14">부산에서
														1일 렌트하신</div>
													<div class="text-16-b text-white">${review[1].member_name }님</div>
												</div>
											</div>
										</div>
										<div class="index-box-review swiper-slide" role="group"
											aria-label="3 / 12" style="margin-right: 20px;">
											<div class="text-center">
												<div class="text-40 font-weight-bold text-primary">${review[2].review_star }</div>
												<div
													class="index-box-review-container-rate d-flex justify-content-center">
													<img class="index-box-review-img-rate-star"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEzIDEzIj4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGQ9Ik0zLjg4NyAxMS40NjVhLjU0Mi41NDIgMCAwIDEtLjc4Ni0uNTdMMy42IDcuOTgzbC0yLjExNC0yLjA2YS41NDIuNTQyIDAgMCAxIC4zLS45MjVsMi45MjItLjQyNCAxLjMwNi0yLjY0OGEuNTQyLjU0MiAwIDAgMSAuOTcyIDBsMS4zMDYgMi42NDggMi45MjIuNDI0Yy40NDUuMDY1LjYyMi42MS4zLjkyNEw5LjQgNy45ODRsLjUgMi45MWEuNTQyLjU0MiAwIDAgMS0uNzg3LjU3MUw2LjUgMTAuMDkxbC0yLjYxMyAxLjM3NHoiLz4KPC9zdmc+Cg=="><img
														class="index-box-review-img-rate-star"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEzIDEzIj4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGQ9Ik0zLjg4NyAxMS40NjVhLjU0Mi41NDIgMCAwIDEtLjc4Ni0uNTdMMy42IDcuOTgzbC0yLjExNC0yLjA2YS41NDIuNTQyIDAgMCAxIC4zLS45MjVsMi45MjItLjQyNCAxLjMwNi0yLjY0OGEuNTQyLjU0MiAwIDAgMSAuOTcyIDBsMS4zMDYgMi42NDggMi45MjIuNDI0Yy40NDUuMDY1LjYyMi42MS4zLjkyNEw5LjQgNy45ODRsLjUgMi45MWEuNTQyLjU0MiAwIDAgMS0uNzg3LjU3MUw2LjUgMTAuMDkxbC0yLjYxMyAxLjM3NHoiLz4KPC9zdmc+Cg=="><img
														class="index-box-review-img-rate-star"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEzIDEzIj4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGQ9Ik0zLjg4NyAxMS40NjVhLjU0Mi41NDIgMCAwIDEtLjc4Ni0uNTdMMy42IDcuOTgzbC0yLjExNC0yLjA2YS41NDIuNTQyIDAgMCAxIC4zLS45MjVsMi45MjItLjQyNCAxLjMwNi0yLjY0OGEuNTQyLjU0MiAwIDAgMSAuOTcyIDBsMS4zMDYgMi42NDggMi45MjIuNDI0Yy40NDUuMDY1LjYyMi42MS4zLjkyNEw5LjQgNy45ODRsLjUgMi45MWEuNTQyLjU0MiAwIDAgMS0uNzg3LjU3MUw2LjUgMTAuMDkxbC0yLjYxMyAxLjM3NHoiLz4KPC9zdmc+Cg=="><img
														class="index-box-review-img-rate-star"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEzIDEzIj4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGQ9Ik0zLjg4NyAxMS40NjVhLjU0Mi41NDIgMCAwIDEtLjc4Ni0uNTdMMy42IDcuOTgzbC0yLjExNC0yLjA2YS41NDIuNTQyIDAgMCAxIC4zLS45MjVsMi45MjItLjQyNCAxLjMwNi0yLjY0OGEuNTQyLjU0MiAwIDAgMSAuOTcyIDBsMS4zMDYgMi42NDggMi45MjIuNDI0Yy40NDUuMDY1LjYyMi42MS4zLjkyNEw5LjQgNy45ODRsLjUgMi45MWEuNTQyLjU0MiAwIDAgMS0uNzg3LjU3MUw2LjUgMTAuMDkxbC0yLjYxMyAxLjM3NHoiLz4KPC9zdmc+Cg=="><img
														class="index-box-review-img-rate-star"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEzIDEzIj4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGQ9Ik0zLjg4NyAxMS40NjVhLjU0Mi41NDIgMCAwIDEtLjc4Ni0uNTdMMy42IDcuOTgzbC0yLjExNC0yLjA2YS41NDIuNTQyIDAgMCAxIC4zLS45MjVsMi45MjItLjQyNCAxLjMwNi0yLjY0OGEuNTQyLjU0MiAwIDAgMSAuOTcyIDBsMS4zMDYgMi42NDggMi45MjIuNDI0Yy40NDUuMDY1LjYyMi42MS4zLjkyNEw5LjQgNy45ODRsLjUgMi45MWEuNTQyLjU0MiAwIDAgMS0uNzg3LjU3MUw2LjUgMTAuMDkxbC0yLjYxMyAxLjM3NHoiLz4KPC9zdmc+Cg==">
												</div>
												<div class="mt-3">
													<div class="text-16 text-left">
														${review[2].review_content }
													</div>
												</div>
												<div class="index-box-review-bottom-box text-left">
													<div class="text-16-b text-white">${review[2].member_name }님</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>

	</main>


	<!-- 	footer -->
	<jsp:include page="/WEB-INF/views/inc/footer.jsp" />
</body>
</html>