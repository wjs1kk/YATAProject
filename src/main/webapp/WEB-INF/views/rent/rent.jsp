<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<link rel="stylesheet" href="resources/css/rent.css">
<script type="text/javascript">

$(document).ready(function() {
	
  // 검색 버튼 클릭 이벤트
  $('#search_button').on('click', function() {
// 	debugger;
    var car_model = $('#search_box').val();
    
	//  AJAX 요청 보내기
    $.ajax({
	      type: 'GET',
	      url: '/search',
	      data: { car_model: $('#search_box').val() },
	      success: function(data) {
	      },
	      error: function(xhr, textStatus, errorThrown) {
	        console.log(xhr.responseText);
	      }
	    });
    
  });
});
</script>
<!-- 창용 지도 관련  -->
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
<!-- 지도 관련 -->
</head>
<body>
	<main id="content" role="main">
		<div class="main-contents">
			<div class="container-main-view">
				<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- 				지도영역 -->
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
												<img class="mr-1"
													src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik00LjMyNyAyIDIgNC45MWg4TTcuNjczIDEwIDEwIDcuMDlIMiIgc3Ryb2tlPSIjOTk5IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KPC9zdmc+Cg=="><span
													class="js-overseas-toggle js-overseas-toggle-domestic text-12 color-grey-5 dc-none"
													data-isoverseas="0" style="display: none;">국내지역</span><span
													class="js-overseas-toggle js-overseas-toggle-overseas text-12 color-grey-5"
													data-isoverseas="1" style="display: block;">해외지역</span>
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
								<div class="dc-none js-msa-tabs" style="display: block;">
									<nav
										class="common-nav-tabs nav nav-classic nav-borderless nav-fill bg-white">
										<li class="nav-item text-center" style="width: 50%"><div
												class="nav-link js-vsas-item-menu clickable active" data="0">국내</div></li>
										<li class="nav-item text-center" style="width: 50%"><div
												class="nav-link js-vsas-item-menu clickable" data="1">지도
												검색</div></li>
									</nav>
								</div>
								<div class="dc-none js-msa-overseas-tabs" style="display: none;">
									<nav
										class="common-nav-tabs nav nav-classic nav-borderless nav-fill bg-white">
										<li class="nav-item text-center" style="width: 50%"><div
												class="nav-link js-vsas-item-menu clickable" data="2">해외</div></li>
										<li class="nav-item text-center" style="width: 50%"><div
												class="nav-link js-vsas-item-menu clickable" data="3">지도
												검색</div></li>
									</nav>
								</div>
								<div class="modal-body" body-scroll-lock-ignore="">
									<div class="container-as-contents is-exist-tab"
										id="js_vsas_container_area">
										<div class="" id="js_vsas_container_area_s_kor"
											style="display: block;">


											<div class="dc-flex">
												<!-- 지도 영역 -->
												<div id="map"
													style="width: 800px; height: 700px; border-radius: 20px"></div>
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
																content : '<input type="text" id="place" value="전포지점" style="padding:5px; background: #20c997; color: white; border-radius: 10px; font-weight: bold;">',
																latlng : new kakao.maps.LatLng(
																		35.15849019679627,
																		129.06202404131136)
															},
															{
																content : '<input type="text" id="place" value="부전지점" style="padding:5px; background: #20c997; color: white; border-radius: 10px; font-weight: bold;">',
																latlng : new kakao.maps.LatLng(
																		35.15975905300518,
																		129.06186404315977)
															},
															{
																content : '<input type="text" id="place" value="사상지점" style="padding:5px; background: #20c997; color: white; border-radius: 10px; font-weight: bold;">',
																latlng : new kakao.maps.LatLng(
																		35.158690073109824,
																		129.06113477638084)
															},
															{
																content : '<input type="text" id="place" value="개금지점" style="padding:5px; background: #20c997; color: white; border-radius: 10px; font-weight: bold;">',
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
																					let place = $(
																							"#place")
																							.val();
																					
																					location.href = "?place="
																							+ place;
																				})
																			});
														})(marker, infowindow);
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

										<input type="button" value="전포지점">

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
<!-- 				지도영역 끝 -->
				<!-- 대여장소 대여날짜 선택하는 상단 바 -->
				<div class="" id="container_search_list_view">
					<div class="dc-none dc-lg-block container-pc-carlist-controller"
						id="js_container_search_list_controller">
						<div class="container carlist-controller" id="js_vsl_search_area">
							<div class="row">
								<div class="col-lg-4">
									<div class="js-container-search-list-area-all h-100">
										<div class="js-vsl-btn-select-area click-effect-press dc-flex box-round-gray px-25 py-1 align-items-center h-100" data-type="location" onclick="zoneSelect()">
											<img class="mr-1" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiNBQUI0QzYiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTggMTVzNS01Ljk0NiA1LTguODEyQzEzIDMuMzIzIDEwLjc2MSAxIDggMVMzIDMuMzIzIDMgNi4xODhDMyA5LjA1NCA4IDE1IDggMTV6bTAtN2MxLjEwNSAwIDItLjg5NSAyLTJzLS44OTUtMi0yLTItMiAuODk1LTIgMiAuODk1IDIgMiAyeiIgY2xpcC1ydWxlPSJldmVub2RkIi8+Cjwvc3ZnPgo=">
											<div class="js-vsl-txt-select-area text-16 font-weight-bold color-grey-3 ellipsis">
											<c:if test="${param.place eq '' }">대여 위치 선택</c:if>
											<c:if test="${not empty param.place }">${param.place }</c:if> </div>
											<div class="js-vsl-txt-select-area-short dc-none ml-1 text-14 color-grey-3 flex-1 ellipsis" style="display: none;"></div>
										</div>
									</div>
									<div
										class="js-container-search-list-area-delivery h-100 dc-none"
										style="display: none;">
										<div
											class="container-search-list-area-delivery h-100 text-14 color-grey-3 font-weight-bold">
											<div
												class="js-vsl-btn-select-area-start select-area dc-flex align-items-center click-effect-press box-round-gray px-2">
												<img class="js-start-area-icon mr-1"
													src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiNBQUI0QzYiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTggMTVzNS01Ljk0NiA1LTguODEyQzEzIDMuMzIzIDEwLjc2MSAxIDggMVMzIDMuMzIzIDMgNi4xODhDMyA5LjA1NCA4IDE1IDggMTV6bTAtN2MxLjEwNSAwIDItLjg5NSAyLTJzLS44OTUtMi0yLTItMiAuODk1LTIgMiAuODk1IDIgMiAyeiIgY2xpcC1ydWxlPSJldmVub2RkIi8+Cjwvc3ZnPgo="><img
													class="js-start-area-error-icon mr-1 dc-none"
													src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTciIHZpZXdCb3g9IjAgMCAxNiAxNyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0xNSA4LjExYTcgNyAwIDEgMS0xNCAwIDcgNyAwIDAgMSAxNCAweiIgZmlsbD0iI0IxMkMyQyIvPgogICAgPHJlY3QgeD0iNyIgeT0iNC4xMDkiIHdpZHRoPSIyIiBoZWlnaHQ9IjYiIHJ4PSIxIiBmaWxsPSIjZmZmIi8+CiAgICA8cGF0aCBkPSJNNyAxMi4xMWExIDEgMCAxIDEgMiAwIDEgMSAwIDAgMS0yIDB6IiBmaWxsPSIjZmZmIi8+Cjwvc3ZnPgo="
													style="display: none;">
												<div class="js-vsl-txt-select-area-1 ellipsis w-90"></div>
											</div>
											<div
												class="js-vsl-btn-select-area-end select-area dc-flex align-items-center click-effect-press box-round-gray px-2">
												<img class="js-end-area-icon mr-1"
													src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiNBQUI0QzYiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTggMTVzNS01Ljk0NiA1LTguODEyQzEzIDMuMzIzIDEwLjc2MSAxIDggMVMzIDMuMzIzIDMgNi4xODhDMyA5LjA1NCA4IDE1IDggMTV6bTAtN2MxLjEwNSAwIDItLjg5NSAyLTJzLS44OTUtMi0yLTItMiAuODk1LTIgMiAuODk1IDIgMiAyeiIgY2xpcC1ydWxlPSJldmVub2RkIi8+Cjwvc3ZnPgo="><img
													class="js-end-area-error-icon mr-1 dc-none"
													src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTciIHZpZXdCb3g9IjAgMCAxNiAxNyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0xNSA4LjExYTcgNyAwIDEgMS0xNCAwIDcgNyAwIDAgMSAxNCAweiIgZmlsbD0iI0IxMkMyQyIvPgogICAgPHJlY3QgeD0iNyIgeT0iNC4xMDkiIHdpZHRoPSIyIiBoZWlnaHQ9IjYiIHJ4PSIxIiBmaWxsPSIjZmZmIi8+CiAgICA8cGF0aCBkPSJNNyAxMi4xMWExIDEgMCAxIDEgMiAwIDEgMSAwIDAgMS0yIDB6IiBmaWxsPSIjZmZmIi8+Cjwvc3ZnPgo="
													style="display: none;">
												<div class="js-vsl-txt-select-area-2 ellipsis w-90"
													style="display: none;"></div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-5">
									<div class="form-group mb-0 h-100"
										id="js_container_search_list_rent_date_view_pc">
										<div class="js-vsl-btn-rent-date dc-flex justify-content-between align-items-center click-effect-press box-border-grey-7 box-round-gray px-25 py-1 h-100" data-type="location" onclick="daySelect()">
											<div class="dc-flex align-items-center">
												<div class="dc-flex align-items-center text-16 color-grey-3">
													<img class="js-time-icon mr-1"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE3Ij4KICAgIDxwYXRoIGZpbGw9IiNBQUI0QzYiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTggMTQuNzc4YzMuNjgyIDAgNi42NjctMi45ODUgNi42NjctNi42NjdTMTEuNjgyIDEuNDQ0IDggMS40NDQgMS4zMzMgNC40MyAxLjMzMyA4LjExMSA0LjMxOCAxNC43NzggOCAxNC43Nzh6bS44NjYtOS40NDhjMC0uMzY4LS4yOTktLjY2Ny0uNjY3LS42NjctLjM2OCAwLS42NjcuMjk5LS42NjcuNjY3djIuODY2bC0xLjY3NS0uOTMzYy0uMzIyLS4xOC0uNzI4LS4wNjQtLjkwNy4yNTgtLjE4LjMyMi0uMDY0LjcyOC4yNTguOTA3bDIuNjY3IDEuNDg0Yy4yMDYuMTE1LjQ1OC4xMTIuNjYyLS4wMDcuMjAzLS4xMi4zMjktLjMzOS4zMjktLjU3NXYtNHoiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K"><img
														class="js-start-date-error-icon mr-1 dc-none"
														src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTciIHZpZXdCb3g9IjAgMCAxNiAxNyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0xNSA4LjExYTcgNyAwIDEgMS0xNCAwIDcgNyAwIDAgMSAxNCAweiIgZmlsbD0iI0IxMkMyQyIvPgogICAgPHJlY3QgeD0iNyIgeT0iNC4xMDkiIHdpZHRoPSIyIiBoZWlnaHQ9IjYiIHJ4PSIxIiBmaWxsPSIjZmZmIi8+CiAgICA8cGF0aCBkPSJNNyAxMi4xMWExIDEgMCAxIDEgMiAwIDEgMSAwIDAgMS0yIDB6IiBmaWxsPSIjZmZmIi8+Cjwvc3ZnPgo="
														style="display: none;"><span
														class="txt-rent-start-date font-weight-bold"
														style="display: block;">4.7(금)</span><span>&nbsp;</span><span
														class="txt-rent-start-time" style="display: block;">10:00</span>
												</div>
												<img class="mx-2"
													src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEwIDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM5OTkiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTMuMTI0IDQuNjdjLjE4Mi0uMjA3LjQ5Ny0uMjI4LjcwNS0uMDQ2bDQgMy41Yy4xMDkuMDk1LjE3MS4yMzIuMTcxLjM3NnMtLjA2Mi4yODEtLjE3LjM3NmwtNCAzLjVjLS4yMDkuMTgyLS41MjQuMTYxLS43MDYtLjA0Ny0uMTgyLS4yMDgtLjE2MS0uNTIzLjA0Ny0uNzA1TDYuNzQgOC41IDMuMTcgNS4zNzZjLS4yMDgtLjE4Mi0uMjMtLjQ5Ny0uMDQ3LS43MDV6IiBjbGlwLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+Cg==">
												<div class="dc-flex align-items-center text-16 color-grey-3">
													<img class="js-end-date-error-icon mr-1 dc-none"
														src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTciIHZpZXdCb3g9IjAgMCAxNiAxNyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0xNSA4LjExYTcgNyAwIDEgMS0xNCAwIDcgNyAwIDAgMSAxNCAweiIgZmlsbD0iI0IxMkMyQyIvPgogICAgPHJlY3QgeD0iNyIgeT0iNC4xMDkiIHdpZHRoPSIyIiBoZWlnaHQ9IjYiIHJ4PSIxIiBmaWxsPSIjZmZmIi8+CiAgICA8cGF0aCBkPSJNNyAxMi4xMWExIDEgMCAxIDEgMiAwIDEgMSAwIDAgMS0yIDB6IiBmaWxsPSIjZmZmIi8+Cjwvc3ZnPgo="
														style="display: none;"><span
														class="txt-rent-end-date font-weight-bold"
														style="display: block;">4.8(토)</span><span>&nbsp;</span><span
														class="txt-rent-end-time" style="display: block;">10:00</span>
												</div>
											</div>
											<div class="dc-flex align-items-center text-12 color-grey-3">
												<span class="txt-rent-period" style="display: block;">24시간</span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-3">
									<div class="js-container-search-list-filter-age h-100"
										style="display: none;">
										<div
											class="dc-flex align-itesm-center click-effect-press box-border-grey-7 box-round-gray px-25 py-2 h-100 text-14 color-grey-3">
											<img class="mr-1"
												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGNsaXAtcGF0aD0idXJsKCNzc2w3N3l5N3VhKSIgZmlsbD0iI0FBQjRDNiI+CiAgICAgICAgPHJlY3QgeD0iMSIgeT0iOSIgd2lkdGg9IjE0IiBoZWlnaHQ9IjYiIHJ4PSIxIi8+CiAgICAgICAgPHBhdGggZD0iTTMgNmExIDEgMCAwIDEgMS0xaDhhMSAxIDAgMCAxIDEgMXYySDNWNnoiLz4KICAgICAgICA8cmVjdCB4PSI1IiB5PSIyIiB3aWR0aD0iMSIgaGVpZ2h0PSI0IiByeD0iLjUiLz4KICAgICAgICA8cmVjdCB4PSI3LjUiIHk9IjEiIHdpZHRoPSIxIiBoZWlnaHQ9IjUiIHJ4PSIuNSIvPgogICAgICAgIDxyZWN0IHg9IjEwIiB5PSIyIiB3aWR0aD0iMSIgaGVpZ2h0PSI0IiByeD0iLjUiLz4KICAgIDwvZz4KICAgIDxkZWZzPgogICAgICAgIDxjbGlwUGF0aCBpZD0ic3NsNzd5eTd1YSI+CiAgICAgICAgICAgIDxwYXRoIGZpbGw9IiNmZmYiIGQ9Ik0wIDBoMTZ2MTZIMHoiLz4KICAgICAgICA8L2NsaXBQYXRoPgogICAgPC9kZWZzPgo8L3N2Zz4K"><select
												class="js-vsl-select-filter-age w-100 custom-select-grey color-grey-3 font-weight-bold click-no-effect border-none"><option
													value="18">만 18세</option>
												<option value="19">만 19세</option>
												<option value="20">만 20세</option>
												<option value="21">만 21세</option>
												<option value="22">만 22세</option>
												<option value="23">만 23세</option>
												<option value="24">만 24세</option>
												<option value="25">만 25세</option>
												<option value="26">만 26세</option>
												<option value="27">만 27세</option>
												<option value="28">만 28세</option>
												<option value="29">만 29세</option>
												<option value="30">만 30 ~ 65세</option>
												<option value="66">만 66세</option>
												<option value="67">만 67세</option>
												<option value="68">만 68세</option>
												<option value="69">만 69세</option>
												<option value="70">만 70세</option>
												<option value="71">만 71세</option>
												<option value="72">만 72세</option>
												<option value="73">만 73세</option>
												<option value="74">만 74세</option>
												<option value="75">만 75세</option>
												<option value="76">만 76세</option>
												<option value="77">만 77세</option>
												<option value="78">만 78세</option>
												<option value="79">만 79세</option>
												<option value="80">만 80세</option>
												<option value="81">만 81세</option>
												<option value="82">만 82세</option>
												<option value="83">만 83세</option>
												<option value="84">만 84세</option>
												<option value="85">만 85세</option>
												<option value="86">만 86세</option>
												<option value="87">만 87세</option>
												<option value="88">만 88세</option>
												<option value="89">만 89세</option>
												<option value="90">만 90세</option>
												<option value="91">만 91세</option>
												<option value="92">만 92세</option>
												<option value="93">만 93세</option>
												<option value="94">만 94세</option>
												<option value="95">만 95세</option>
												<option value="96">만 96세</option>
												<option value="97">만 97세</option>
												<option value="98">만 98세</option>
												<option value="99">만 99세</option></select>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div
							class="car-list-subscribe-banner bg-color-grey-3 hide dc-none dc-lg-block"
							id="js_banner_pc_car_list_subscribe">
							<div class="container dc-flex justify-content-between">

								<img class="ml-1 click-no-effect"
									id="js_btn_close_subscribe_list_banner"
									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiNmZmYiIGQ9Ik04IDYuNTg2bDQuMjkzLTQuMjkzYy4zOS0uMzkgMS4wMjQtLjM5IDEuNDE0IDAgLjM5LjM5LjM5IDEuMDI0IDAgMS40MTRMOS40MTQgOGw0LjI5MyA0LjI5M2MuMzkuMzkuMzkgMS4wMjQgMCAxLjQxNC0uMzkuMzktMS4wMjQuMzktMS40MTQgMEw4IDkuNDE0bC00LjI5MyA0LjI5M2MtLjM5LjM5LTEuMDI0LjM5LTEuNDE0IDAtLjM5LS4zOS0uMzktMS4wMjQgMC0xLjQxNEw2LjU4NiA4IDIuMjkzIDMuNzA3Yy0uMzktLjM5LS4zOS0xLjAyNCAwLTEuNDE0LjM5LS4zOSAxLjAyNC0uMzkgMS40MTQgMEw4IDYuNTg2eiIvPgo8L3N2Zz4K">
							</div>
						</div>

					</div>
					
					<!--본문 시작-->
					<div class="container-car-list container pb-lg-4">
						<div class="row">
							<!-- 왼쪽 필터 -->
							<div class="col-lg-4 dc-none dc-lg-block">
								<div class="sticky sticky-pc-menu-top" id="js_sticky_carlist">
									<div style="position: relative; overflow-y: auto;">
										<div class="js-no-data-no-delivery-hide-elmt"
											id="js_sticky_carlist_inner_scroll"
											style="height: 731px; display: block;">
											<div>
												<div class="filter-section">
													<div class="filter-pc-container-content px-3 pt-4"
														id="filter_pc_container_contents" style="display: block;">
														<div class="js-filter-delivery"></div>
														<div class="js-no-data-hide-elmt" style="display: block;">
															<div class="js-search-container-filter-insu-type dc-none"
																style="display: none;">
																<div class="text-14 font-weight-bold color-grey-5 mb-2">자차보험</div>
																<div class="text-center mb-3">
																	<div class="btn-group w-100">
																		<button
																			class="js-tab-insu-type-pc btn btn-light py-2 w-25"
																			type="button" data-t="all">
																			
																		</button>
																		<button
																			class="js-tab-insu-type-pc btn btn-light py-2 w-25"
																			type="button" data-t="1">
																			<div
																				class="d-flex justify-content-center align-items-center">
																				<img
																					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEyIDEzIj4KICAgIDxwYXRoIGZpbGw9IiM2NjYiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEwLjE4MyA4LjM5MmMtLjc0NCAxLjYzLTIuMTAyIDIuODc1LTQuMDEzIDMuNTc3LS4xMTIuMDQxLS4yMzQuMDQxLS4zNDUgMC0xLjkwNy0uNzAzLTMuMjY0LTEuOTQ3LTQuMDA4LTMuNTc4LS4yNzgtLjYxLS40NzctMS4zNjItLjYxLTIuMjI1LS4xODEtMS4xNjQtLjIyNy0yLjM3NS0uMi0zLjQxbC4wMDctLjE5MmMuMDEzLS4yNjcuMjMzLS40NzYuNS0uNDc2IDEuMTYxIDAgMi4yMDgtLjE5NCAzLjEyMi0uNTE2LjMxNy0uMTExLjU5NC0uMjMuODI4LS4zNDkuMTM2LS4wNjguMjI1LS4xMTkuMjYzLS4xNDQuMTY1LS4xMDUuMzc1LS4xMDUuNTQgMCAuMDM5LjAyNS4xMjguMDc2LjI2NC4xNDQuMjM1LjExOC41MTMuMjM3LjgzLjM1LjkxNi4zMjEgMS45NjQuNTE1IDMuMTI2LjUxNS4yNjYgMCAuNDg2LjIxLjQ5OS40NzZsLjAwNy4xOTFjLjAyNyAxLjAzNi0uMDE5IDIuMjQ3LS4yIDMuNDEtLjEzMy44NjQtLjMzMiAxLjYxNS0uNjEgMi4yMjd6bS03Ljk4OS0yLjM4Yy4xMjEuNzgxLjI5OCAxLjQ0OS41MzIgMS45NjUuNjEgMS4zMzYgMS43MDYgMi4zNjggMy4yNzIgMi45ODggMS41Ny0uNjIgMi42NjUtMS42NSAzLjI3NS0yLjk4OC4yMzUtLjUxNi40MTItMS4xODQuNTMzLTEuOTY1LjE1My0uOTg2LjIwMy0yLjAyMi4xOTMtMi45MzUtMS4wODgtLjA0Ny0yLjA4Mi0uMjUtMi45Ny0uNTYxLS40MzMtLjE1My0uNzgtLjMwNy0xLjAzMS0uNDQtLjI1Mi4xMzMtLjU5Ny4yODctMS4wMy40NC0uODg2LjMxMS0xLjg4LjUxNC0yLjk2Ny41NjEtLjAxLjkxMy4wNCAxLjk1LjE5MyAyLjkzNXoiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgogICAgPHBhdGggZmlsbD0iI0NCQ0JDQiIgZD0iTTYuNTMgNi4wMmgxLjQ2NWMuNjczIDAgLjY3MyAxLjAxIDAgMS4wMUg2LjUzdjEuNDY1YzAgLjI3OS0uMjI3LjUwNS0uNTA1LjUwNS0uMjggMC0uNTA1LS4yMjYtLjUwNS0uNTA1VjcuMDNINC4wMDVjLS42NzMgMC0uNjczLTEuMDEgMC0xLjAxSDUuNTJWNC41MDVjMC0uMjc5LjIyNi0uNTA1LjUwNS0uNTA1LjI3OCAwIC41MDUuMjI2LjUwNS41MDVWNi4wMnoiLz4KPC9zdmc+Cg=="><span
																					class="text-14 ml-1">일반자차</span>
																			</div>
																		</button>
																		<button
																			class="js-tab-insu-type-pc btn btn-light py-2 w-25"
																			type="button" data-t="2">
																			<div
																				class="d-flex justify-content-center align-items-center">
																				<img
																					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEyIDEzIj4KICAgIDxwYXRoIGZpbGw9IiM0OTQ5NDkiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEwLjE4MyA4LjM5MmMtLjc0NCAxLjYzLTIuMTAyIDIuODc1LTQuMDEzIDMuNTc3LS4xMTIuMDQxLS4yMzQuMDQxLS4zNDUgMC0xLjkwNy0uNzAzLTMuMjY0LTEuOTQ3LTQuMDA4LTMuNTc4LS4yNzgtLjYxLS40NzctMS4zNjItLjYxLTIuMjI1LS4xODEtMS4xNjQtLjIyNy0yLjM3NS0uMi0zLjQxbC4wMDctLjE5MmMuMDEzLS4yNjcuMjMzLS40NzYuNS0uNDc2IDEuMTYxIDAgMi4yMDgtLjE5NCAzLjEyMi0uNTE2LjMxNy0uMTExLjU5NC0uMjMuODI4LS4zNDkuMTM2LS4wNjguMjI1LS4xMTkuMjYzLS4xNDQuMTY1LS4xMDUuMzc1LS4xMDUuNTQgMCAuMDM5LjAyNS4xMjguMDc2LjI2NC4xNDQuMjM1LjExOC41MTMuMjM3LjgzLjM1LjkxNi4zMjEgMS45NjQuNTE1IDMuMTI2LjUxNS4yNjYgMCAuNDg2LjIxLjQ5OS40NzZsLjAwNy4xOTFjLjAyNyAxLjAzNi0uMDE5IDIuMjQ3LS4yIDMuNDEtLjEzMy44NjQtLjMzMiAxLjYxNS0uNjEgMi4yMjd6bS03Ljk4OS0yLjM4Yy4xMjEuNzgxLjI5OCAxLjQ0OS41MzIgMS45NjUuNjEgMS4zMzYgMS43MDYgMi4zNjggMy4yNzIgMi45ODggMS41Ny0uNjIgMi42NjUtMS42NSAzLjI3NS0yLjk4OC4yMzUtLjUxNi40MTItMS4xODQuNTMzLTEuOTY1LjE1My0uOTg2LjIwMy0yLjAyMi4xOTMtMi45MzUtMS4wODgtLjA0Ny0yLjA4Mi0uMjUtMi45Ny0uNTYxLS40MzMtLjE1My0uNzgtLjMwNy0xLjAzMS0uNDQtLjI1Mi4xMzMtLjU5Ny4yODctMS4wMy40NC0uODg2LjMxMS0xLjg4LjUxNC0yLjk2Ny41NjEtLjAxLjkxMy4wNCAxLjk1LjE5MyAyLjkzNXoiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgogICAgPHBhdGggZmlsbD0iI0ZGQ0QxQiIgZD0iTTYuNTMgNi4wMmgxLjQ2NWMuNjczIDAgLjY3MyAxLjAxIDAgMS4wMUg2LjUzdjEuNDY1YzAgLjI3OS0uMjI3LjUwNS0uNTA1LjUwNS0uMjggMC0uNTA1LS4yMjYtLjUwNS0uNTA1VjcuMDNINC4wMDVjLS42NzMgMC0uNjczLTEuMDEgMC0xLjAxSDUuNTJWNC41MDVjMC0uMjc5LjIyNi0uNTA1LjUwNS0uNTA1LjI3OCAwIC41MDUuMjI2LjUwNS41MDVWNi4wMnoiLz4KPC9zdmc+Cg=="><span
																					class="text-14 ml-1">완전자차</span>
																			</div>
																		</button>
																		<button
																			class="js-tab-insu-type-pc btn btn-light py-2 w-25"
																			type="button" data-t="3">
																			<div
																				class="d-flex justify-content-center align-items-center">
																				<img
																					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxMyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEyIDEzIj4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEwLjE4MyA4LjM5MmMtLjc0NCAxLjYzLTIuMTAyIDIuODc1LTQuMDEzIDMuNTc3LS4xMTIuMDQxLS4yMzQuMDQxLS4zNDUgMC0xLjkwNy0uNzAzLTMuMjY0LTEuOTQ3LTQuMDA4LTMuNTc4LS4yNzgtLjYxLS40NzctMS4zNjItLjYxLTIuMjI1LS4xODEtMS4xNjQtLjIyNy0yLjM3NS0uMi0zLjQxbC4wMDctLjE5MmMuMDEzLS4yNjcuMjMzLS40NzYuNS0uNDc2IDEuMTYxIDAgMi4yMDgtLjE5NCAzLjEyMi0uNTE2LjMxNy0uMTExLjU5NC0uMjMuODI4LS4zNDkuMTM2LS4wNjguMjI1LS4xMTkuMjYzLS4xNDQuMTY1LS4xMDUuMzc1LS4xMDUuNTQgMCAuMDM5LjAyNS4xMjguMDc2LjI2NC4xNDQuMjM1LjExOC41MTMuMjM3LjgzLjM1LjkxNi4zMjEgMS45NjQuNTE1IDMuMTI2LjUxNS4yNjYgMCAuNDg2LjIxLjQ5OS40NzZsLjAwNy4xOTFjLjAyNyAxLjAzNi0uMDE5IDIuMjQ3LS4yIDMuNDEtLjEzMy44NjQtLjMzMiAxLjYxNS0uNjEgMi4yMjd6bS03Ljk4OS0yLjM4Yy4xMjEuNzgxLjI5OCAxLjQ0OS41MzIgMS45NjUuNjEgMS4zMzYgMS43MDYgMi4zNjggMy4yNzIgMi45ODggMS41Ny0uNjIgMi42NjUtMS42NSAzLjI3NS0yLjk4OC4yMzUtLjUxNi40MTItMS4xODQuNTMzLTEuOTY1LjE1My0uOTg2LjIwMy0yLjAyMi4xOTMtMi45MzUtMS4wODgtLjA0Ny0yLjA4Mi0uMjUtMi45Ny0uNTYxLS40MzMtLjE1My0uNzgtLjMwNy0xLjAzMS0uNDQtLjI1Mi4xMzMtLjU5Ny4yODctMS4wMy40NC0uODg2LjMxMS0xLjg4LjUxNC0yLjk2Ny41NjEtLjAxLjkxMy4wNCAxLjk1LjE5MyAyLjkzNXoiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgogICAgPHBhdGggZmlsbD0iIzk0QzBGRSIgZD0iTTYuNTMgNi4wMmgxLjQ2NWMuNjczIDAgLjY3MyAxLjAxIDAgMS4wMUg2LjUzdjEuNDY1YzAgLjI3OS0uMjI3LjUwNS0uNTA1LjUwNS0uMjggMC0uNTA1LS4yMjYtLjUwNS0uNTA1VjcuMDNINC4wMDVjLS42NzMgMC0uNjczLTEuMDEgMC0xLjAxSDUuNTJWNC41MDVjMC0uMjc5LjIyNi0uNTA1LjUwNS0uNTA1LjI3OCAwIC41MDUuMjI2LjUwNS41MDVWNi4wMnoiLz4KPC9zdmc+Cg=="><span
																					class="text-14 ml-1">슈퍼자차</span>
																			</div>
																		</button>
																	</div>
																</div>
															</div>
															<div class="js-vf-section-hashtags">
															</div>
															<div class="js-vf-section-branch-term">
															</div>
															<div class="js-vf-section-car-model">
																<div class="form-group mb-0">
																	<div class="text-14 font-weight-bold color-grey-5 mb-2">자동차
																		모델</div>
																	<div class="dc-flex">
																		<form action="search">
																			<div class="dc-block w-100">
																				<div class="position-relative">
																					<input type="text" name="car_model" id="search_box" placeholder="자동차 모델명으로 검색할 수 있습니다">
																					<input type="submit" class="btn btn-primary btn-sm px-3 ml-1"
																					id="search_button" value="검색"></input>
																					<div id="carList"></div>
																					<div
																						class="js-btn-delete-input btn-input-close-sm click-effect-press"
																						data-input="vf_car_model_input_pc">
																						<div class="wrapper">
																							<img
																								src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiNDNEM0QzQiIGQ9Ik04IDE1YzMuODY2IDAgNy0zLjEzNCA3LTdzLTMuMTM0LTctNy03LTcgMy4xMzQtNyA3IDMuMTM0IDcgNyA3eiIvPgogICAgPHBhdGggZmlsbD0iI2ZmZiIgZmlsbC1ydWxlPSJldmVub2RkIiBkPSJNNy4yOTMgOGwtMi4xMjEgMi4xMjIuNzA3LjcwN0w4IDguNzA3bDIuMTIyIDIuMTIyLjcwNy0uNzA3TDguNzA3IDggMTAuODMgNS44OGwtLjcwNy0uNzA3TDggNy4yOTMgNS44OCA1LjE3MmwtLjcwNy43MDdMNy4yOTMgOHoiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K">
																						</div>
																					</div>
																					<div class="dropdown-menu"
																						id="vf_dropdown_car_models_auto_pc"
																						style="max-height: 190px; overflow-y: scroll;"></div>
																				</div>
																			</div>
																		</form>
																	</div>
																</div>
															</div>
															<div class="js-vf-section-car-grade">
																<div class="form-group">
																	<div class="dc-block">
																	</div>
																	<hr>
																</div>
															</div>
															<div class="js-vf-section-fuels">
																<div class="form-group mb-0">
																	<div class="text-14 font-weight-bold color-grey-5 mb-2">보험</div>
																	<div class="dc-block">
																		<label
																			class="checkbox-container mr-2"><input
																			type="checkbox" class="insurance" name="ins_normal" value="1"><span
																			class="checkbox-label color-grey-5">일반자차</span><span
																			class="checkmark"></span></label><label
																			class="checkbox-container mr-2"><input
																			type="checkbox" class="insurance" name="ins_perfect" value="2"><span
																			class="checkbox-label color-grey-5">완전자차</span><span
																			class="checkmark"></span></label><label
																			class="checkbox-container mr-2"><input
																			type="checkbox" class="insurance" name="ins_super" value="3"><span
																			class="checkbox-label color-grey-5">슈퍼자차</span><span
																			class="checkmark"></span></label>
																	</div>
																	&nbsp;
																	
																	<div class="col-6 col-lg-12 pb-lg-3">
																		<img src="resources/images/보험.png" >
																	</div>
																</div>
															</div>
															<div class="js-vf-section-price-range">
																<div
																	class="dc-flex justify-content-between align-items-center">
																	
																</div>
																<div class="my-4 mx-2">
																</div>
															</div>
															<div class="js-vf-section-insu-age form-group mb-0">
																<div class="dc-flex justify-content-between">
																</div>
																<div class="wordbreak-breakword w-100 text-14 mb-2">
																</div>

																<div class="js-vf-container-calc-korean-age dc-none"
																	style="display: none;">
																	<div class="text-14 color-grey-3">
																		차량 대여일&nbsp;<span
																			class="js-vf-txt-rent-start-date text-primary font-weight-bold">2023년
																			4월 6일</span>&nbsp;기준으로 만나이 계산
																	</div>
																	<div class="position-relative">
																		<input
																			class="js-input-deletable js-vf-input-birth form-control form-control-sm mt-2"
																			id="vf_birth_input_pc"
																			placeholder="생년월일 6자리 예) 950609" type="tel">
																		<div
																			class="js-btn-delete-input btn-input-close-sm click-effect-press"
																			data-input="vf_birth_input_pc">
																			<div class="wrapper">
																				<img
																					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiNDNEM0QzQiIGQ9Ik04IDE1YzMuODY2IDAgNy0zLjEzNCA3LTdzLTMuMTM0LTctNy03LTcgMy4xMzQtNyA3IDMuMTM0IDcgNyA3eiIvPgogICAgPHBhdGggZmlsbD0iI2ZmZiIgZmlsbC1ydWxlPSJldmVub2RkIiBkPSJNNy4yOTMgOGwtMi4xMjEgMi4xMjIuNzA3LjcwN0w4IDguNzA3bDIuMTIyIDIuMTIyLjcwNy0uNzA3TDguNzA3IDggMTAuODMgNS44OGwtLjcwNy0uNzA3TDggNy4yOTMgNS44OCA1LjE3MmwtLjcwNy43MDdMNy4yOTMgOHoiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K">
																			</div>
																		</div>
																	</div>
																	<div
																		class="vf-txt-invalid-birth-input text-14 color-red dc-none"></div>
																	<div
																		class="js-vf-container-result-korean-age mt-2 dc-none">
																		<div class="vf-box-korean-age w-100 p-3 text-center">
																			<div class="text-32 font-weight-bold color-grey-3">
																				만&nbsp;<strong class="js-vf-txt-korean-age"></strong>세
																			</div>
																			<div
																				class="js-vf-container-possible-korean-ages dc-none">
																				<div
																					class="dc-flex justify-content-center align-items-start mt-2">
																					<img class="mt-1"
																						src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9InVybCgjcGFpbnQwX2xpbmVhcikiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyLjEwMSAxMC4wNjRjLS44MTggMS43NzktMi4zMTIgMy4xMzYtNC40MTQgMy45MDItLjEyMy4wNDUtLjI1Ny4wNDUtLjM4IDAtMi4wOTctLjc2Ny0zLjU5LTIuMTI0LTQuNDA5LTMuOTAzLS4zMDUtLjY2Ni0uNTI0LTEuNDg2LS42NzEtMi40MjgtLjE5OS0xLjI3LS4yNS0yLjU5LS4yMTktMy43MmwuMDA4LS4yMWMuMDE0LS4yOS4yNTUtLjUxOC41NDktLjUxOCAxLjI3OCAwIDIuNDMtLjIxMiAzLjQzNC0uNTYzLjM1LS4xMjIuNjU0LS4yNTEuOTEyLS4zOC4xNS0uMDc1LjI0Ny0uMTMuMjktLjE1OC4xOC0uMTE1LjQxMi0uMTE1LjU5MyAwIC4wNDIuMDI3LjE0LjA4My4yOS4xNTcuMjU5LjEzLjU2NC4yNi45MTMuMzgxIDEuMDA4LjM1MSAyLjE2LjU2MyAzLjQzOC41NjMuMjk0IDAgLjUzNS4yMjguNTUuNTE5bC4wMDcuMjA5Yy4wMyAxLjEzLS4wMiAyLjQ1LS4yMTkgMy43Mi0uMTQ3Ljk0Mi0uMzY2IDEuNzYyLS42NzIgMi40Mjl6TTcuOTkyIDUuNGMwLS4yNzYtLjIyNS0uNS0uNTA0LS41LS4yNzggMC0uNTA0LjIyNC0uNTA0LjV2Mi4wMDJINC45NjdjLS4yNzggMC0uNTA0LjIyNC0uNTA0LjVzLjIyNi41LjUwNC41aDIuMDE3VjEwLjRjMCAuMjc3LjIyNi41LjUwNC41LjI3OSAwIC41MDQtLjIyMy41MDQtLjVWOC40MDJoMi4wMTdjLjI3OCAwIC41MDQtLjIyNC41MDQtLjVzLS4yMjYtLjUtLjUwNC0uNUg3Ljk5MlY1LjR6IiBjbGlwLXJ1bGU9ImV2ZW5vZGQiLz4KICAgIDxkZWZzPgogICAgICAgIDxsaW5lYXJHcmFkaWVudCBpZD0icGFpbnQwX2xpbmVhciIgeDE9IjEyLjQzOSIgeDI9IjIuMTkxIiB5MT0iMiIgeTI9IjIuMTU0IiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSI+CiAgICAgICAgICAgIDxzdG9wIHN0b3AtY29sb3I9IiMwNkI2RTYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIxIiBzdG9wLWNvbG9yPSIjMEQ2RkZDIi8+CiAgICAgICAgPC9saW5lYXJHcmFkaWVudD4KICAgIDwvZGVmcz4KPC9zdmc+Cg==">
																					<div
																						class="text-16 color-grey-4 ml-1 wordbreak-breakword">
																						<span
																							class="js-vf-possible-korean-ages font-weight-bold"></span>&nbsp;이상
																						차량 운전가능
																					</div>
																				</div>
																			</div>
																			<div
																				class="js-vf-container-impossible-korean-ages dc-none">
																				<div
																					class="dc-flex justify-content-center align-items-start mt-2">
																					<img class="mt-1"
																						src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9InVybCgjcGFpbnQwX2xpbmVhcikiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyLjEwMSAxMC4wNjRjLS44MTggMS43NzktMi4zMTIgMy4xMzYtNC40MTQgMy45MDItLjEyMy4wNDUtLjI1Ny4wNDUtLjM4IDAtMi4wOTctLjc2Ny0zLjU5LTIuMTI0LTQuNDA5LTMuOTAzLS4zMDUtLjY2Ni0uNTI0LTEuNDg2LS42NzEtMi40MjgtLjE5OS0xLjI3LS4yNS0yLjU5LS4yMTktMy43MmwuMDA4LS4yMWMuMDE0LS4yOS4yNTUtLjUxOC41NDktLjUxOCAxLjI3OCAwIDIuNDMtLjIxMiAzLjQzNC0uNTYzLjM1LS4xMjIuNjU0LS4yNTEuOTEyLS4zOC4xNS0uMDc1LjI0Ny0uMTMuMjktLjE1OC4xOC0uMTE1LjQxMi0uMTE1LjU5MyAwIC4wNDIuMDI3LjE0LjA4My4yOS4xNTcuMjU5LjEzLjU2NC4yNi45MTMuMzgxIDEuMDA4LjM1MSAyLjE2LjU2MyAzLjQzOC41NjMuMjk0IDAgLjUzNS4yMjguNTUuNTE5bC4wMDcuMjA5Yy4wMyAxLjEzLS4wMiAyLjQ1LS4yMTkgMy43Mi0uMTQ3Ljk0Mi0uMzY2IDEuNzYyLS42NzIgMi40Mjl6TTcuOTkyIDUuNGMwLS4yNzYtLjIyNS0uNS0uNTA0LS41LS4yNzggMC0uNTA0LjIyNC0uNTA0LjV2Mi4wMDJINC45NjdjLS4yNzggMC0uNTA0LjIyNC0uNTA0LjVzLjIyNi41LjUwNC41aDIuMDE3VjEwLjRjMCAuMjc3LjIyNi41LjUwNC41LjI3OSAwIC41MDQtLjIyMy41MDQtLjVWOC40MDJoMi4wMTdjLjI3OCAwIC41MDQtLjIyNC41MDQtLjVzLS4yMjYtLjUtLjUwNC0uNUg3Ljk5MlY1LjR6IiBjbGlwLXJ1bGU9ImV2ZW5vZGQiLz4KICAgIDxkZWZzPgogICAgICAgIDxsaW5lYXJHcmFkaWVudCBpZD0icGFpbnQwX2xpbmVhciIgeDE9IjEyLjQzOSIgeDI9IjIuMTkxIiB5MT0iMiIgeTI9IjIuMTU0IiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSI+CiAgICAgICAgICAgIDxzdG9wIHN0b3AtY29sb3I9IiMwNkI2RTYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIxIiBzdG9wLWNvbG9yPSIjMEQ2RkZDIi8+CiAgICAgICAgPC9saW5lYXJHcmFkaWVudD4KICAgIDwvZGVmcz4KPC9zdmc+Cg==">
																					<div
																						class="js-vf-txt-impossible-korean-ages text-16 color-grey-4 ml-1 wordbreak-breakword">해당
																						조건에 맞는 차량이 조회되지 않습니다 T_T</div>
																				</div>
																			</div>
																			<button
																				class="js-vf-btn-apply-korean-ages btn btn-primary border-radius-42 py-3 px-6 mt-2">필터에
																				적용</button>
																		</div>
																		<div
																			class="js-vf-container-exception-korean-age mt-3 text-center dc-none">
																			<div
																				class="js-vf-txt-exception-korean-age-title text-16 font-weight-bold color-grey-3 dc-none"></div>
																			<div
																				class="js-vf-txt-exception-korean-age-desc text-14 color-grey-4 mt-3"></div>
																			<div class="text-center">
																				<button
																					class="js-btn-show-detail-21-under-policy btn btn-link text-16 font-weight-normal">자세히
																					알아보기</button>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="py-3" id="js_filter_pc_container_btn">
																<button
																	class="js-vf-btn-init btn btn-light btn-block text-center bg-color-grey-7 click-effect-press">
																	<div class="d-flex justify-content-center">
																		<img class="icon-25"
																			src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNiIgaGVpZ2h0PSIyNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDI2IDI2Ij4KICAgIDxwYXRoIGZpbGw9IiM2NjYiIGQ9Ik01LjUzNCA3LjEyNGMuMDM1LS4wNTcuMDc2LS4xMTEuMTI0LS4xNjIgMS44MDMtMS44ODggNC4yOTQtMi45NzcgNi45NTctMi45NzcgNS4zMSAwIDkuNjE2IDQuMzA1IDkuNjE2IDkuNjE1IDAgNS4zMS00LjMwNSA5LjYxNS05LjYxNiA5LjYxNUM3LjMwNSAyMy4yMTUgMyAxOC45MSAzIDEzLjZjMC0uNTMxLjQzLS45NjIuOTYyLS45NjIuNTMgMCAuOTYxLjQzLjk2MS45NjIgMCA0LjI0OCAzLjQ0NCA3LjY5MiA3LjY5MiA3LjY5MiA0LjI0OSAwIDcuNjkzLTMuNDQ0IDcuNjkzLTcuNjkycy0zLjQ0NC03LjY5Mi03LjY5My03LjY5MmMtMi4xMzIgMC00LjEyMi44Ny01LjU2NSAyLjM4Mi0uMDMuMDMtLjA2LjA2LS4wOTMuMDg1bDMuNDEuMDAyYy41NDMgMCAuOTgzLjQ0Ljk4NC45ODQgMCAuNTQ0LS40NC45ODQtLjk4NC45ODRsLTUuOTA2LS4wMDJjLS41NDMgMC0uOTg0LS40NC0uOTg0LS45ODVsLS4wMDItNS4zNzRjMC0uNTQ0LjQ0LS45ODQuOTg0LS45ODQuNTQzIDAgLjk4NC40NDEuOTg0Ljk4NWwuMDg5IDMuMTM4LjAwMi4wMDF6Ii8+Cjwvc3ZnPgo=">
																		<div class="text-16 color-grey-4 mb-0">필터 초기화</div>
																	</div>
																</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 왼쪽 필터 끝 -->

							<div class="vsl-container-car-list col-lg-8">
								<div
									class="mb-2 vsl-container-car-list-event-banner swiper swiper-initialized swiper-horizontal swiper-pointer-events"
									id="container_search_list_event_banner">
									<div class="swiper-wrapper"
										id="swiper-wrapper-415dcace51b79259" aria-live="off"
										style="transition-duration: 0ms; transform: translate3d(-7332px, 0px, 0px);">
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner swiper-slide-duplicate"
											data-s="153" data-p="0" data-i="16" data-t="EVENT"
											data-swiper-slide-index="15" role="group"
											aria-label="16 / 16" style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												class="swiper-lazy w-100 border-radius-8 swiper-lazy-loaded"
												src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_153_20221226010848.png?ver=181115">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner"
											data-s="214" data-p="0" data-i="1" data-t="EVENT"
											data-swiper-slide-index="0" role="group" aria-label="1 / 16"
											style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												class="swiper-lazy w-100 border-radius-8 swiper-lazy-loaded"
												src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_214_20230316053616.png?ver=181115">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner"
											data-s="83" data-p="0" data-i="2" data-t="EVENT"
											data-swiper-slide-index="1" role="group" aria-label="2 / 16"
											style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												class="swiper-lazy w-100 border-radius-8 swiper-lazy-loaded"
												src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_83_20230111053029.png?ver=181115">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner"
											data-s="216" data-p="0" data-i="3" data-t="EVENT"
											data-swiper-slide-index="2" role="group" aria-label="3 / 16"
											style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												class="swiper-lazy w-100 border-radius-8 swiper-lazy-loaded"
												src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_216_20230329021802.png?ver=181115">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner"
											data-s="215" data-p="0" data-i="4" data-t="EVENT"
											data-swiper-slide-index="3" role="group" aria-label="4 / 16"
											style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												class="swiper-lazy w-100 border-radius-8 swiper-lazy-loaded"
												src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_215_20230329075434.png?ver=181115">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner"
											data-s="220" data-p="1" data-i="5" data-t="PROMOTION"
											data-swiper-slide-index="4" role="group" aria-label="5 / 16"
											style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												class="swiper-lazy w-100 border-radius-8 swiper-lazy-loaded"
												src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_1680250027274_135.png?ver=181115">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner"
											data-s="219" data-p="0" data-i="6" data-t="EVENT"
											data-swiper-slide-index="5" role="group" aria-label="6 / 16"
											style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												class="swiper-lazy w-100 border-radius-8 swiper-lazy-loaded"
												src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_219_20230331080123.png?ver=181115">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner"
											data-s="204" data-p="0" data-i="7" data-t="EVENT"
											data-swiper-slide-index="6" role="group" aria-label="7 / 16"
											style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												class="swiper-lazy w-100 border-radius-8 swiper-lazy-loaded"
												src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_204_20230127001808.png?ver=181115">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner"
											data-s="205" data-p="0" data-i="8" data-t="EVENT"
											data-swiper-slide-index="7" role="group" aria-label="8 / 16"
											style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												class="swiper-lazy w-100 border-radius-8 swiper-lazy-loaded"
												src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_205_20230127002025.png?ver=181115">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner"
											data-s="190" data-p="0" data-i="9" data-t="EVENT"
											data-swiper-slide-index="8" role="group" aria-label="9 / 16"
											style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												class="swiper-lazy w-100 border-radius-8 swiper-lazy-loaded"
												src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_190_20221206031829.png?ver=181115">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner"
											data-s="167" data-p="0" data-i="10" data-t="EVENT"
											data-swiper-slide-index="9" role="group" aria-label="10 / 16"
											style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												class="swiper-lazy w-100 border-radius-8 swiper-lazy-loaded"
												src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_167_20220630025312.png?ver=181115">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner swiper-slide-prev"
											data-s="166" data-p="0" data-i="11" data-t="EVENT"
											data-swiper-slide-index="10" role="group"
											aria-label="11 / 16" style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												class="swiper-lazy w-100 border-radius-8 swiper-lazy-loaded"
												src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_166_20230405082619.png?ver=181115">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner swiper-slide-active"
											data-s="183" data-p="0" data-i="12" data-t="EVENT"
											data-swiper-slide-index="11" role="group"
											aria-label="12 / 16" style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												class="swiper-lazy w-100 border-radius-8 swiper-lazy-loaded"
												src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_183_20220930011546.png?ver=181115">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner swiper-slide-next"
											data-s="146" data-p="0" data-i="13" data-t="EVENT"
											data-swiper-slide-index="12" role="group"
											aria-label="13 / 16" style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												class="swiper-lazy w-100 border-radius-8 swiper-lazy-loaded"
												src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_146_20230210020330.png?ver=181115">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner"
											data-s="67" data-p="0" data-i="14" data-t="EVENT"
											data-swiper-slide-index="13" role="group"
											aria-label="14 / 16" style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												data-src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_67_20200320031239.png?ver=181115"
												class="swiper-lazy w-100 border-radius-8">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner"
											data-s="202" data-p="0" data-i="15" data-t="EVENT"
											data-swiper-slide-index="14" role="group"
											aria-label="15 / 16" style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												data-src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_202_20230215012129.png?ver=181115"
												class="swiper-lazy w-100 border-radius-8">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner"
											data-s="153" data-p="0" data-i="16" data-t="EVENT"
											data-swiper-slide-index="15" role="group"
											aria-label="16 / 16" style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												class="swiper-lazy w-100 border-radius-8 swiper-lazy-loaded"
												src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_153_20221226010848.png?ver=181115">
										</div>
										<div
											class="swiper-slide click-effect-press js-vsl-btn-event-banner swiper-slide-duplicate"
											data-s="214" data-p="0" data-i="1" data-t="EVENT"
											data-swiper-slide-index="0" role="group" aria-label="1 / 16"
											style="width: 610px; margin-right: 1px;">
											<img draggable="false"
												class="swiper-lazy w-100 border-radius-8 swiper-lazy-loaded"
												src="https://s3.ap-northeast-2.amazonaws.com/carmore-common/event/banner/banner_214_20230316053616.png?ver=181115">
										</div>
									</div>
									<span class="swiper-notification" aria-live="assertive"
										aria-atomic="true"></span>
								</div>
								<div class="mb-2 vsl-container-car-list-event-banner dc-none"
									id="js_container_search_list_overseas_banner">
									<img class="w-100" src="/home/images/banner-overseas.png">
								</div>
								<div class="vsl-container-car-list-padding-container">
									<button class="btn btn-round-blue btn-block text-14 mb-3"
										id="btn_search_list_ullengdo_info_re_setting"
										style="display: none;">출발항구, 배편시간 재설정 하기</button>
									<div id="container_search_list_ullengdo_info"
										style="display: none;">
										<div class="box-round p-3 mt-3">
											<div class="text-14 color-grey-2">출발항구</div>
											<div class="mb-2">
												<label class="radiobtn-container inline-radio"><span
													class="radio-label">강릉</span><input type="radio"
													name="ullengdo_info_radio_start_harbor" value="1"><span
													class="checkmark"></span></label><label
													class="radiobtn-container inline-radio"><span
													class="radio-label">묵호</span><input type="radio"
													name="ullengdo_info_radio_start_harbor" value="2"><span
													class="checkmark"></span></label><label
													class="radiobtn-container inline-radio"><span
													class="radio-label">후포</span><input type="radio"
													name="ullengdo_info_radio_start_harbor" value="3"><span
													class="checkmark"></span></label><label
													class="radiobtn-container inline-radio"><span
													class="radio-label">포항</span><input type="radio"
													name="ullengdo_info_radio_start_harbor" value="4"><span
													class="checkmark"></span></label>
											</div>
											<div class="text-14 color-grey-2 mb-1">배편시간</div>
											<div class="form-row mb-3">
												<div class="col-6">
													<select class="custom-select form-control form-control-sm"
														id="ullengdo_info_selectbox_ship_start_hour"><option
															value="00">00</option>
														<option value="01">01</option>
														<option value="02">02</option>
														<option value="03">03</option>
														<option value="04">04</option>
														<option value="05">05</option>
														<option value="06">06</option>
														<option value="07">07</option>
														<option value="08">08</option>
														<option value="09">09</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
														<option value="13">13</option>
														<option value="14">14</option>
														<option value="15">15</option>
														<option value="16">16</option>
														<option value="17">17</option>
														<option value="18">18</option>
														<option value="19">19</option>
														<option value="20">20</option>
														<option value="21">21</option>
														<option value="22">22</option>
														<option value="23">23</option></select>
												</div>
												<div class="col-6">
													<select class="custom-select form-control form-control-sm"
														id="ullengdo_info_selectbox_ship_start_minute"><option
															value="00">00</option>
														<option value="05">05</option>
														<option value="10">10</option>
														<option value="15">15</option>
														<option value="20">20</option>
														<option value="25">25</option>
														<option value="30">30</option>
														<option value="35">35</option>
														<option value="40">40</option>
														<option value="45">45</option>
														<option value="50">50</option>
														<option value="55">55</option></select>
												</div>
											</div>
											<div class="text-14 color-grey-2">나가는항구</div>
											<div class="mb-2">
												<label class="radiobtn-container inline-radio"><span
													class="radio-label">도동</span><input type="radio"
													name="ullengdo_info_radio_end_harbor" value="1"><span
													class="checkmark"></span></label><label
													class="radiobtn-container inline-radio"><span
													class="radio-label">사동</span><input type="radio"
													name="ullengdo_info_radio_end_harbor" value="2"><span
													class="checkmark"></span></label><label
													class="radiobtn-container inline-radio"><span
													class="radio-label">저동</span><input type="radio"
													name="ullengdo_info_radio_end_harbor" value="3"><span
													class="checkmark"></span></label><label
													class="radiobtn-container inline-radio"><span
													class="radio-label">모름</span><input type="radio"
													name="ullengdo_info_radio_end_harbor" value="4"><span
													class="checkmark"></span></label>
											</div>
											<div class="text-14 color-grey-5">'모름'으로 선택하실경우 직원이 전화나
												문자로 안내해드립니다.</div>
										</div>
										<button class="btn btn-primary my-3 btn-pill btn-block"
											id="btn_search_list_ullengdo_input_search">검색</button>
										<div class="box-round p-3 mb-2">
											<div class="text-16 color-black-2 mb-2">
												&lt;울릉도 대여 시 꼭 확인해 주세요!&gt;
												<!--울릉도-->
											</div>
											<hr>
											<p class="text-14 color-black-5">
												1. 울릉도는 배편으로만 이동이 가능한 섬입니다. 배편을 먼저 예약해 주세요!<br>울릉도 지역의
												렌트카는 이용하시는 배편의 시간에 맞춰 준비해드립니다. 배편을 먼저 예약한 뒤 렌트카를 예약하셔야 합니다.
												'가보고 싶은 섬' 어플을 통해 배편을 미리 예약할 수 있습니다.<br>
											</p>
											<div class="click-effect-press"
												id="ullengdo_reservation_ship_app_btn">-&gt; 가보고싶은 섬
												어플 다운하기</div>
											<br>2. 매일 비슷한 시간에 도동/저동/사동 항구로 여객선이 도착합니다.<br>이런
											지리적 특성과 업체 사정으로 대여시간과 반납시간이 고정되어 있습니다.<br>오후 반납을 원하는 고객은
											업체와 조율하셔서 현장에서 추가 결제를 하셔야 합니다. 정확한 안내는 업체와 전화통화로 조율 가능합니다.<br>
											<br>3. 자세한 안내를 원할 경우 카모아 고객센터(1544-5344) 또는 카카오톡 카모아로
											문의하시기 바랍니다.
											<p></p>
										</div>
										<div class="box-round p-2 mb-2">
											<div class="text-16 color-black-2 mb-2">울릉도 둘러보기</div>
											<hr>
											<div class="swiper" id="vsl_root_ulleongdo_swiper">
												<div class="swiper-wrapper">
													<div class="w-100 swiper-slide">
														<img class="w-100"
															src="/home/images/img_info_ulleongdo_1.png">
													</div>
													<div class="w-100 swiper-slide">
														<img class="w-100"
															src="/home/images/img_info_ulleongdo_2.png">
													</div>
													<div class="w-100 swiper-slide">
														<img class="w-100"
															src="/home/images/img_info_ulleongdo_3.png">
													</div>
												</div>
												<div class="swiper-pagination custom-swiper-pagination"></div>
											</div>
										</div>
									</div>
								</div>
								<div id="container_search_list_search_hearder"
									style="display: block;">
									<div
										class="row d-none d-lg-flex align-items-center my-3 tmobi-mt-0">
										<div class="col">
											<h2 class="text-20 text-left">검색결과</h2>
										</div>
										<div class="col dc-flex justify-content-end">
											<div class="js-no-data-hide-elmt" style="display: block;">
												<div class="sort-filter-container dc-none dc-lg-block">
													<div class="js-vsl-sort">
														<div class="table-sort dc-flex justify-content-end">
															<div class="js-vsl-btn-sort radio-sort" data="3">
																<div class="icon-sort"></div>
																<div class="txt-sort">가격순</div>
															</div>
															<div
																class="js-vsl-btn-sort radio-sort left-margin active"
																data="1">
																<div class="icon-sort"></div>
																<div class="txt-sort">차종순</div>
															</div>
															<div class="js-vsl-btn-sort radio-sort left-margin"
																data="2">
																<div class="icon-sort"></div>
																<div class="txt-sort">인기순</div>
															</div>
														</div>
													</div>
													<div class="js-vsl-new-sort dc-none" style="display: none;">
														<div class="table-sort dc-flex justify-content-end">
															<div class="js-vsl-btn-sort radio-sort active" data="1">
																<div class="icon-sort"></div>
																<div class="txt-sort">가격순</div>
															</div>
															<div class="js-vsl-btn-sort radio-sort left-margin"
																data="2">
																<div class="icon-sort"></div>
																<div class="txt-sort">추천순</div>
															</div>
															<div class="js-vsl-btn-sort radio-sort left-margin"
																data="3">
																<div class="icon-sort"></div>
																<div class="txt-sort">신차순</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="js-no-data-hide-elmt" style="display: block;">
										<div class="dc-none dc-lg-flex">
											<div class="btn-group btn-group-toggle flex-1"
												data-toggle="buttons">
												<label class="btn btn-white js-tab-car-type-pc" data-i="1"><input
													id="option1" type="radio" name="radio_car_type"
													autocomplete="off" checked="" value="1"> 전체</label><label
													class="btn btn-white js-tab-car-type-pc" data-i="2"
													style="display: block;"><input id="option2"
													type="radio" name="radio_car_type" autocomplete="off"
													value="2"> 전기</label><label
													class="btn btn-white js-tab-car-type-pc" data-i="3"
													style="display: block;"><input id="option3"
													type="radio" name="radio_car_type" autocomplete="off"
													value="3"> 경형</label><label
													class="btn btn-white js-tab-car-type-pc" data-i="4"
													style="display: none;"><input id="option4"
													type="radio" name="radio_car_type" autocomplete="off"
													value="4"> 소형</label><label
													class="btn btn-white js-tab-car-type-pc" data-i="5"
													style="display: block;"><input id="option5"
													type="radio" name="radio_car_type" autocomplete="off"
													value="5"> 준중형</label><label
													class="btn btn-white js-tab-car-type-pc" data-i="6"
													style="display: block;"><input id="option6"
													type="radio" name="radio_car_type" autocomplete="off"
													value="6"> 중형</label><label
													class="btn btn-white js-tab-car-type-pc" data-i="7"
													style="display: block;"><input id="option7"
													type="radio" name="radio_car_type" autocomplete="off"
													value="7"> 대형</label><label
													class="btn btn-white js-tab-car-type-pc active" data-i="8"
													style="display: block;"><input id="option8"
													type="radio" name="radio_car_type" autocomplete="off"
													value="8"> 수입</label><label
													class="btn btn-white js-tab-car-type-pc" data-i="9"
													style="display: block;"><input id="option9"
													type="radio" name="radio_car_type" autocomplete="off"
													value="9"> 승합RV</label><label
													class="btn btn-white js-tab-car-type-pc" data-i="10"
													style="display: block;"><input id="option10"
													type="radio" name="radio_car_type" autocomplete="off"
													value="10"> SUV</label>
											</div>
										</div>
									</div>
								</div>
								<div class="position-relative mt-2" id="container_search_list_short_car">
<!-- 									칸 -->
									<div class="js-vsl-container-progress-bar vsl-container-progress-bar" style="opacity: 0;">
										<div class="vsl-progress-bar-wrap">
											<div class="js-vsl-progress-bar vsl-progress-bar" style="width: 0%;">
											</div>
										</div>
									</div>
									
<!-- 									차 카드표시  -->

									<c:forEach var="carList" items="${carList }">
									<form action="rent2">
																																																
									<div class="bg-white mb-3 js-vsl-container-search-list-item click-no-effect"  onclick="window.location.href='rent2?car_id=${carList.car_id}&place=${param.place }'">
										<div class="row car-list no-gutters">
											<div class="col-12 col-lg-5">
												<div class="pt-3 pb-2 px-1 p-lg-3">
														<div class="col-6 col-lg-12 pb-lg-3">			
															<img class="js-vsl-img-car vsl-img-car img-fluid px-2 p-lg-3 mb-2 lazy" src="resources/images/${carList.car_model }.png" >
														</div>
													<div class="js-group-include-info row no-gutters">
														<div class="col-12 px-3 px-lg-0 text-12">
															<div class="d-flex justify-content-center align-items-center flex-wrap">
																<div class="js-container-car-info-icon pr-4">
																	<div class="d-flex align-items-center">
																		<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE3IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM3ODhBQUMiIGQ9Ik0xMi41IDEzLjA2MXYtMS40OTVjMC0xLjg1MS0xLjE2NC0zLjQyNC0yLjc2Ni0zLjk2Ny43Ny0uNDUyIDEuMjkzLTEuMzEzIDEuMjkzLTIuMjk5IDAtMS40NTEtMS4xMzQtMi42MzQtMi41MjctMi42MzQtMS4zOTMgMC0yLjUyNyAxLjE4My0yLjUyNyAyLjYzNCAwIC45ODYuNTIzIDEuODQ3IDEuMjkzIDIuMjk5QzUuNjYyIDguMTQyIDQuNSA5LjcxNSA0LjUgMTEuNTY2djEuNDk1YzAgLjE1LjExNi4yNzIuMjYuMjcyaDcuNDg0Yy4xNC0uMDAyLjI1Ni0uMTIyLjI1Ni0uMjcyeiIvPgo8L3N2Zz4K">
																		<span class="js-car-info-txt-passenger ml-1">${carList.car_seater }</span>
																	</div>
																</div>
 
																<div class="js-container-car-info-icon pr-4">
																	<div class="d-flex align-items-center">
																		<img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGZpbGw9IiM4NTkyQUIiIGQ9Ik0zIDEyaDEwdjJIM3pNOSA1aDJsLTEgNEg4bDEtNHpNOCA5aDJsMSAzSDUuNUw4IDl6Ii8+CiAgICA8Y2lyY2xlIGN4PSIxMCIgY3k9IjQiIHI9IjIiIGZpbGw9IiM4NTkyQUIiLz4KPC9zdmc+Cg=="><span
																			class="js-car-info-txt-transmission ml-1">오토</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												
											</div>							
<!-- 										차 카드 오른쪽 -->
											<div class="js-vsl-container-car-company-list car-list-item-wrapper col-12 col-lg-7">				
												<div class="mb-3">
													<div class="dc-flex align-items-end mt-1"></div>		
												</div>
												<div class="col-6 col-lg-12 d-flex flex-column justify-content-center">
													<div class="pt-lg-3 border-lg-top">
														<div class="js-vsl-badge-car-type">
															<div class="badge-car-type px-2 py-1 dc-flex align-items-center">
																<img
																	src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS43NTQ0IDQuMDA5NzlMMTIuODIwNCA2Ljg0NzQyQzEzLjI0NyA2LjkwMzk4IDEzLjk5NzMgNy40MTcxNSAxNCA4LjM4ODMyVjExLjE3NDlDMTQgMTEuNjMyOSAxMy42NDAyIDEyLjAwMjYgMTMuMTk3NSAxMi4wMDI2SDEyLjk1OTVWMTIuNDgwOEMxMi45NTk1IDEzLjkwMyAxMS4wMDgxIDEzLjg4NjUgMTEuMDAyOCAxMi40ODA4VjEyLjAwMjZIMy45ODc4N1YxMi40ODA4QzMuOTg3ODcgMTMuODg2NSAyLjAzNjUzIDEzLjkwMyAyLjAzOTIxIDEyLjQ4MDhWMTIuMDAyNkgxLjgwMjQ4QzEuMzU5NzggMTIuMDAyNiAxIDExLjYzMTUgMSAxMS4xNzQ5VjguMzg4MzJDMC45OTg2NzEgNy40MTcxNSAxLjc0NzY0IDYuOTAzOTggMi4xNzAyNyA2Ljg0NzQyTDMuMjM2MjIgNC4wMDk3OUMzLjQzOTUxIDMuNDY2MjcgMy44NzU1MyAzLjAwNDE0IDQuNjk1MzcgM0gxMC4yOTUzQzExLjExOTEgMy4wMDQxNCAxMS41NTUxIDMuNDY2MjcgMTEuNzU0NCA0LjAwOTc5Wk0xMC44MzI5IDYuODIxMjFDMTEuMTI3MiA2LjgyMTIxIDExLjMyNjUgNi41MTIyMSAxMS4yMTE0IDYuMjMyMTZMMTAuNjQ5NyA0Ljg2MjMyTDEwLjYzNzIgNC44MzY0MUMxMC40ODA1IDQuNTA5OTkgMTAuMzg4IDQuMzE3MjggMTAuMDQ2NSA0LjMxMTlINC45NDE0N0M0LjU4NTcxIDQuMzE3NDIgNC40MjI1NSA0LjY0NTc0IDQuMzM4MjggNC44NjIzMkwzLjc3NjU1IDYuMjMyMTZDMy42NjE1MyA2LjUxMjIxIDMuODYwODEgNi44MjEyMSA0LjE1NTA0IDYuODIxMjFIMTAuODMyOVpNMTIuNjM1NiA4LjgzMTQzQzEyLjYzNTYgOS4zMjc5NyAxMi4yMzg4IDkuNzMwNDkgMTEuNzQ5MiA5LjczMDQ5QzExLjI1OTcgOS43MzA0OSAxMC44NjI5IDkuMzI3OTcgMTAuODYyOSA4LjgzMTQzQzEwLjg2MjkgOC4zMzQ5IDExLjI1OTcgNy45MzIzNyAxMS43NDkyIDcuOTMyMzdDMTIuMjM4OCA3LjkzMjM3IDEyLjYzNTYgOC4zMzQ5IDEyLjYzNTYgOC44MzE0M1pNMy4xNzM1OSA5LjczMDQ5QzMuNjYzMTIgOS43MzA0OSA0LjA1OTk1IDkuMzI3OTcgNC4wNTk5NSA4LjgzMTQzQzQuMDU5OTUgOC4zMzQ5IDMuNjYzMTIgNy45MzIzNyAzLjE3MzU5IDcuOTMyMzdDMi42ODQwNyA3LjkzMjM3IDIuMjg3MjMgOC4zMzQ5IDIuMjg3MjMgOC44MzE0M0MyLjI4NzIzIDkuMzI3OTcgMi42ODQwNyA5LjczMDQ5IDMuMTczNTkgOS43MzA0OVoiIGZpbGw9IiM4NTkyQUIiLz4KPC9zdmc+Cg==">
																	<span class="ml-1">${carList.car_manufacturer }</span>
<!-- 																			차 제조사 -->
															</div>
														</div>
														<div class="js-vsl-txt-car-model text-20 mb-1 color-grey-1">${carList.car_model }</div>
														<div class="js-vsl-txt-car-desc text-12 color-grey-5">벤츠 E클래스 10세대</div>
														<div class="js-vsl-txt-car-price-range text-16 text-lg-12 mb-0 mt-2 color-grey-2 font-weight-medium">2시간 : ${carList.car_price }원</div>

													</div>
												</div>
												
												<div class="js-vsl-container-car-info-list">
													<div class="" id="vsl_container_car_info_0">
														<div
															class="vsl-container-car-info px-25 py-25 mb-2 js-vsl-container-car-info"
															data="0" data-promotion="0"
															data-product-id="15461053516722016201617513"
															data-delivery="0">
															<div class="js-vsl-container-price-info-list">
																<div class="click-effect-press">
																	<a class="js-a-href js-vsl-btn-car-list-price"
																		data-is="7513"
																		href="container-view-car-detail.html?mt=1&amp;rt=1&amp;srsd=2023-04-06 10:00:00&amp;sred=2023-04-07 10:00:00&amp;ssat=2&amp;ssac=I_2&amp;sls=20&amp;isOverSeas=false&amp;msac=I_2&amp;pet=0&amp;fishing=0&amp;army=0&amp;foreigner=0&amp;isul=0&amp;fda=-1&amp;rcs=59604&amp;sis=7513&amp;eat=여수엑스포역&amp;epos=2&amp;einpos=1&amp;v=230329_1">
																		<div class="js-vsl-price-top-info dc-flex justify-content-between align-items-center">
																			<div class="js-vsl-price-info-only-top">
																				<img class="js-vsl-img-car-year-icon dc-none mr-1"
																					src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik05LjUwNTk0IDExLjk5OTlIMS42OTk1MUMwLjc2MDg5OCAxMS45OTk5IDAgMTEuMjY3MyAwIDEwLjM2MzVWNi41NDU0QzAgNS42NDE2NyAwLjc2MDg5OCA0LjkwOTA1IDEuNjk5NTEgNC45MDkwNUgyLjc0NzYyTDQuODY0MTEgMC4zMjM5MjJDNC45NTUwNCAwLjEyNjk0NCA1LjE1NzkyIDAgNS4zODE3OSAwQzYuNjMzMjggMCA3LjY0NzgxIDAuOTc2ODI1IDcuNjQ3ODEgMi4xODE4VjMuODE4MTVMMTAuMjgxMyAzLjgxODE4QzEwLjc3OTkgMy44MTI3NSAxMS4yNTU4IDQuMDE4NDEgMTEuNTgzIDQuMzgwNjlDMTEuOTEwMiA0Ljc0Mjk3IDEyLjA1NTYgNS4yMjUzMyAxMS45ODA3IDUuNzAwOEwxMS4xOTkxIDEwLjYwOUMxMS4wNzIgMTEuNDE1NyAxMC4zNDcgMTIuMDA5MSA5LjUwNTk0IDExLjk5OTlaTTMuNjgyMzkgMTAuOTA5NEw5LjUxMjQ2IDEwLjkwOTRDOS43OTQ5NCAxMC45MTI1IDEwLjAzNjYgMTAuNzE0NyAxMC4wNzkxIDEwLjQ0NDlMMTAuODYwOCA1LjUzNjYzQzEwLjg4NTcgNS4zNzg0MSAxMC44MzcyIDUuMjE3NjIgMTAuNzI4MSA1LjA5Njg2QzEwLjYxOTEgNC45NzYxIDEwLjQ2MDQgNC45MDc1NSAxMC4yODc4IDQuOTA5NEg3LjA4MTQyQzYuNzY4NTUgNC45MDk0IDYuNTE0OTEgNC42NjUxOSA2LjUxNDkxIDQuMzYzOTVWMi4xODIxNUM2LjUxNDkxIDEuNjk1MyA2LjE4MzY4IDEuMjgyOTQgNS43MjYzNyAxLjE0MjU4TDMuNjgyMzkgNS41NzA2VjEwLjkwOTRaTTEuNjcxMjIgNkgyLjU0OTMxVjEwLjkwOUgxLjY3MTIyQzEuMzU4MzUgMTAuOTA5IDEuMTA0NzIgMTAuNjY0OCAxLjEwNDcyIDEwLjM2MzZWNi41NDU0NUMxLjEwNDcyIDYuMjQ0MjEgMS4zNTgzNSA2IDEuNjcxMjIgNloiIGZpbGw9IiMwRDZGRkMiLz4KPC9zdmc+Cg=="
																					style="display: none;"><span
																					class="js-vsl-txt-car-year text-12 font-weight-bold car-year-color mb-0">${carList.car_year }ㆍ</span><span
																					class="js-vsl-txt-car-fuel text-12 font-weight-bold color-grey-2 mb-0">${carList.car_fuel }</span>
																			</div>
																			
																		</div>
																		<div class="dc-flex justify-content-between align-items-center">
																			<div class="d-flex align-items-center">
																				<img class="mr-1"
																					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9InVybCgjcGFpbnQwX2xpbmVhcikiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyLjEwMSAxMC4wNjRjLS44MTggMS43NzktMi4zMTIgMy4xMzYtNC40MTQgMy45MDItLjEyMy4wNDUtLjI1Ny4wNDUtLjM4IDAtMi4wOTctLjc2Ny0zLjU5LTIuMTI0LTQuNDA5LTMuOTAzLS4zMDUtLjY2Ni0uNTI0LTEuNDg2LS42NzEtMi40MjgtLjE5OS0xLjI3LS4yNS0yLjU5LS4yMTktMy43MmwuMDA4LS4yMWMuMDE0LS4yOS4yNTUtLjUxOC41NDktLjUxOCAxLjI3OCAwIDIuNDMtLjIxMiAzLjQzNC0uNTYzLjM1LS4xMjIuNjU0LS4yNTEuOTEyLS4zOC4xNS0uMDc1LjI0Ny0uMTMuMjktLjE1OC4xOC0uMTE1LjQxMi0uMTE1LjU5MyAwIC4wNDIuMDI3LjE0LjA4My4yOS4xNTcuMjU5LjEzLjU2NC4yNi45MTMuMzgxIDEuMDA4LjM1MSAyLjE2LjU2MyAzLjQzOC41NjMuMjk0IDAgLjUzNS4yMjguNTUuNTE5bC4wMDcuMjA5Yy4wMyAxLjEzLS4wMiAyLjQ1LS4yMTkgMy43Mi0uMTQ3Ljk0Mi0uMzY2IDEuNzYyLS42NzIgMi40Mjl6TTcuOTkyIDUuNGMwLS4yNzYtLjIyNS0uNS0uNTA0LS41LS4yNzggMC0uNTA0LjIyNC0uNTA0LjV2Mi4wMDJINC45NjdjLS4yNzggMC0uNTA0LjIyNC0uNTA0LjVzLjIyNi41LjUwNC41aDIuMDE3VjEwLjRjMCAuMjc3LjIyNi41LjUwNC41LjI3OSAwIC41MDQtLjIyMy41MDQtLjVWOC40MDJoMi4wMTdjLjI3OCAwIC41MDQtLjIyNC41MDQtLjVzLS4yMjYtLjUtLjUwNC0uNUg3Ljk5MlY1LjR6IiBjbGlwLXJ1bGU9ImV2ZW5vZGQiLz4KICAgIDxkZWZzPgogICAgICAgIDxsaW5lYXJHcmFkaWVudCBpZD0icGFpbnQwX2xpbmVhciIgeDE9IjEyLjQzOSIgeDI9IjIuMTkxIiB5MT0iMiIgeTI9IjIuMTU0IiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSI+CiAgICAgICAgICAgIDxzdG9wIHN0b3AtY29sb3I9IiMwNkI2RTYiLz4KICAgICAgICAgICAgPHN0b3Agb2Zmc2V0PSIxIiBzdG9wLWNvbG9yPSIjMEQ2RkZDIi8+CiAgICAgICAgPC9saW5lYXJHcmFkaWVudD4KICAgIDwvZGVmcz4KPC9zdmc+Cg=="><span
																					class="js-vsl-txt-car-insu-age text-12 color-grey-3 mb-0">만
																					26세 이상</span>
																			</div>
																			<div class="d-flex align-items-center">

																				<div
																					class="js-vsl-txt-company-discount-price text-right text-16-b color-red-brown mb-0 dc-inline-block">${carList.car_price }원(쿼리짜서 가격 넣어야함.)</div>
																			</div>
																		</div>
																		</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										
									</div>
									</form>
									</c:forEach>
									
								</div>

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../inc/footer.jsp"></jsp:include>
	</main>

</body>
</html>