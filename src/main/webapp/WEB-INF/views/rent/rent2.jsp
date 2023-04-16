<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html class="no-fouc">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/css.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	function pay(){
		
		location.href="pay?car_id=${param.car_id}&place=${param.place}&rentalDatetime=${param.rentalDatetime}&ins=${param.ins}";
		
	}
</script>
</head>
<body style="">
	<jsp:include page="../inc/top.jsp"></jsp:include>
	<div class="pc-mobile-header-container">
		<div class="container p-0">
			<div class="row my-lg-5 reservation-row">
				<div class="col-lg-7 cm-lg-rounded">
					<div class="mx-n15px mx-lg-0">
						<section class="carmore-section" id="js_vcd_section_top">
							<div class="container">
								<div class="row align-items-center py-lg-3">
									<div class="col-8 offset-2 col-xl-6 offset-xl-3 px-5">
										<div class="mt-3 mb-xl-0">
											<img class="img-fluid" id="vcd_img_car"
												src="resources/images/car/${car.car_model }.png" style="width:289px; height:140px;">
											
										</div>
									</div>
									<div class="col-12 text-center">
										<div class="text-10 color-grey-5 mt-2 mb-3">차량 이미지는 이해를
											돕기 위한 예시로, 배차 차량과 다를 수 있습니다.</div>
									</div>
									<div class="col-12">
										<div id="js_vcd_car_period_info">
											<a
												class="js-cpi-container-car-type-badge badge badge-pill badge-bluegreylight color-light-purple"><img
												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMS43NTQ0IDQuMDA5NzlMMTIuODIwNCA2Ljg0NzQyQzEzLjI0NyA2LjkwMzk4IDEzLjk5NzMgNy40MTcxNSAxNCA4LjM4ODMyVjExLjE3NDlDMTQgMTEuNjMyOSAxMy42NDAyIDEyLjAwMjYgMTMuMTk3NSAxMi4wMDI2SDEyLjk1OTVWMTIuNDgwOEMxMi45NTk1IDEzLjkwMyAxMS4wMDgxIDEzLjg4NjUgMTEuMDAyOCAxMi40ODA4VjEyLjAwMjZIMy45ODc4N1YxMi40ODA4QzMuOTg3ODcgMTMuODg2NSAyLjAzNjUzIDEzLjkwMyAyLjAzOTIxIDEyLjQ4MDhWMTIuMDAyNkgxLjgwMjQ4QzEuMzU5NzggMTIuMDAyNiAxIDExLjYzMTUgMSAxMS4xNzQ5VjguMzg4MzJDMC45OTg2NzEgNy40MTcxNSAxLjc0NzY0IDYuOTAzOTggMi4xNzAyNyA2Ljg0NzQyTDMuMjM2MjIgNC4wMDk3OUMzLjQzOTUxIDMuNDY2MjcgMy44NzU1MyAzLjAwNDE0IDQuNjk1MzcgM0gxMC4yOTUzQzExLjExOTEgMy4wMDQxNCAxMS41NTUxIDMuNDY2MjcgMTEuNzU0NCA0LjAwOTc5Wk0xMC44MzI5IDYuODIxMjFDMTEuMTI3MiA2LjgyMTIxIDExLjMyNjUgNi41MTIyMSAxMS4yMTE0IDYuMjMyMTZMMTAuNjQ5NyA0Ljg2MjMyTDEwLjYzNzIgNC44MzY0MUMxMC40ODA1IDQuNTA5OTkgMTAuMzg4IDQuMzE3MjggMTAuMDQ2NSA0LjMxMTlINC45NDE0N0M0LjU4NTcxIDQuMzE3NDIgNC40MjI1NSA0LjY0NTc0IDQuMzM4MjggNC44NjIzMkwzLjc3NjU1IDYuMjMyMTZDMy42NjE1MyA2LjUxMjIxIDMuODYwODEgNi44MjEyMSA0LjE1NTA0IDYuODIxMjFIMTAuODMyOVpNMTIuNjM1NiA4LjgzMTQzQzEyLjYzNTYgOS4zMjc5NyAxMi4yMzg4IDkuNzMwNDkgMTEuNzQ5MiA5LjczMDQ5QzExLjI1OTcgOS43MzA0OSAxMC44NjI5IDkuMzI3OTcgMTAuODYyOSA4LjgzMTQzQzEwLjg2MjkgOC4zMzQ5IDExLjI1OTcgNy45MzIzNyAxMS43NDkyIDcuOTMyMzdDMTIuMjM4OCA3LjkzMjM3IDEyLjYzNTYgOC4zMzQ5IDEyLjYzNTYgOC44MzE0M1pNMy4xNzM1OSA5LjczMDQ5QzMuNjYzMTIgOS43MzA0OSA0LjA1OTk1IDkuMzI3OTcgNC4wNTk5NSA4LjgzMTQzQzQuMDU5OTUgOC4zMzQ5IDMuNjYzMTIgNy45MzIzNyAzLjE3MzU5IDcuOTMyMzdDMi42ODQwNyA3LjkzMjM3IDIuMjg3MjMgOC4zMzQ5IDIuMjg3MjMgOC44MzE0M0MyLjI4NzIzIDkuMzI3OTcgMi42ODQwNyA5LjczMDQ5IDMuMTczNTkgOS43MzA0OVoiIGZpbGw9IiM4NTkyQUIiLz4KPC9zdmc+Cg=="><span
												class="js-cpi-txt-car-type ml-1">${car.car_type }</span></a>
											<div
												class="js-cpi-txt-car-model text-20 font-weight-bold color-grey-3 mb-0">
												${car.car_name }</div>
											<div class="js-cpi-container-branch-info pt-1 dc-none"
												style="display: none;">
												<div class="dc-flex align-items-center">
													<img
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE3IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM4NTkyQUIiIGQ9Ik03LjY0OCAyLjE0NmMuMTk2LS4xOTUuNTEyLS4xOTUuNzA3IDBsNS43OTMgNS43OTNjLjMxNS4zMTUuMDkyLjg1NC0uMzUzLjg1NEgyLjIwOWMtLjQ0NSAwLS42NjktLjUzOS0uMzU0LS44NTRsNS43OTMtNS43OTN6TTEzLjAwMiA4Ljc5M2gtMTB2NS41YzAgLjI3Ni4yMjQuNS41LjVoOWMuMjc2IDAgLjUtLjIyNC41LS41di01LjV6Ii8+CiAgICA8cmVjdCB3aWR0aD0iMiIgaGVpZ2h0PSI0IiB4PSI3LjAwMiIgeT0iMTEuNzkzIiBmaWxsPSIjRkFGQUZBIiByeD0iMSIvPgo8L3N2Zz4K">
													<div
														class="js-cpi-txt-branch-info text-12 color-grey-4 ml-1"></div>
												</div>
											</div>
											
<!-- 											대여시간 날짜 앞에서 데이터 받아와서 넣어야함. -->
											<hr class="mb-2">
											<div class="js-cpi-container-rent-period">
												<div
													class="dc-flex justify-content-around align-items-center">
													<div class="text-center">
														<div class="text-12 color-grey-5">대여시간</div>
														<div class="dc-flex text-16-b color-grey-3">
															<span class="txt-rent-start-date mr-1"
																style="display: block;">${fn:substring(param.rentalDatetime, 0, 5)}</span><span
																class="txt-rent-start-time" style="display: block;">${fn:substring(param.rentalDatetime, 5, 11)}</span>
														</div>
													</div>
													<span
														class="badge badge-pill badge-bluegreylight color-light-purple text-12 font-weight-normal"><span
														class="txt-rent-period" style="display: block;">24시간</span></span>
													<div class="text-center">
														<div class="text-12 color-grey-5">반납시간</div>
														
														<div class="dc-flex text-16-b color-grey-3">
															<span class="txt-rent-end-date mr-1"
																style="display: block;">${fn:substring(param.rentalDatetime, 13, 19)}</span><span
																class="txt-rent-end-time" style="display: block;">${fn:substring(param.rentalDatetime, 19, 25)}</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="js-container-night-pickup-guide dc-none">
											<hr class="mt-2 mb-3">
											<div class="npg-container rounded" id="js_npg_section">
												<div class="p-3">
													<div
														class="dc-flex justify-content-between align-items-center">
														<div class="dc-block">
															<p
																class="js-npg-company-branch-name text-white font-weight-bold text-16 mb-0">
																모아렌트카</p>
															<p class="text-white text-16 font-weight-bold mb-0">영업시간
																이후 대여 정보</p>
														</div>
														<div class="dc-flex align-items-center">
															<img
																src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNTMiIGhlaWdodD0iNDIiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8cGF0aCBkPSJNMTAuNTUyIDMyLjYzNmM4LjkyMiAwIDE2LjE1Ny03LjIzNiAxNi4xNTctMTYuMTU4QzI2LjcxIDkuNTAzIDIyLjI5MiAzLjU2MSAxNi4xIDEuM2MxLjA4LS4xOTUgMi4xOS0uMyAzLjMyNC0uM0MyOS43NjkgMSAzOC4xNiA5LjM4OCAzOC4xNiAxOS43MzdjMCAxMC4zNDktOC4zODcgMTguNzM2LTE4LjczNiAxOC43MzZhMTguNjk2IDE4LjY5NiAwIDAgMS0xNC40NzUtNi44MzggMTYgMTYgMCAwIDAgNS42MDMgMXpNMy4yODYgOCAyLjY4IDkuNTY4IDEgOS42NjJsMS4zMDQgMS4wNTgtLjQzIDEuNjI1IDEuNDEyLS45MTMgMS40MS45MTMtLjQzLTEuNjI1IDEuMzAzLTEuMDU4LTEuNjgtLjA5NEwzLjI4NyA4ek00Mi45ODIgMzMgNDEuOSAzNS44MDNsLTIuOTk4LjE2MyAyLjMzIDEuODkyLS43NyAyLjkwNSAyLjUyMS0xLjYzMyAyLjUyMiAxLjYzMy0uNzctMi45MDUgMi4zMjYtMS44OTItMi45OTgtLjE2M0w0Mi45ODIgMzN6TTQ5LjI0NyAxNmwtLjU5IDEuNTQyTDQ3IDE3LjYzbDEuMjg3IDEuMDQ5LS40MjMgMS41OTUgMS4zODMtLjkgMS4zOTIuOS0uNDIyLTEuNTk1IDEuMjc3LTEuMDQ5LTEuNjQ4LS4wODhMNDkuMjQ3IDE2eiIgZmlsbD0iI0ZGRjU5QSIvPgo8L3N2Zz4K">
														</div>
													</div>
													<span class="text-14 color-grey-6">야간인수 시간:&nbsp;</span><span
														class="js-npg-night-pickup-start-time text-14 color-grey-6">00:00</span><span
														class="text-14 color-grey-6">&nbsp;~&nbsp;</span><span
														class="js-npg-night-pickup-end-time text-14 color-grey-6">00:00</span><span
														class="text-14 color-grey-6">, 추가비용&nbsp;</span><span
														class="js-npg-night-fee text-14 color-grey-6"></span>
													<div data-toggle="collapse" data-target="#js_npg_desc"
														aria-expanded="false">
														<div
															class="dc-flex justify-content-end align-items-center"
															id="js_npg_arrow_up">
															<img class="click-effect-press"
																src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNSIgaGVpZ2h0PSIyNSIgdmlld0JveD0iMCAwIDI1IDI1Ij4KICAgIDxwYXRoIGZpbGw9IiM5Nzk3OTciIGQ9Ik0xMi42MTU1NTQsMTIuODAyMTc3OCBMMTcuNjcxNzA4OSw5LjE4NjY0NzU2IEMxOC4xMjA5NTM3LDguODY1NDAzOCAxOC43NDU1NTgxLDguOTY5MTY5MTUgMTkuMDY2ODAxOCw5LjQxODQxMzk1IEMxOS4zODgwNDU2LDkuODY3NjU4NzYgMTkuMjg0MjgwMiwxMC40OTIyNjMxIDE4LjgzNTAzNTQsMTAuODEzNTA2OSBMMTMuMTk1OTI3MywxNC44NDU4OTI1IEMxMi44NDc0MiwxNS4wOTUxMDE0IDEyLjM3ODg4MDMsMTUuMDk0NjEwMiAxMi4wMzA4OTYzLDE0Ljg0NDY3MSBMNi40MTY3MDc3MywxMC44MTIyODU0IEM1Ljk2ODEzNzU1LDEwLjQ5MDEwMDMgNS44NjU2ODIyMSw5Ljg2NTI3OTY4IDYuMTg3ODY3MzEsOS40MTY3MDk1IEM2LjUxMDA1MjQxLDguOTY4MTM5MzIgNy4xMzQ4NzMwMiw4Ljg2NTY4Mzk3IDcuNTgzNDQzMiw5LjE4Nzg2OTA3IEwxMi42MTU1NTQsMTIuODAyMTc3OCBaIi8+Cjwvc3ZnPgo="><span
																class="text-14 text-white click-effect-press">자세히보기</span>
														</div>
													</div>
													<div class="contents collapse" id="js_npg_desc">
														<hr class="bg-color-grey-7 opacity-10">
														<p class="text-14 text-white">카모아 예약완료 후, 반드시 대여업체에
															야간인수가 필요함을 사전에 알려주세요.</p>
														<div class="mt-3">
															<p class="mb-0 text-14 text-white font-weight-bold">·
																야간인수 시간</p>
															<span
																class="js-npg-night-pickup-start-time-hour12 text-14 color-grey-6"></span><span
																class="text-14 color-grey-6">&nbsp;~&nbsp;</span><span
																class="js-npg-night-pickup-end-time-hour12 text-14 color-grey-6"></span>
														</div>
														<div class="js-npg-night-charge-box mt-3">
															<p class="mb-0 text-14 text-white font-weight-bold">·
																야간인수 비용</p>
															<span
																class="text-14 color-grey-6 js-npg-night-pickup-start-time-hour12"></span><span
																class="text-14 color-grey-6">&nbsp;이후 </span><span
																class="js-npg-night-pickup-extra-charge text-14 color-grey-6"></span><br>
															<span class="text-14 color-grey-6">야간인수 비용이 발생할
																경우, 대여업체에 별도 납부해주세요.</span>
														</div>
														<div class="js-npg-night-shuttle-box mt-3">
															<p class="mb-0 text-white text-14 font-weight-bold">·
																셔틀버스 운행시간</p>
															<span
																class="js-npg-shuttle-start-time text-14 color-grey-6"></span><span
																class="text-14 color-grey-6">&nbsp;~&nbsp; </span><span
																class="js-npg-shuttle-end-time text-14 color-grey-6"></span>
														</div>
														<p class="js-npg-notice mt-3 text-14 color-grey-6"></p>
														<div
															class="dc-flex justify-content-end align-items-center"
															id="js_npg_arrow_down">
															<img class="rotate-180 click-effect-press"
																src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNSIgaGVpZ2h0PSIyNSIgdmlld0JveD0iMCAwIDI1IDI1Ij4KICAgIDxwYXRoIGZpbGw9IiM5Nzk3OTciIGQ9Ik0xMi42MTU1NTQsMTIuODAyMTc3OCBMMTcuNjcxNzA4OSw5LjE4NjY0NzU2IEMxOC4xMjA5NTM3LDguODY1NDAzOCAxOC43NDU1NTgxLDguOTY5MTY5MTUgMTkuMDY2ODAxOCw5LjQxODQxMzk1IEMxOS4zODgwNDU2LDkuODY3NjU4NzYgMTkuMjg0MjgwMiwxMC40OTIyNjMxIDE4LjgzNTAzNTQsMTAuODEzNTA2OSBMMTMuMTk1OTI3MywxNC44NDU4OTI1IEMxMi44NDc0MiwxNS4wOTUxMDE0IDEyLjM3ODg4MDMsMTUuMDk0NjEwMiAxMi4wMzA4OTYzLDE0Ljg0NDY3MSBMNi40MTY3MDc3MywxMC44MTIyODU0IEM1Ljk2ODEzNzU1LDEwLjQ5MDEwMDMgNS44NjU2ODIyMSw5Ljg2NTI3OTY4IDYuMTg3ODY3MzEsOS40MTY3MDk1IEM2LjUxMDA1MjQxLDguOTY4MTM5MzIgNy4xMzQ4NzMwMiw4Ljg2NTY4Mzk3IDcuNTgzNDQzMiw5LjE4Nzg2OTA3IEwxMi42MTU1NTQsMTIuODAyMTc3OCBaIi8+Cjwvc3ZnPgo="><span
																class="text-14 text-white click-effect-press">접기</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="js-vcd-not-soldout-elmt">
											<hr class="mt-2">
											<div
												class="js-vcd-price-info dc-flex justify-content-between align-items-center py-1"
												id="js_vcd_price_info_short_month" style="">
												<div class="text-12 color-grey-5">
													<span class="dc-none" id="vcd_txt_day_price"
														style="display: none;"></span>
												</div>
												<div class="text-right">
													<span
														class="js-vcd-txt-discount-rate box-discount-rate text-12 mr-1 color-blue"
														style="display: none;"></span><span
														class="js-vcd-txt-origin-price text-12 text-right color-grey-5 mb-0 text-line-through"
														style="display: none;"></span>
													<div class="js-vcd-overseas-poa-badge dc-none"></div>
													<div class="dc-flex justify-content-end align-items-center">
													</div>
												</div>
											</div>
											<div
												class="js-vcd-price-info dc-flex align-items-center justify-content-between"
												id="js_vcd_price_info_subscribe" style="display: none;">
												<span
													class="js-vcd-badge-subscribe-period badge badge-primary text-10"></span>
												<div class="dc-flex align-items-end flex-column">
													<div class="dc-flex align-items-center">
														<span
															class="js-vcd-txt-discount-rate box-discount-rate text-12 mr-1 color-blue"
															style="display: none;"></span><span
															class="js-vcd-txt-origin-price text-12 color-grey-3 font-weight-bold"
															style="display: none;"></span>
													</div>
													<div class="dc-flex align-items-center">
														<span
															class="text-12 color-grey-4 font-weight-bold mr-1 line-height-1">보험</span><span
															class="text-12 color-grey-4 mr-1 line-height-1">포함</span><span
															class="js-vcd-txt-expected-price text-20 font-weight-bold color-red-brown mb-0">12,300원</span>
													</div>
												</div>
											</div>
											<div
												class="js-oversea-default-insurance-plan text-12 color-grey-4 text-right dc-none">
											</div>
											<div class="mt-1" id="js_vcd_next_prices"></div>
											<div class="dc-none js-show-devide-elmt mt-3 container"
												data-sde-s="0" data-sde-m="1" data-sde-sub="1"
												data-sde-g="0" style="display: none;">
												<div class="dc-none dc-md-block">
													<div class="row">
														<div class="col-5 mx-0 px-0">
															<div
																class="js-btn-custom-cs-tel js-btn-vcd-month-cs-tel color-grey-2 click-effect-press">
																<div class="text-12">월렌트 전문 상담</div>
																<div
																	class="text-18 font-weight-bold js-txt-custom-cs-tel">
																	1544-5344</div>
															</div>
														</div>
														<div class="col-7 mx-0 px-0">
															<a
																class="js-btn-channel-talk btn btn-light-blue btn-block py-2 text-16"
																href="javascript:void(0)"><img class="mr-2 icon-25"
																src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNiIgaGVpZ2h0PSIyNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDI2IDI2Ij4KICAgIDxwYXRoIGZpbGw9IiMwRDZGRkMiIGQ9Ik01LjEzNiAxOS40NzRsMi45MTYtLjg2Yy4yNTMtLjA3Ni41MjUtLjA0Ny43NTcuMDc4IDEuMjk2LjY5OCAyLjc4NCAxLjA3MyA0LjMzOCAxLjA3MyA0LjYzNyAwIDguMzU1LTMuMzMxIDguMzU1LTcuMzgzIDAtNC4wNS0zLjcxOC03LjM4Mi04LjM1NS03LjM4Mi00LjYzNyAwLTguMzU1IDMuMzMxLTguMzU1IDcuMzgzIDAgMS4zMzIuNCAyLjYxMiAxLjE1IDMuNzM4LjE3OS4yNjcuMjE4LjYwMy4xMDYuOTAzbC0uOTEyIDIuNDV6bS0xLjM1IDIuNDg1Yy0uNzkxLjIzMy0xLjUwOS0uNTM1LTEuMjIxLTEuMzA4bDEuNDM3LTMuODYzYy0uNzg5LTEuMzQxLTEuMjEtMi44NDYtMS4yMS00LjQwNUMyLjc5MiA3LjE3NSA3LjQ1MiAzIDEzLjE0NyAzYzUuNjk2IDAgMTAuMzU1IDQuMTc1IDEwLjM1NSA5LjM4MyAwIDUuMjA3LTQuNjYgOS4zODItMTAuMzU1IDkuMzgyLTEuNzM4IDAtMy40MTctLjM5LTQuOTEyLTEuMTJsLTQuNDUgMS4zMTR6Ii8+Cjwvc3ZnPgo=">채팅상담</a>
														</div>
													</div>
												</div>
												<div class="dc-md-none">
													<div class="row">
														<div class="col-5 px-1">
															<a
																class="js-btn-channel-talk btn btn-outline-grey-6 btn-block py-2 text-16 color-grey-4"
																href="javascript:void(0)"><img class="mr-2 icon-25"
																src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNiIgaGVpZ2h0PSIyNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDI2IDI2Ij4KICAgIDxwYXRoIGZpbGw9IiM5OTkiIGQ9Ik01LjEzNiAxOS40NzRsMi45MTYtLjg2Yy4yNTMtLjA3Ni41MjUtLjA0Ny43NTcuMDc4IDEuMjk2LjY5OCAyLjc4NCAxLjA3MyA0LjMzOCAxLjA3MyA0LjYzNyAwIDguMzU1LTMuMzMxIDguMzU1LTcuMzgzIDAtNC4wNS0zLjcxOC03LjM4Mi04LjM1NS03LjM4Mi00LjYzNyAwLTguMzU1IDMuMzMxLTguMzU1IDcuMzgzIDAgMS4zMzIuNCAyLjYxMiAxLjE1IDMuNzM4LjE3OS4yNjcuMjE4LjYwMy4xMDYuOTAzbC0uOTEyIDIuNDV6bS0xLjM1IDIuNDg1Yy0uNzkxLjIzMy0xLjUwOS0uNTM1LTEuMjIxLTEuMzA4bDEuNDM3LTMuODYzYy0uNzg5LTEuMzQxLTEuMjEtMi44NDYtMS4yMS00LjQwNUMyLjc5MiA3LjE3NSA3LjQ1MiAzIDEzLjE0NyAzYzUuNjk2IDAgMTAuMzU1IDQuMTc1IDEwLjM1NSA5LjM4MyAwIDUuMjA3LTQuNjYgOS4zODItMTAuMzU1IDkuMzgyLTEuNzM4IDAtMy40MTctLjM5LTQuOTEyLTEuMTJsLTQuNDUgMS4zMTR6Ii8+Cjwvc3ZnPgo=">채팅상담</a>
														</div>
														<div class="col-7 px-1">
															<a
																class="btn btn-light-blue btn-block py-2 js-btn-custom-cs-tel js-btn-vcd-month-cs-tel click-effect-press text-16"
																href="javascript:void(0)"><img class="mr-2 icon-25"
																src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjYiIGhlaWdodD0iMjYiIHZpZXdCb3g9IjAgMCAyNiAyNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuMDY3IDIzLjI0NWMuNTk3LS41NDcuOTM2LTEuMzIuOTMyLTIuMTI5di0yLjg1OGEyLjg3NSAyLjg3NSAwIDAgMC0yLjQ3NS0yLjkwMyAxMS4zOTcgMTEuMzk3IDAgMCAxLTIuNDk1LS42MiAyLjg4IDIuODggMCAwIDAtMy4wMzQuNjQ4bC0uNjkyLjY5YTE0LjM4IDE0LjM4IDAgMCAxLTQuNC00LjM5MmwuNjg5LS42ODdhMi44NzEgMi44NzEgMCAwIDAgLjY1MS0zLjAzNWMtLjI5OS0uNzk5LS41MDYtMS42MzEtLjYxOS0yLjQ4QTIuODc5IDIuODc5IDAgMCAwIDguNzQ1IDNINS44NzZjLS44MDggMC0xLjU3OS4zNC0yLjEyNC45MzZhMi44NyAyLjg3IDAgMCAwLS43NCAyLjE5NiAxOS45MDMgMTkuOTAzIDAgMCAwIDMuMDk1IDguNzM4IDE5LjY0IDE5LjY0IDAgMCAwIDYuMDQ3IDYuMDM0IDE5Ljk1OCAxOS45NTggMCAwIDAgOC42OSAzLjA4NCAyLjg5IDIuODkgMCAwIDAgMi4yMjMtLjc0M3ptLS45ODYtNS4wMjZ2Mi45MDVhLjk1Ny45NTcgMCAwIDEtMS4wNjMuOTU2IDE4LjAwNiAxOC4wMDYgMCAwIDEtNy44Mi0yLjc4MyAxNy43NDQgMTcuNzQ0IDAgMCAxLTUuNDcxLTUuNDU0QTE4LjAwOCAxOC4wMDggMCAwIDEgNC45MiA1LjkzYS45Ni45NiAwIDAgMSAuOTU4LTEuMDE0aDIuODY3Yy41MDEtLjAwNS45MTEuMzQ4Ljk4LjgzMi4xMjguOTczLjM3MSAxLjk0Ni43MiAyLjg4MWEuOTYuOTYgMCAwIDEtLjIxOCAxLjAxOGwtLjY4LjY4YTEuOTEzIDEuOTEzIDAgMCAwLS4yNjEgMi4zODQgMTYuMjk2IDE2LjI5NiAwIDAgMCA0Ljk4NiA0Ljk3NyAxLjkyMSAxLjkyMSAwIDAgMCAyLjM4OC0uMjZsLjY5Mi0uNjkxYS45NTYuOTU2IDAgMCAxIDEuMDAyLS4yMDljLjk0NC4zNTIgMS45MTkuNTk0IDIuOTE5LjcyNmEuOTU0Ljk1NCAwIDAgMSAuODA4Ljk2NXoiIGZpbGw9IiMwRDZGRkMiLz4KPC9zdmc+Cg==">월렌트
																전문 상담</a>
														</div>
													</div>
												</div>
											</div>
											<div class="mt-3">
												<div class="btn-vcd-mip-info px-3 py-2 click-effect-press"
													id="js_vcd_btn_card_mip_info" style="display: none;">
													<div class="dc-flex align-items-center">
														<img
															src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE3Ij4KICAgIDxwYXRoIGZpbGw9InVybCgjcGFpbnQwX2xpbmVhcikiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTEyLjQ1NCAzLjA2NEgzLjU0NUMyLjE0IDMuMDY0IDEgNC4yMDQgMSA1LjYxdjUuMDljMCAxLjQwNyAxLjE0IDIuNTQ2IDIuNTQ1IDIuNTQ2aDguOTFjMS40MDUgMCAyLjU0NS0xLjE0IDIuNTQ1LTIuNTQ1VjUuNjFjMC0xLjQwNi0xLjE0LTIuNTQ2LTIuNTQ2LTIuNTQ2em0tMS45MDggNy44Yy0uMzUyIDAtLjYzNy0uMjg1LS42MzctLjYzNiAwLS4zNTIuMjg1LS42MzYuNjM3LS42MzZoMS4yNzJjLjM1MiAwIC42MzcuMjg0LjYzNy42MzYgMCAuMzUxLS4yODUuNjM2LS42MzcuNjM2aC0xLjI3MnpNMi45MDkgNi4wOTNjLS4zNTEgMC0uNjM2LjI4NS0uNjM2LjYzNiAwIC4zNTEuMjg1LjYzNi42MzYuNjM2aDEwLjE4MmMuMzUxIDAgLjYzNi0uMjg1LjYzNi0uNjM2IDAtLjM1MS0uMjg1LS42MzYtLjYzNi0uNjM2SDIuOTA5eiIgY2xpcC1ydWxlPSJldmVub2RkIi8+CiAgICA8ZGVmcz4KICAgICAgICA8bGluZWFyR3JhZGllbnQgaWQ9InBhaW50MF9saW5lYXIiIHgxPSIxNC4yODYiIHgyPSIxLjI0NyIgeTE9IjMuMDY0IiB5Mj0iMy4zNTgiIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIj4KICAgICAgICAgICAgPHN0b3Agc3RvcC1jb2xvcj0iIzA2QjZFNiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9IjEiIHN0b3AtY29sb3I9IiMwRDZGRkMiLz4KICAgICAgICA8L2xpbmVhckdyYWRpZW50PgogICAgPC9kZWZzPgo8L3N2Zz4K">
														<div class="flex-fill ml-1">
															최대&nbsp;<span class="font-weight-bold"
																id="js_vcd_txt_card_mip_info_max_month"></span>&nbsp;무이자
															할부&nbsp;
														</div>
														<img
															src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEwIDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM5OTkiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTMuMTI0IDQuNjdjLjE4Mi0uMjA3LjQ5Ny0uMjI4LjcwNS0uMDQ2bDQgMy41Yy4xMDkuMDk1LjE3MS4yMzIuMTcxLjM3NnMtLjA2Mi4yODEtLjE3LjM3NmwtNCAzLjVjLS4yMDkuMTgyLS41MjQuMTYxLS43MDYtLjA0Ny0uMTgyLS4yMDgtLjE2MS0uNTIzLjA0Ny0uNzA1TDYuNzQgOC41IDMuMTcgNS4zNzZjLS4yMDgtLjE4Mi0uMjMtLjQ5Ny0uMDQ3LS43MDV6IiBjbGlwLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+Cg==">
													</div>
												</div>
												
											</div>
										</div>
										<div
											class="dc-flex justify-content-between align-items-center click-effect-press js-vcd-not-soldout-elmt mt-3"
											id="vcd_btn_go_review_compnay">
											<div class="js-company-branch-name text-16-b color-grey-3">${param.place }</div>
											<div
												class="js-vcd-evaluation-wrapper dc-flex align-items-center">
												<img
													src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxMCIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEwIDEwIj4KICAgIDxwYXRoIGZpbGw9IiNGRkU1NUIiIGQ9Ik0zLjEwOCA4LjcwMmMtLjI4OC4xNTgtLjYyNC0uMDk3LS41Ny0uNDMyTDIuOSA2LjA2NiAxLjM2OSA0LjUwNWMtLjIzMy0uMjM3LS4xMDQtLjY1LjIxNy0uN2wyLjExNi0uMzIxLjk0Ni0yLjAwNWMuMTQ0LS4zMDUuNTYtLjMwNS43MDQgMGwuOTQ2IDIuMDA1IDIuMTE2LjMyMWMuMzIxLjA1LjQ1LjQ2My4yMTcuN2wtMS41MyAxLjU2LjM2IDIuMjA1Yy4wNTUuMzM1LS4yOC41OS0uNTY5LjQzMkw1IDcuNjYybC0xLjg5MiAxLjA0eiIvPgo8L3N2Zz4K">
												<div
													class="js-vcd-company-evaluation text-16-b color-grey-2 ml-1">4.3
												</div>
												<div
													class="text-16 color-grey-4 ml-1 is-show-new-branch dc-none"
													style="display: none;">최근입점</div>
												<img class="ml-2"
													src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEwIDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM5OTkiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTMuMTI0IDQuNjdjLjE4Mi0uMjA3LjQ5Ny0uMjI4LjcwNS0uMDQ2bDQgMy41Yy4xMDkuMDk1LjE3MS4yMzIuMTcxLjM3NnMtLjA2Mi4yODEtLjE3LjM3NmwtNCAzLjVjLS4yMDkuMTgyLS41MjQuMTYxLS43MDYtLjA0Ny0uMTgyLS4yMDgtLjE2MS0uNTIzLjA0Ny0uNzA1TDYuNzQgOC41IDMuMTcgNS4zNzZjLS4yMDgtLjE4Mi0uMjMtLjQ5Ny0uMDQ3LS43MDV6IiBjbGlwLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+Cg==">
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>
						
						<div class="js-vcd-not-soldout-elmt">
							<div class="" id="vcd_container_tabs" style="top: 80px;">
								<nav
									class="common-nav-tabs nav nav-classic nav-borderless nav-fill">
									<li class="nav-item text-center">
										<div
											class="nav-link js-vcd-nav-link click-effect-press active"
											id="vcd_car_info_tab">예약정보</div>
									</li>
									<li class="nav-item text-center">
										<div class="nav-link js-vcd-nav-link click-effect-press"
											id="vcd_review_note">필독사항</div>
									</li>
									<li class="nav-item text-center">
										<div class="nav-link js-vcd-nav-link click-effect-press"
											id="vcd_review_tab">리뷰 (851)</div>
									</li>
								</nav>
							</div>
							<div id="vcd_car_info_tab_contents">
								<div class="js-vcd-car-info-tab-content w-100 h-auto"
									id="vcd_car_info_tab_contents_info">
									<section class="carmore-section">
										<div class="container">
											<div class="no-gutters" id="vcd_container_car_info">
												<div class="text-14 font-weight-bold color-grey-3">차량정보</div>
												<div
													class="dc-flex justify-content-between align-items-center click-effect-press"
													id="js_vcd_btn_car_info">
													<div class="text-14">
														<div
															class="d-flex flex-wrap align-items-center wordbreak-breakword">
															
															<div class="js-container-car-info-icon pr-4">
																<div class="d-flex align-items-center">
																	<img
																		src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNOCAxNEMxMS4zMTM3IDE0IDE0IDExLjMxMzcgMTQgOEMxNCA0LjY4NjI5IDExLjMxMzcgMiA4IDJDNC42ODYyOSAyIDIgNC42ODYyOSAyIDhDMiAxMS4zMTM3IDQuNjg2MjkgMTQgOCAxNFpNOC41OTMwNCAxMS41Nzc3VjguODA0NDhMMTEuMTE2OCA0LjgxMDYxSDkuODI5ODJMNy45NDI1MyA3LjgxMjZMNi4yNzIwOCA0LjgxMDYxSDQuOTQ3MDJMNy4zNTYyNiA4LjgwNDQ4VjExLjU3NzdIOC41OTMwNFoiIGZpbGw9IiM4NTkyQUIiLz4KPC9zdmc+Cg=="><span
																		class="js-car-info-txt-car-year ml-1">${car.car_year }</span>
																</div>
															</div>
															<div class="js-container-car-info-icon pr-4">
																<div class="d-flex align-items-center">
																	<img
																		src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE3IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM3ODhBQUMiIGQ9Ik03Ljk3IDIuMTc0QzcuODQgMi4wNTkgNy42NzggMiA3LjUxNiAyYy0uMTYzIDAtLjMyNi4wNTktLjQ1OC4xNzQtLjE2NS4xNDYtNC4wNDIgMy42NDYtNC4wNDIgNy4yNzMgMCAyLjUxMyAyLjAxNiA0LjU1MyA0LjUgNC41NTMgMi40OCAwIDQuNS0yLjA0MyA0LjUtNC41NTMgMC0zLjYyNy0zLjg4LTcuMTI3LTQuMDQ2LTcuMjczeiIvPgo8L3N2Zz4K"><span
																		class="js-car-info-txt-fuel ml-1">${car.car_fuel }</span>
																</div>
															</div>
															<div class="js-container-car-info-icon pr-4">
																<div class="d-flex align-items-center">
																	<img
																		src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE3IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM3ODhBQUMiIGQ9Ik0xMi41IDEzLjA2MXYtMS40OTVjMC0xLjg1MS0xLjE2NC0zLjQyNC0yLjc2Ni0zLjk2Ny43Ny0uNDUyIDEuMjkzLTEuMzEzIDEuMjkzLTIuMjk5IDAtMS40NTEtMS4xMzQtMi42MzQtMi41MjctMi42MzQtMS4zOTMgMC0yLjUyNyAxLjE4My0yLjUyNyAyLjYzNCAwIC45ODYuNTIzIDEuODQ3IDEuMjkzIDIuMjk5QzUuNjYyIDguMTQyIDQuNSA5LjcxNSA0LjUgMTEuNTY2djEuNDk1YzAgLjE1LjExNi4yNzIuMjYuMjcyaDcuNDg0Yy4xNC0uMDAyLjI1Ni0uMTIyLjI1Ni0uMjcyeiIvPgo8L3N2Zz4K"><span
																		class="js-car-info-txt-passenger ml-1">${car.car_seater }</span>
																</div>
															</div>																				
															<div class="js-container-car-info-icon pr-4">
																<div class="d-flex align-items-center">
																	<img
																		src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGZpbGw9IiM4NTkyQUIiIGQ9Ik0zIDEyaDEwdjJIM3pNOSA1aDJsLTEgNEg4bDEtNHpNOCA5aDJsMSAzSDUuNUw4IDl6Ii8+CiAgICA8Y2lyY2xlIGN4PSIxMCIgY3k9IjQiIHI9IjIiIGZpbGw9IiM4NTkyQUIiLz4KPC9zdmc+Cg=="><span
																		class="js-car-info-txt-transmission ml-1">오토</span>
																</div>
															</div>
															<div class="js-container-car-info-icon pr-4 dc-none"
																style="display: none;">
																<div class="d-flex align-items-center">
																	<img
																		src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMy42OTIgMy4wNzdoOC42MTVBMi40NjEgMi40NjEgMCAwIDEgMTQuNzcgNS41NHY0LjkyM2EyLjQ2MSAyLjQ2MSAwIDAgMS0yLjQ2MiAyLjQ2MUgzLjY5MmEyLjQ2MiAyLjQ2MiAwIDAgMS0yLjQ2Mi0yLjQ2MVY1LjUzOWEyLjQ2MiAyLjQ2MiAwIDAgMSAyLjQ2Mi0yLjQ2MnptLjYxNSA3LjY5M2EuNjE1LjYxNSAwIDAgMSAwLTEuMjMxaDEuMjMxYS42MTUuNjE1IDAgMSAxIDAgMS4yM2gtMS4yM3ptMi40NjItLjYxNmMwIC4zNC4yNzUuNjE2LjYxNS42MTZoMS4yMzFhLjYxNS42MTUgMCAwIDAgMC0xLjIzMWgtMS4yM2EuNjE1LjYxNSAwIDAgMC0uNjE2LjYxNXptMy42OTIuNjE2YS42MTUuNjE1IDAgMCAxIDAtMS4yMzFoMS4yMzFhLjYxNS42MTUgMCAxIDEgMCAxLjIzaC0xLjIzem0xLjIzMS01LjIzMUg4LjYxNUEuNjE1LjYxNSAwIDAgMCA4IDYuMTU0djEuMjNjMCAuMzQuMjc1LjYxNi42MTUuNjE2aDMuMDc3Yy4zNCAwIC42MTUtLjI3NS42MTUtLjYxNXYtMS4yM2EuNjE1LjYxNSAwIDAgMC0uNjE1LS42MTZ6IiBmaWxsPSIjODU5MkFCIi8+Cjwvc3ZnPgo="><span
																		class="js-car-info-txt-license ml-1"></span>
																</div>
															</div>
															<div class="js-container-car-info-icon pr-4">
																<div class="d-flex align-items-center">
																	<img
																		src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNyIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE3Ij4KICAgIDxwYXRoIGZpbGw9IiM4NTkyQUIiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTcuOTggMi41Yy40NDQgMCAuODA0LjM2LjgwNC44MDR2LjM3OGwuMjA3LS4xNGMuMzY4LS4yNS44NjgtLjE1NCAxLjExNy4yMTQuMjQ5LjM2Ny4xNTMuODY3LS4yMTQgMS4xMTZsLTEuMTEuNzUzdjEuOTA3bDEuNjkyLS45NzQuMTA3LTEuM2MuMDM2LS40NDIuNDI0LS43NzIuODY3LS43MzUuNDQyLjAzNi43NzEuNDI0LjczNS44NjdsLS4wMTYuMTk0LjMxMy0uMThjLjM4NC0uMjIxLjg3Ni0uMDg5IDEuMDk3LjI5Ni4yMjEuMzg1LjA5Ljg3Ni0uMjk2IDEuMDk4bC0uMzI1LjE4Ny4yMTcuMTA0Yy40LjE5My41NjguNjczLjM3NiAxLjA3My0uMTkzLjQtLjY3My41NjktMS4wNzMuMzc2bC0xLjIwOS0uNTgxLTEuNjU3Ljk1MyAxLjY4NS45NyAxLjE4Ni0uNTZjLjQwMi0uMTg5Ljg4LS4wMTcgMS4wNy4zODUuMTkuNDAxLjAxOC44OC0uMzg0IDEuMDdsLS4xNzQuMDgyLjMwNi4xNzZjLjM4NS4yMjEuNTE3LjcxMy4yOTYgMS4wOTctLjIyMS4zODUtLjcxMy41MTgtMS4wOTguMjk2bC0uMzMyLS4xOTEuMDE4LjI0M2MuMDMzLjQ0My0uMy44MjgtLjc0Mi44NjEtLjQ0My4wMzMtLjgyOC0uMy0uODYxLS43NDJsLS4wOTktMS4zMy0xLjctLjk3OXYyLjA2bDEuMTEuNzUyYy4zNjguMjQ5LjQ2NC43NDkuMjE1IDEuMTE2LS4yNS4zNjgtLjc1LjQ2NC0xLjExNy4yMTRsLS4yMDctLjE0di4yNjdjMCAuNDQ0LS4zNi44MDQtLjgwNC44MDQtLjQ0NCAwLS44MDQtLjM2LS44MDQtLjgwNHYtLjI0MmwtLjE2Mi4xMTJjLS4zNjYuMjUyLS44NjYuMTYtMS4xMTgtLjIwNi0uMjUyLS4zNjUtLjE2LS44NjYuMjA1LTEuMTE4bDEuMDc1LS43NDF2LTIuMDVsLTEuNzU1IDEuMDEtLjA5OSAxLjMzYy0uMDMzLjQ0My0uNDE4Ljc3NS0uODYxLjc0My0uNDQzLS4wMzMtLjc3NS0uNDE5LS43NDItLjg2MmwuMDE4LS4yNDMtLjIzNy4xMzZjLS4zODQuMjIyLS44NzYuMDktMS4wOTctLjI5Ni0uMjIyLS4zODQtLjA5LS44NzYuMjk2LTEuMDk3bC4yMS0uMTIxLS4xNzQtLjA4MmMtLjQwMS0uMTktLjU3My0uNjY4LS4zODQtMS4wNy4xOS0uNDAxLjY2OC0uNTczIDEuMDctLjM4NGwxLjE4Ni41Nkw2LjM4OCA4LjkxIDQuNjM1IDcuOTAxbC0xLjIxLjU4MmMtLjQuMTkyLS44OC4wMjQtMS4wNzItLjM3Ni0uMTkyLS40LS4wMjQtLjg4LjM3Ni0xLjA3M2wuMjE3LS4xMDQtLjIzLS4xMzNjLS4zODQtLjIyMS0uNTE3LS43MTItLjI5NS0xLjA5Ny4yMjEtLjM4NS43MTMtLjUxNyAxLjA5Ny0uMjk2bC4yMTcuMTI1LS4wMTYtLjE5NWMtLjAzNi0uNDQyLjI5My0uODMuNzM1LS44NjcuNDQzLS4wMzYuODMuMjkzLjg2Ny43MzZsLjEwNyAxLjMgMS43NDggMS4wMDZ2LTEuOWwtMS4wNzUtLjc0Yy0uMzY1LS4yNTItLjQ1Ny0uNzUzLS4yMDUtMS4xMTguMjUyLS4zNjYuNzUyLS40NTggMS4xMTgtLjIwNmwuMTYyLjExMnYtLjM1M2MwLS40NDQuMzYtLjgwNC44MDQtLjgwNHoiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K"><span
																		class="js-car-info-txt-air-condition ml-1">에어컨</span>
																</div>
															</div>
															
															
														</div>
													</div>
													
												</div>
											</div>
											<div class="mt-4 dc-none" id="klook_section_rent_return">
												<div class="text-14 font-weight-bold color-grey-3">대여
													및 반납 정보</div>
												<div class="js-klook-rent-return-list">
													<div
														class="js-rent-return-item mt-2 p-3 bg-white dc-flex align-items-center dc-none click-effect-press box-border-grey-7"
														id="js_template_rent_return_item">
														<div class="flex-1">
															<div class="dc-flex align-items-center mb-1">
																<img class="js-rent-return-type-img mr-015"><span
																	class="js-rent-return-type-txt font-weight-bold text-14">대여</span>
															</div>
															<div class="dc-flex align-items center mb-1">
																<img class="js-rent-return-type-img mr-015"
																	src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE3IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM4NTkyQUIiIGQ9Ik03LjY0OCAyLjE0NmMuMTk2LS4xOTUuNTEyLS4xOTUuNzA3IDBsNS43OTMgNS43OTNjLjMxNS4zMTUuMDkyLjg1NC0uMzUzLjg1NEgyLjIwOWMtLjQ0NSAwLS42NjktLjUzOS0uMzU0LS44NTRsNS43OTMtNS43OTN6TTEzLjAwMiA4Ljc5M2gtMTB2NS41YzAgLjI3Ni4yMjQuNS41LjVoOWMuMjc2IDAgLjUtLjIyNC41LS41di01LjV6Ii8+CiAgICA8cmVjdCB3aWR0aD0iMiIgaGVpZ2h0PSI0IiB4PSI3LjAwMiIgeT0iMTEuNzkzIiBmaWxsPSIjRkFGQUZBIiByeD0iMSIvPgo8L3N2Zz4K"><span
																	class="js-rent-return-location-txt color-grey-4 text-14">주소</span>
															</div>
															<p
																class="js-rent-return-arrival-txt mb-0 color-blue-dark text-12">
																오시는 길</p>
														</div>
														<img class="pl-625 py-2 click-effect-press"
															src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEwIDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM5OTkiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTMuMTI0IDQuNjdjLjE4Mi0uMjA3LjQ5Ny0uMjI4LjcwNS0uMDQ2bDQgMy41Yy4xMDkuMDk1LjE3MS4yMzIuMTcxLjM3NnMtLjA2Mi4yODEtLjE3LjM3NmwtNCAzLjVjLS4yMDkuMTgyLS41MjQuMTYxLS43MDYtLjA0Ny0uMTgyLS4yMDgtLjE2MS0uNTIzLjA0Ny0uNzA1TDYuNzQgOC41IDMuMTcgNS4zNzZjLS4yMDgtLjE4Mi0uMjMtLjQ5Ny0uMDQ3LS43MDV6IiBjbGlwLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+Cg==">
													</div>
												</div>
											</div>
											<div class="mt-4 dc-none" id="klook_section_insurance">
												<div class="text-14 font-weight-bold color-grey-3">보험
													및 플랜</div>
												<div
													class="mt-1 dc-flex align-items-center click-effect-press">
													<div
														class="js-klook-insurance-list dc-flex flex-wrap flex-1"></div>
													<img
														class="js-klook-insurance-arrow pl-2 py-1 click-effect-press"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEwIDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM5OTkiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTMuMTI0IDQuNjdjLjE4Mi0uMjA3LjQ5Ny0uMjI4LjcwNS0uMDQ2bDQgMy41Yy4xMDkuMDk1LjE3MS4yMzIuMTcxLjM3NnMtLjA2Mi4yODEtLjE3LjM3NmwtNCAzLjVjLS4yMDkuMTgyLS41MjQuMTYxLS43MDYtLjA0Ny0uMTgyLS4yMDgtLjE2MS0uNTIzLjA0Ny0uNzA1TDYuNzQgOC41IDMuMTcgNS4zNzZjLS4yMDgtLjE4Mi0uMjMtLjQ5Ny0uMDQ3LS43MDV6IiBjbGlwLXJ1bGU9ImV2ZW5vZGQiLz4KPC9zdmc+Cg==">
												</div>
												<div class="align-items-center mr-2 dc-none"
													id="js_template_insurance_item">
													<img
														src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTciIHZpZXdCb3g9IjAgMCAxNiAxNyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTIuMTAxIDEwLjU2NGMtLjgxOCAxLjc3OS0yLjMxMiAzLjEzNi00LjQxNCAzLjkwMmEuNTU0LjU1NCAwIDAgMS0uMzggMGMtMi4wOTctLjc2Ny0zLjU5LTIuMTI0LTQuNDA5LTMuOTAzLS4zMDUtLjY2Ni0uNTI0LTEuNDg2LS42NzEtMi40MjhhMjEuMDM3IDIxLjAzNyAwIDAgMS0uMjExLTMuOTMuNTQ4LjU0OCAwIDAgMSAuNTQ5LS41MThjMS4yNzggMCAyLjQzLS4yMTIgMy40MzQtLjU2My4zNS0uMTIyLjY1NC0uMjUxLjkxMi0uMzguMTUtLjA3NS4yNDctLjEzLjI5LS4xNThhLjU1NC41NTQgMCAwIDEgLjU5MyAwYy4wNDIuMDI3LjE0LjA4My4yOS4xNTcuMjU5LjEzLjU2NC4yNi45MTMuMzgxIDEuMDA4LjM1MSAyLjE2LjU2MyAzLjQzOC41NjMuMjk0IDAgLjUzNS4yMjguNTUuNTE5bC4wMDcuMjA5Yy4wMyAxLjEzLS4wMiAyLjQ1LS4yMTkgMy43Mi0uMTQ3Ljk0Mi0uMzY2IDEuNzYyLS42NzIgMi40Mjl6TTcuOTkyIDUuOWMwLS4yNzYtLjIyNS0uNS0uNTA0LS41YS41MDIuNTAyIDAgMCAwLS41MDQuNXYyLjAwMkg0Ljk2N2EuNTAyLjUwMiAwIDAgMC0uNTA0LjVjMCAuMjc2LjIyNi41LjUwNC41aDIuMDE3VjEwLjljMCAuMjc3LjIyNi41LjUwNC41YS41MDIuNTAyIDAgMCAwIC41MDQtLjVWOC45MDJoMi4wMTdhLjUwMi41MDIgMCAwIDAgLjUwNC0uNWMwLS4yNzYtLjIyNi0uNS0uNTA0LS41SDcuOTkyVjUuOXoiIGZpbGw9InVybCgjazdmNnBkdmpmYSkiLz4KICAgIDxkZWZzPgogICAgICAgIDxsaW5lYXJHcmFkaWVudCBpZD0iazdmNnBkdmpmYSIgeDE9IjEyLjQzOSIgeTE9IjIuNSIgeDI9IjIuMTkxIiB5Mj0iMi42NTQiIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIj4KICAgICAgICAgICAgPHN0b3Agc3RvcC1jb2xvcj0iIzA2QjRFNiIvPgogICAgICAgICAgICA8c3RvcCBvZmZzZXQ9IjEiIHN0b3AtY29sb3I9IiMwRDZGRkMiLz4KICAgICAgICA8L2xpbmVhckdyYWRpZW50PgogICAgPC9kZWZzPgo8L3N2Zz4K"><span
														class="js-klook-insu-type-txt ml-1"></span>
												</div>
											</div>
											<div class="no-gutters mt-4" id="vcd_section_car_option"
												style="display: block;">
												<div class="text-14 font-weight-bold color-grey-3">차량옵션</div>
												<div class="mt-2" id="vcd_container_car_options">
													<div class="container-car-option js-vcd-radio-car-option p-3 mb-2 dc-block active"
														id="template_car_option">
														<label class="checkbox-container inline-radio mb-0"
															id="template_container_car_option_item">
															<div class="checkbox-label ml-3"
																id="template_txt_car_option_item">가죽시트 · 금연 ·
																네비게이션 · 시트열선 · 운전석에어백 · 조수석에어백 · 후방센서 · 후방카메라 · ABS ·
																블루투스 · AUX · iPod · USB · 스마트키</div> 
																<input id="template_radio_car_option" type="radio"
															name="js_template_radio_car_option_name" value="0">
														</label>
													</div>
												</div>
												<div
													class="container-car-option dc-none js-vcd-radio-car-option p-3 mb-2"
													id="template_car_option">
													<label class="checkbox-container inline-radio mb-0"
														id="template_container_car_option_item">
														<div class="checkbox-label ml-3"
															id="template_txt_car_option_item"></div> <input
														id="template_radio_car_option" type="radio"
														name="js_template_radio_car_option_name"><span
														class="checkmark"></span>
													</label>
												</div>
											</div>
											<div class="mt-4 js-show-devide-elmt"
												id="js_vcd_container_additional_service" data-sde-s="1"
												data-sde-m="1" data-sde-sub="1" data-sde-g="0"
												data-sde-ag="0" style="display: block;">
												
												
												<div class="align-items-start dc-none"
													id="js_subscribe_vehicle_maintenance_guide"
													style="display: none;">
													<img class="mr-1 mt-015"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM4NTkyQUIiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTggMTRjMy4zMTQgMCA2LTIuNjg2IDYtNnMtMi42ODYtNi02LTYtNiAyLjY4Ni02IDYgMi42ODYgNiA2IDZ6bTIuODU1LTcuMTQ4Yy4xOTQtLjE5Ni4xOTMtLjUxMi0uMDAzLS43MDctLjE5Ni0uMTk0LS41MTMtLjE5My0uNzA3LjAwM0w3LjQ5NSA4LjgyIDUuODIyIDcuNDA0Yy0uMjEtLjE3OC0uNTI2LS4xNTItLjcwNS4wNTktLjE3OC4yMS0uMTUyLjUyNi4wNTkuNzA0TDcuMiA5Ljg4MmMuMTk5LjE2OC40OTQuMTU1LjY3OC0uMDNsMi45NzYtM3oiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K">
													<div class="text-14 color-grey-3">
														소모품 및 정비, 365일 24시간 출동 서비스 보장<br> <span
															class="text-12 color-grey-4 pt-1">· 고객 과실로 인한 파손이나
															고장은 고객부담입니다.</span>
													</div>
												</div>
											</div>
											<div class="no-gutters mt-4 js-show-devide-elmt dc-none"
												id="vcd_section_reserv_type" data-sde-s="0" data-sde-m="0"
												data-sde-sub="0" data-sde-g="1" data-sde-ag="1"
												style="display: none;">
												<div class="text-14 font-weight-bold color-grey-3">예약
													확정 방식</div>
												<div class="text-14">
													<div class="text-14 color-grey-3" id="js-vcd-reserv-type"></div>
												</div>
											</div>
											<div class="no-gutters mt-4 js-show-devide-elmt"
												id="js_vcd_container_driver_condition" data-sde-s="1"
												data-sde-m="1" data-sde-sub="1" data-sde-g="1"
												data-sde-ag="0" style="display: block;">
												<div class="text-14 font-weight-bold color-grey-3">운전자
													대여조건</div>
												<div class="text-14">
													<div class="text-14 color-grey-3"
														id="js_vcd_rent_tab_container_rent_condition">
														<div class="dc-flex align-items-start mt-2">
															<img class="mt-015"
																src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM4NTkyQUIiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTggMTRjMy4zMTQgMCA2LTIuNjg2IDYtNnMtMi42ODYtNi02LTYtNiAyLjY4Ni02IDYgMi42ODYgNiA2IDZ6bTIuODU1LTcuMTQ4Yy4xOTQtLjE5Ni4xOTMtLjUxMi0uMDAzLS43MDctLjE5Ni0uMTk0LS41MTMtLjE5My0uNzA3LjAwM0w3LjQ5NSA4LjgyIDUuODIyIDcuNDA0Yy0uMjEtLjE3OC0uNTI2LS4xNTItLjcwNS4wNTktLjE3OC4yMS0uMTUyLjUyNi4wNTkuNzA0TDcuMiA5Ljg4MmMuMTk5LjE2OC40OTQuMTU1LjY3OC0uMDNsMi45NzYtM3oiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K">
															<div class="ml-1">
																운전자 나이 <b class="text-primary">만 26세</b> 이상
															</div>
														</div>
														<div class="dc-flex align-items-start mt-2">
															<img class="mt-015"
																src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM4NTkyQUIiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTggMTRjMy4zMTQgMCA2LTIuNjg2IDYtNnMtMi42ODYtNi02LTYtNiAyLjY4Ni02IDYgMi42ODYgNiA2IDZ6bTIuODU1LTcuMTQ4Yy4xOTQtLjE5Ni4xOTMtLjUxMi0uMDAzLS43MDctLjE5Ni0uMTk0LS41MTMtLjE5My0uNzA3LjAwM0w3LjQ5NSA4LjgyIDUuODIyIDcuNDA0Yy0uMjEtLjE3OC0uNTI2LS4xNTItLjcwNS4wNTktLjE3OC4yMS0uMTUyLjUyNi4wNTkuNzA0TDcuMiA5Ljg4MmMuMTk5LjE2OC40OTQuMTU1LjY3OC0uMDNsMi45NzYtM3oiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K">
															<div class="ml-1">
																<b class="text-primary">면허취득일 2년</b> 이상
															</div>
														</div>
														<div class="dc-flex align-items-start mt-2">
															<img class="mt-015"
																src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM4NTkyQUIiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTggMTRjMy4zMTQgMCA2LTIuNjg2IDYtNnMtMi42ODYtNi02LTYtNiAyLjY4Ni02IDYgMi42ODYgNiA2IDZ6bTIuODU1LTcuMTQ4Yy4xOTQtLjE5Ni4xOTMtLjUxMi0uMDAzLS43MDctLjE5Ni0uMTk0LS41MTMtLjE5My0uNzA3LjAwM0w3LjQ5NSA4LjgyIDUuODIyIDcuNDA0Yy0uMjEtLjE3OC0uNTI2LS4xNTItLjcwNS4wNTktLjE3OC4yMS0uMTUyLjUyNi4wNTkuNzA0TDcuMiA5Ljg4MmMuMTk5LjE2OC40OTQuMTU1LjY3OC0uMDNsMi45NzYtM3oiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K">
															<div class="ml-1">
																차량 대여 시 실물면허증 소지 (<b class="text-primary">2종 보통</b> 면허
																이상 필요)
															</div>
														</div>
														<div class="dc-flex align-items-start mt-2">
															<img class="mt-015"
																src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM4NTkyQUIiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTggMTRjMy4zMTQgMCA2LTIuNjg2IDYtNnMtMi42ODYtNi02LTYtNiAyLjY4Ni02IDYgMi42ODYgNiA2IDZ6bTIuODU1LTcuMTQ4Yy4xOTQtLjE5Ni4xOTMtLjUxMi0uMDAzLS43MDctLjE5Ni0uMTk0LS41MTMtLjE5My0uNzA3LjAwM0w3LjQ5NSA4LjgyIDUuODIyIDcuNDA0Yy0uMjEtLjE3OC0uNTI2LS4xNTItLjcwNS4wNTktLjE3OC4yMS0uMTUyLjUyNi4wNTkuNzA0TDcuMiA5Ljg4MmMuMTk5LjE2OC40OTQuMTU1LjY3OC0uMDNsMi45NzYtM3oiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K">
															<div class="ml-1">
																업체별 <b class="text-primary">대여규정 준수</b> (외국인 대여, 낚시용품/애견
																동반, 주행거리제한 규정 등)
															</div>
														</div>
													</div>
												</div>
												
											</div>
										</div>
									</section>
									

									
									<section class="carmore-section dc-none"
										id="js_vcd_section_car_review" style="display: none;">
										<div class="container">
											<h3>🚙 카모아가 먼저 타봤어요</h3>
											<div class="video-wrapper">
												<iframe class="video-iframe w-100"
													id="js_vcd_iframe_car_review" frameborder="0"></iframe>
											</div>
											<div class="text-20 color-grey-2 mt-3"
												id="js_vcd_txt_car_review_title"></div>
											<div class="text-14 color-grey-4 mt-2"
												id="js_vcd_txt_car_review_desc"></div>
										</div>
									</section>
								</div>
								<div class="js-vcd-car-info-tab-content w-100 h-auto"
									id="vcd_car_info_tab_contents_note">
									<section class="carmore-section"
										id="js_vcd_section_reserv_check" style="display: block;">
										<div class="container">
											<div class="text-20 font-weight-bold color-grey-3 py-3">렌트카
												예약 전, 꼭 확인해주세요!</div>
											<div class="dc-flex align-items-start">
												<img
													src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNC41NTMyIDMuNjAwNTdDMTQuOTQzNyAzLjk5MTEgMTQuOTQzNyA0LjYyNDI2IDE0LjU1MzIgNS4wMTQ3OUw3LjQ3NjIzIDEyLjA5MTdDNy4wOTU4OSAxMi40NzIgNi40ODI4MyAxMi40ODM0IDYuMDg4NjcgMTIuMTE3NEwxLjc4MDk4IDguMTE3MzlDMS4zNzYyNyA3Ljc0MTU5IDEuMzUyODMgNy4xMDg4NiAxLjcyODY0IDYuNzA0MTVDMi4xMDQ0NCA2LjI5OTQ0IDIuNzM3MTcgNi4yNzYgMy4xNDE4OCA2LjY1MTgxTDYuNzQzNDIgOS45OTYwOUwxMy4xMzg5IDMuNjAwNTdDMTMuNTI5NSAzLjIxMDA1IDE0LjE2MjYgMy4yMTAwNSAxNC41NTMyIDMuNjAwNTdaIiBmaWxsPSIjMEQ2RkZDIi8+Cjwvc3ZnPgo=">
												<div class="ml-1 text-14 color-grey-4">제주도의 경우, 렌트카 업체
													영업시간 외 대여/반납이 필요한 경우 카모아 고객센터를 통한 상담 후 예약 진행해주세요.</div>
											</div>
											<div class="dc-flex align-items-start mt-2">
												<img
													src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNC41NTMyIDMuNjAwNTdDMTQuOTQzNyAzLjk5MTEgMTQuOTQzNyA0LjYyNDI2IDE0LjU1MzIgNS4wMTQ3OUw3LjQ3NjIzIDEyLjA5MTdDNy4wOTU4OSAxMi40NzIgNi40ODI4MyAxMi40ODM0IDYuMDg4NjcgMTIuMTE3NEwxLjc4MDk4IDguMTE3MzlDMS4zNzYyNyA3Ljc0MTU5IDEuMzUyODMgNy4xMDg4NiAxLjcyODY0IDYuNzA0MTVDMi4xMDQ0NCA2LjI5OTQ0IDIuNzM3MTcgNi4yNzYgMy4xNDE4OCA2LjY1MTgxTDYuNzQzNDIgOS45OTYwOUwxMy4xMzg5IDMuNjAwNTdDMTMuNTI5NSAzLjIxMDA1IDE0LjE2MjYgMy4yMTAwNSAxNC41NTMyIDMuNjAwNTdaIiBmaWxsPSIjMEQ2RkZDIi8+Cjwvc3ZnPgo=">
												<div class="ml-1 text-14 color-grey-4">외국인 대여, 낚시용품
													지참, 애견동물 동반 가능 여부와 주행거리 제한 규정은 업체별로 상이하므로 업체별 대여규정을 확인해주세요.
													대여조건이 맞지 않을 경우 렌트카 이용이 불가합니다.</div>
											</div>
										</div>
									</section>
									
									<div class="js-show-devide-elmt"
										id="js_vcd_container_korean_branch_terms" data-sde-s="1"
										data-sde-m="1" data-sde-sub="1" style="display: block;">
										
									</div>
									<section class="carmore-section"
										id="js_section_vcd_korean_attention" style="display: block;">
										<div class="container">
											<h3>카모아 이용 안내</h3>
											<div class="" id="js_vcp_container_korean"
												style="display: block;">
												<div class="js-vcp-container-korean-attention"
													style="display: block;">
													<div
														class="js-container-btn-category d-flex align-items-start flex-wrap"
														data-top="136" data-modal="0">
														<button
															class="js-vcp-btn-category btn btn-category px-2 py-1 mr-1 mb-2 text-16"
															data-group="vcp_use_category_korean"
															data-target="vcp_use_contents_korean_1">자동차 보험</button>
														<button
															class="js-vcp-btn-category btn btn-category px-2 py-1 mr-1 mb-2 text-16"
															data-group="vcp_use_category_korean"
															data-target="vcp_use_contents_korean_2">차량 정비 및
															사고</button>
														<button
															class="js-vcp-btn-category btn btn-category px-2 py-1 mr-1 mb-2 text-16"
															data-group="vcp_use_category_korean"
															data-target="vcp_use_contents_korean_3">차량배달 서비스
															비용</button>
														<button
															class="js-vcp-btn-category btn btn-category px-2 py-1 mr-1 mb-2 text-16"
															data-group="vcp_use_category_korean"
															data-target="vcp_use_contents_korean_4">연료 규정</button>
														<button
															class="js-vcp-btn-category btn btn-category px-2 py-1 mr-1 mb-2 text-16"
															data-group="vcp_use_category_korean"
															data-target="vcp_use_contents_korean_5">약정주행거리</button>
														<button
															class="js-vcp-btn-category btn btn-category px-2 py-1 mr-1 mb-2 text-16"
															data-group="vcp_use_category_korean"
															data-target="vcp_use_contents_korean_6">15일 이상
															렌트 보증금</button>
														<button
															class="js-vcp-btn-category btn btn-category px-2 py-1 mr-1 mb-2 text-16 dc-none"
															data-group="vcp_use_category_korean"
															data-target="vcp_use_contents_korean_7"
															style="display: none;">월렌트 (2개월 이상)</button>
														<button
															class="js-vcp-btn-category btn btn-category px-2 py-1 mb-2 text-16"
															data-group="vcp_use_category_korean"
															data-target="vcp_use_contents_korean_99">취소규정</button>
													</div>
													
												</div>
												<div class="js-vcp-container-overseas-attention dc-none"
													style="display: none;">
													<div class="js-container-btn-category wordbreak-breakword"
														data-top="0">
														<button
															class="js-vcp-btn-category btn btn-category px-2 py-1 mr-1 mb-2 text-16"
															data-group="vcp_use_category_overseas"
															data-target="vcp_use_contents_korean_overseas_1">차량
															이용</button>
														<button
															class="js-vcp-btn-category btn btn-category px-2 py-1 mr-1 mb-2 text-16"
															data-group="vcp_use_category_overseas"
															data-target="vcp_use_contents_korean_overseas_2">대여/반납
															안내</button>
														<button
															class="js-vcp-btn-category btn btn-category px-2 py-1 mr-1 mb-2 text-16"
															data-group="vcp_use_category_overseas"
															data-target="vcp_use_contents_korean_overseas_3">연료
															규정</button>
														<button
															class="js-vcp-btn-category btn btn-category px-2 py-1 mr-1 mb-2 text-16"
															data-group="vcp_use_category_overseas"
															data-target="vcp_use_contents_korean_overseas_4">차량
															정비 및 사고</button>
														<button
															class="js-vcp-btn-category js-vcp-only-carmore-inline-block btn btn-category px-2 py-1 mb-2 text-16"
															data-group="vcp_use_category_overseas"
															data-target="vcp_use_contents_korean_overseas_5"
															style="display: inline-block;">취소규정</button>
													</div>
													<div class="js-vcp-use-contents-overseas container-blur"
														data-open="0">
														<div id="vcp_use_contents_korean_overseas_1">
															<div class="mt-4 text-16 font-weight-bold color-grey-4">차량
																이용</div>
															<div class="text-14 color-grey-4 mt-2 font-weight-bold">차량
																종류</div>
															<div class="text-14 color-grey-4">해당 이미지는 참고용입니다.
																대여 시 특정 구조, 모델 및 차량 색상은 보장되지 않습니다. 차종은 일반적으로 차량 기능, 크기 및
																수용 공간을 기준으로 분류됩니다. 제휴사마다 차종이 다르게 분류될 수 있습니다.</div>
															<div class="text-14 color-grey-4 mt-2 font-weight-bold">차량
																업그레이드</div>
															<div class="text-14 color-grey-4">
																차량 대여 시, 추가 요금을 지불하고 차종을 업그레이드하도록 권유하는 경우, 제휴사 측에 명확한
																사유를 요구해야 합니다. 차량 재고가 부족하거나 동일한 종류의 차량을 제공할 수 없는 경우, 추가
																요금을 부과하지 않는 것이 일반적입니다.<br>업그레이드를 종용받는 경우, 해당 제휴사
																측과의 대화 내용을 출력된 서류 사본, 녹취 자료 등의 증빙 자료로 확보하시거나, 즉시 카모아
																고객센터로 연락 부탁드립니다.
															</div>
															<div class="text-14 color-grey-4 mt-2 font-weight-bold">추가요금
															</div>
															<div class="text-14 color-grey-4">
																1. 추가 운전자<br>차량 픽업시 추가 운전자를 등록할 수 있으며, 추가요금이 부과됩니다.
																추가 운전자마다 반드시 주 운전자와 동일한 서류를 제시해야 합니다. 미등록 운전자가 운전하는 경우,
																보험은 무효 처리됩니다.<br> <br>2. 지정 장소 외 반납 요금<br>지정
																장소 외 지역에 차량을 반납해야 하는 경우, 별도의 반납 요금(세금 별도)이 부과될 수 있습니다.<br>
																<br>3. 동절기 서비스 요금<br>일부 지역 매장에서는 동절기 서비스 요금을
																부과합니다.<br> <br>4. 추가 옵션 (Add-Ons)<br>추가
																장비/용품 또는 서비스 비용은 현장에서 지불하셔야 합니다.<br> <br>5.
																스노우 체인 &amp; 스노우 타이어<br>독일, 스위스, 핀란드 등에서는 동절기 기간 동안
																스노우 체인 및 스노우 타이어 비용이 부과됩니다. 요금은 매장에서 책정됩니다.
															</div>
														</div>
														<div id="vcp_use_contents_korean_overseas_2">
															<div class="mt-4 text-16 font-weight-bold color-grey-4">
																대여/반납 안내</div>
															<div class="text-14 color-grey-4 mt-2 font-weight-bold">대여
																안내</div>
															<div class="text-14 color-grey-4">
																- 서비스 관련 유의 사항<br>차량 대여 주문내역에는 이미 차량 대여에 필요한 기본 보험이
																포함되어 있습니다. 그러나 제휴사 직원이 추가 보험 또는 서비스를 권장하거나, 해당 항목을 차량 대여
																계약상의 기본 구매 항목으로 설정하는 경우도 있습니다. 실제로 필요한 항목인지 판단하셔서 구매 여부를
																결정하세요. 필요하지 않은 경우, 명확하게 거절 의사를 밝혀주세요.<br> <br>-
																금액<br>최종 결제 금액이 바우처에 명시된 금액과 동일한지 확인해주세요. 불확실한 부분이
																있다면 즉시 문의하세요. 이견 및 해결되지 않는 문제 발생 시 카모아로 연락해주세요. 현장에서 부가
																서비스를 변경하면 가격도 변경됩니다. 서명하기 전 해당 변경 사항과 금액을 꼭 확인해주세요.<br>
																<br>- 교통 법규위반 티켓 발송 주소<br>렌터카 사용 중 발생한 교통 법규위반
																티켓은 계약서 서명 시 제공하신 주소로 발송됩니다. 계약서 확정 후에는 주소 수정이 불가합니다.
																잘못된 주소 제공 시 교통 법규위반 티켓이 발송되지 않습니다. 제때 범칙금을 납부하지 못하면 현지
																신용 기록에 영향을 미치며, 상당한 액수의 체납금이 부과됩니다.<br> <br>-
																긴급 출동 서비스<br>제휴사 직원에게 긴급 출동 서비스용 전화번호를 확인하세요.<br>
																<br>- 대여 시간 변경<br>일찍 차량을 대여하는 경우, 추가 요금이 발생할 수
																있습니다. 대여 시간 변경을 원하시면 해당 제휴사에 변경 가능 여부 및 추가 비용을 확인해주셔야
																합니다.<br>대여 시간을 앞당기면 앞당긴 시간의 차이만큼 차량을 일찍 반납해야 합니다.
																늦게 반납하는 경우, 제휴사에서 현지 시장 가격 기준으로 추가 요금을 부과합니다.<br>차량을
																늦게 대여하게 될 경우, 대여 시간 전에 제휴사 또는 고객센터로 연락해주셔야 합니다. 그렇지 않으면
																차량 이용이 불가할 수 있습니다. 이용약관에 따라 이용하지 않은 대여 시간에 대한 요금 환불은
																불가하기 때문에 정시에 도착하시기 바랍니다.
															</div>
															<div class="text-14 color-grey-4 mt-2 font-weight-bold">차량
																점검 방법</div>
															<div class="text-14 color-grey-4">
																1. 좌석, 유리, 타이어 등 차량 내외부에 긁힌 자국, 찌그러진 곳, 기타 손상된 부분은 없는지
																확인하세요.<br>2. 차량의 문, 창문, 후드와 트렁크 커버가 정상적으로 열리고 닫히는지
																모두 확인하세요.<br>3. 경고등, 전조등, 와이퍼, 경적 등 차량 내부의 스위치를 모두
																확인하세요.<br>4. 차량 정지 표지와 비상용 장비 및 용품이 구비되어 있는지 확인하세요.
																예비 타이어를 제공하지 않는 제휴사도 있습니다. 매장 직원에게 문의 및 확인해주세요.<br>5.
																차량 점검 시 다음은 반드시 사진 또는 영상을 촬영하여 기록하셔야 합니다: 차량 내외부 손상된 부품
																또는 부분, 연료계 및 주행기록계 문제가 있는 경우, 제휴사 직원이 차량 점검 목록에 손상된 부분을
																기록할 수 있도록 하여 차량 반납 시 발생할 수 있는 분쟁을 미연에 방지하세요.<br>6.
																촬영 당시 시간을 확인할 수 있도록 반드시 카메라의 시간 표시 기능을 켜 주세요. 안전한 주행에
																방해가 되는 차량 손상 발견 즉시 제휴사 직원에게 차량 교환을 문의하세요.
															</div>
															<div class="text-14 color-grey-4 mt-2 font-weight-bold">반납
																안내</div>
															<div class="text-14 color-grey-4">
																- 차량 반납 절차<br>1. 매장에 차량을 반납하고 점검을 진행합니다.<br>2.
																계약서와 영수증을 받은 후 보관합니다.<br>3. 일반적으로 보증금은 픽업시 렌터카 업체에
																지불합니다. 렌터카 이용 기간 동안 차량 손상/도난이 없는 경우 또는 차량 반납 후 미결제 금액이
																없는 경우에는 전액 환불됩니다. 신용카드로 보증금을 지불 하셨을 경우, 최소 7일에서 최대 21일까지
																소요될 수 있습니다.<br> <br>* 무인 반납의 경우, 차량 대여 시, 상세한
																반납 방법을 한 번 더 확인 부탁드립니다.<br> <br>- 반납 시간 변경<br>반납
																시간 전에 차량을 반납하더라도 차량을 이용하지 않은 일수 또는 시간에 대한 대여 요금은 환불되지
																않습니다. 일부 업체는 조기 반납 시 추가 요금을 부과할 수 있습니다.<br>만약 지정된
																시간보다 늦게 차량을 반납하는 경우, 미리 제휴사에 알려주셔야 합니다.<br>늦게 반납할
																경우, 현지 시장 가격을 기준으로 추가 요금이 부과될 수 있으며, 반납 시, 제휴사에 직접 지불할 수
																있습니다. 제휴사에게 미리 통보하지 않은 경우, 페널티 요금이 부과될 수 있습니다.
															</div>
															<div class="text-14 color-grey-4 mt-2 font-weight-bold">차량
																반납 시 지켜야 할 사항</div>
															<div class="text-14 color-grey-4">
																1. 차량 청결 유지<br>차량 반납 시 차량 내외부 상태가 더러울 경우, 제휴사에서는
																상당한 액수의 세차비 및 인건비를 청구할 수 있습니다. 이의 제기는 차량 반납 시 제휴사 직원에게
																직접 해 주세요. 차량 반납이 완료된 후에는 이의 제기가 불가합니다.<br> <br>2.
																사유가 불명확한 공제<br>차량 반납 시 차량 손상에 관한 상황을 제휴사 직원과 확인하고
																점검한 후 확인 서명을 하세요. 차량 반납 후 제휴사로부터 비용 청구를 요청 받는 경우, 제휴사에
																연락하여 확인하시거나, 또는 카모아에 연락하여 비용이 청구된 구체적인 사유에 대해 문의하실 수
																있습니다. 지불하셔야 할 비용 결제를 거부하시거나, 유효하지 않은 신용카드로 인한 결제 실패 또는
																유사한 상황 발생 시, 제휴사에서는 채무징수 대행업체를 통해 청구 금액을 징수할 수 있으며, 이에
																따라 상당한 액수의 체납 과태료가 부과될 수 있습니다.<br> <br>3. 차량
																대여 계약서 보관<br>차량 대여 계약서 및 관련 서류를 받은 후 보관하셔야 합니다. 요금에
																관한 분쟁 발생 시, 카모아는 해당 자료를 활용하여 고객의 권익을 최대한 배려합니다.<br>
																<br>4. 교통 법규위반 티켓<br>차량 이용 중 교통법규를 위반한 경우, 현지
																교통부에서 고객의 해당 주소로 교통 법규위반 티켓을 발송합니다. 티켓 확인 후 범칙금을 납부하세요.
																개인정보보호 정책상, 제휴사 및 카모아는 본 사안에 개입할 수 없습니다. 이의가 있는 경우, 교통
																법규위반 통지받으신 후 현지 교통부에 이의 제기를 신청해주셔야 합니다. 법규위반 티켓 수신 소요
																기간은 국가 및 지역마다 다를 수 있습니다. 보통 90일 이내에서 최대 18개월 정도가 소요됩니다.<br>
																<br>5. 통행료<br>차량 이용 중 유료도로 통행료를 지불해야 하는 경우,
																제휴사가 고객의 신용카드에서 통행료를 공제할 수 있으며, 신용카드 사용내역서상에 보통 '통행료/교통'
																항목으로 기재됩니다. 제휴사마다 통행료 규정이 상이하여 차량 대여 시, 제휴사와 한 번 더 재확인
																부탁드립니다.<br> <br>6. 운영 수수료<br>차량 이용 중 범칙금
																또는 통행료가 발생하면 제휴사에서 관련 정보와 서류를 교통부에 제출하는 것을 지원해드릴 수 있습니다.
																이 경우, 운영 수수료가 발생합니다. 제휴사에서는 보통 이에 관해 미리 통지하지 않으며, 발생 건
																별로 고객의 신용카드에 수수료를 청구합니다. (참고 사항: 영국의 경우, 건당 최대 £84의 운영
																수수료가 발생합니다.)
															</div>
														</div>
														<div id="vcp_use_contents_korean_overseas_3">
															<div class="mt-3 text-16 font-weight-bold color-grey-4">연료
																규정</div>
															<div class="text-14 color-grey-4 mt-2">
																- 차량 반납 시, 대여 시점의 연료량과 동일하게 주유하여 반납해야 합니다.<br>- 반납
																시 연료량이 모자랄 경우, 추가 주유 서비스 비용이 발생할 수 있습니다.<br>- 연료를
																채우지 않고 반납(Free Tank)을 허용하는 제휴사가 있을 수 있습니다.해당 규정일 경우, 가득
																채워진 상태로 차량을 픽업하고 남은 연료량에 상관없이 차량을 반납할 수 있습니다.<br>-
																차량 대여 시 계기판을 사진으로 촬영해두시는 것을 권장해 드립니다.<br>- 차량 연료가
																무엇인지 매장 측과 확인하여 주유해 주시길 바랍니다.연료를 잘못 선택하면 차량이 손상될 수 있으며,
																제휴사에서 고액의 수리비를 청구할 수도 있습니다.일반적으로 연료 탱크캡에 디젤 또는 휘발유(가솔린)
																등 연료 종류가 표시되어 있습니다.
															</div>
														</div>
														<div id="vcp_use_contents_korean_overseas_4">
															<div class="mt-3 text-16 font-weight-bold color-grey-4">차량
																정비 및 사고</div>
															<div class="text-14 color-grey-4 mt-2">
																1. 고장, 사고 또는 차량에 문제가 발생한 경우 즉시 렌터카 업체에 연락해야 합니다.<br>2.
																사고가 발생한 경우, 즉시 렌터카 업체에 연락하여 안내를 받으셔야 하며, 제3자가 연관된 사고라면
																당사자의 연락처 정보, 차량등록번호, 운전자 성명, 운전면허증 등록번호 및 기타 관련 정보를 확인해야
																합니다. 사고 현장을 촬영하고 경찰이 도착하거나 렌터카 업체의 지원이 있을 때까지 대기하셔야 합니다.
																경찰에게 Police Report를 반드시 수령하여 렌트카 업체에 제출해야 보험처리가 가능합니다.<br>3.
																임의로 수리할 수 없으며, 반드시 렌트카 업체의 규정에 따라야 합니다. 임의로 수리할 경우, 추가
																비용이 발생할 수 있으며 서비스 이용이 제한됩니다.
															</div>
														</div>
														<div class="js-vcp-only-carmore"
															id="vcp_use_contents_korean_overseas_5"
															style="display: block;">
															<div class="mt-3 text-16 font-weight-bold color-grey-4">취소규정
															</div>
															<div class="text-14 color-grey-4 mt-2">
																<div class="js-vcp-container-free-cancel-date-txt"
																	style="display: none;">
																	·&nbsp;<span
																		class="js-vcp-txt-free-cancel-date text-primary font-weight-bold"></span>&nbsp;까지
																	무료 취소가 가능합니다.
																</div>
																· 결제 후 무료취소 구간에 취소를 하였더라도 대여 시간이 지났을 경우 예약 금액에 대한 환불이
																불가능합니다.<br>· 상세한 취소 규정은 “취소 규정 자세히 보기”에서 확인할 수 있습니다
															</div>
														</div>
													</div>
												</div>
												<div class="js-vcp-container-korean-cancel-fee-info dc-none">
													<div
														class="js-vcp-container-cancel-fee-info-desc mt-3 dc-none"
														data-open="0">
														<div class="js-container-cancel-policy pb-3"
															id="js_container_cancel_fee_table"
															style="display: block;">
															<h5 class="underline-bg dc-inline-block">취소 수수료</h5>
															<div class="js-table-area">
																<table
																	class="js-cancel-fee-table-template table table-condensed table-sm">
																	<colgroup>
																		<col style="width: 50%">
																		<col style="width: 50%">
																	</colgroup>
																	<thead class="thead-light">
																		<tr>
																			<th>대여시간</th>
																			<th>취소 수수료</th>
																		</tr>
																	</thead>
																	<tbody class="js-cancel-fee-table-body color-grey-4">
																		<tr class="js-cancel-fee-table-row-template dc-none">
																			<td class="js-cancel-fee-reservation-point-text">
																			</td>
																			<td class="js-cancel-fee-text"></td>
																		</tr>
																		<tr class="js-cancel-fee-table-row-template">
																			<td class="js-cancel-fee-reservation-point-text">
																				예약 후 1시간 이내</td>
																			<td class="js-cancel-fee-text">100% 환불</td>
																		</tr>
																		<tr class="js-cancel-fee-table-row-template">
																			<td class="js-cancel-fee-reservation-point-text">
																				대여 72시간 이전</td>
																			<td class="js-cancel-fee-text">100% 환불</td>
																		</tr>
																		<tr class="js-cancel-fee-table-row-template">
																			<td class="js-cancel-fee-reservation-point-text">
																				대여 72시간 전 ~ 48시간 전</td>
																			<td class="js-cancel-fee-text">90% 환불</td>
																		</tr>
																		<tr class="js-cancel-fee-table-row-template">
																			<td class="js-cancel-fee-reservation-point-text">
																				대여 48시간 전 ~ 24시간 전</td>
																			<td class="js-cancel-fee-text">80% 환불</td>
																		</tr>
																		<tr class="js-cancel-fee-table-row-template">
																			<td class="js-cancel-fee-reservation-point-text">
																				대여 24시간 전 ~ 1시간 전</td>
																			<td class="js-cancel-fee-text">70% 환불</td>
																		</tr>
																		<tr class="js-cancel-fee-table-row-template">
																			<td class="js-cancel-fee-reservation-point-text">
																				1시간 미만</td>
																			<td class="js-cancel-fee-text">50% 환불</td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<table
																class="js-cancel-fee-table-template table table-condensed table-sm dc-none">
																<colgroup>
																	<col style="width: 50%">
																	<col style="width: 50%">
																</colgroup>
																<thead class="thead-light">
																	<tr>
																		<th>대여시간</th>
																		<th>취소 수수료</th>
																	</tr>
																</thead>
																<tbody class="js-cancel-fee-table-body color-grey-4">
																	<tr class="js-cancel-fee-table-row-template dc-none">
																		<td class="js-cancel-fee-reservation-point-text">
																		</td>
																		<td class="js-cancel-fee-text"></td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div class="js-container-cancel-policy dc-none"
															id="js_container_cancel_policy_korean_month_rent"
															style="display: none;">
															<div class="container policy px-0 pb-3">
																<div class="let-border-group-desc txt-s">
																	<h5 class="underline-bg dc-inline-block">대여 시작 이후
																	</h5>
																	<table
																		class="month-rent-policy-table table table-condensed table-sm table-light table-bordered wordbreak-breakword text-10">
																		<colgroup>
																			<col style="width: 20%">
																			<col style="width: 10%">
																			<col style="width: 10%">
																			<col style="width: 10%">
																			<col style="width: 10%">
																			<col style="width: 10%">
																			<col style="width: 10%">
																			<col style="width: 10%">
																			<col style="width: 10%">
																		</colgroup>
																		<tbody id="cancel_commission_rate_tbody">
																		</tbody>
																	</table>
																</div>
															</div>
														</div>
														<div class="js-container-cancel-policy dc-none"
															id="js_container_cancel_policy_korean_subscribe_rent"
															style="display: none;">
															<div class="container policy px-0 pb-3">
																<div class="let-border-group-desc txt-s">
																	<h5 class="underline-bg dc-inline-block">대여 시작 이후
																	</h5>
																	<div class="wordbreak-breakword">이용 전 회차 대여료 총합의
																		20% 위약금 발생하며 이용 중 회차의 경우 이용 일수에 따라 위약금이 부과됩니다.</div>
																	<div class="wordbreak-breakword">연장 결제 후 연장 시작 일
																		이전에 취소하더라도 이용 전 회차에 대한 위약금 20% 규정에 따릅니다.</div>
																	<br>
																	<div class="mb-1 font-weight-bold text-16">이용 전
																		회차에 대한 위약금</div>
																	<div class="text-14">현재 이용 중인 회차를 제외한 나머지 회차들의
																		대여료 총합의 20% 위약금 발생</div>
																	<div class="text-14">*이용 전 회차에 대한 위약금 : 월 납부원금 X
																		남은 회차 X 20%</div>
																	<br>
																	<div class="mb-3 font-weight-bold text-16">이용 중인
																		회차에 대한 위약금</div>
																	<table
																		class="month-rent-policy-table table table-condensed table-sm table-light table-bordered wordbreak-breakword text-10">
																		<colgroup>
																			<col style="width: 20%">
																			<col style="width: 10%">
																			<col style="width: 10%">
																			<col style="width: 10%">
																			<col style="width: 10%">
																			<col style="width: 10%">
																			<col style="width: 10%">
																			<col style="width: 10%">
																			<col style="width: 10%">
																		</colgroup>
																		<tbody id="cancel_commission_rate_tbody_subscribe">
																		</tbody>
																	</table>
																</div>
															</div>
														</div>
														<div class="js-container-cancel-policy"
															id="js_container_cancel_policy_regulations"
															style="display: block;">
															<div class="pb-3">
																<h5 class="underline-bg dc-inline-block">노쇼(No-show)
																	취소수수료</h5>
																<p class="color-grey-4">
																	* 노쇼란? 대여시간 이후 사전 협의 없이 대여 장소에 나타나지 않고, 연락 두절하는 경우를
																	가리킵니다.<br> - 노쇼일 경우, 환불 불가합니다. (연락이 닿아도 대여시간이 지난
																	이후 환불은 불가합니다.)<br> - 대여시간 3시간이 지난 후에는 연락이 되었거나 차량
																	이용을 원하더라도 차량 대여가 불가합니다.<br> - (배달 신청 고객) 예약한 대여시간에
																	배달장소에서 30분동안 노쇼인 경우, 대여시작시간이 지난 후 3시간 이내에는 업체 차고지에서 직접
																	인수해야 합니다.
																</p>
															</div>
															<div class="pb-3">
																<h5 class="underline-bg dc-inline-block">대여조건 미충족 시</h5>
																<p class="color-grey-4">현장에서 대여조건에 미충족 된 경우에는 50%의
																	환불이 진행됩니다.</p>
															</div>
															<div class="pb-3">
																<h5 class="underline-bg dc-inline-block">결항/결박 취소
																	수수료</h5>
																<p class="color-grey-4">
																	결항, 결박 시 발생하는 수수료를 안내드립니다.<br> 인수 당일 결항, 결박건에 한해
																	결항(결박) 확인서를 카모아로 전달주시면 100% 환불 가능합니다.<br> 결항확인서는
																	결항 발생 당일 제출해주셔야 합니다.<br>
																</p>
															</div>
														</div>
													</div>
													<button
														class="js-vcp-btn-cancel-fee-info-detail js-vcp-only-carmore btn btn-block btn-blue-light mt-3"
														style="display: block;">
														<span class="color-blue">취소규정 자세히 보기</span><img
															src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjYiIGhlaWdodD0iMjYiIHZpZXdCb3g9IjAgMCAyNiAyNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Im0xMy40ODkgMTMuNzgyIDQuOTYtMy41OTZhLjk3Mi45NzIgMCAwIDEgMS4zNjguMjMgMS4wMDQgMS4wMDQgMCAwIDEtLjIyNyAxLjM4OGwtNS41MzIgNC4wMWEuOTcuOTcgMCAwIDEtMS4xNDIgMGwtNS41MDctNC4wMTFjLS40NC0uMzItLjU0LS45NDItLjIyNS0xLjM4OWEuOTcyLjk3MiAwIDAgMSAxLjM3LS4yMjdsNC45MzUgMy41OTV6IiBmaWxsPSIjMEQ2RkZDIi8+Cjwvc3ZnPgo=">
													</button>
													<div class="text-14 color-grey-4 mt-6">본 약관 및 관련 제반
														계약 조항에 위배되는 행동이나 위의 조항에 대한 위반행위를 한 경우, 회사(카모아)는 서비스를 제공하지
														않을 권리를 가집니다.</div>
												</div>
												
												<button
													class="click-effect-press text-center mt-2 btn-block btn btn-outline-light-purple line-height-1 js-vcp-btn-open-attention-overseas"
													id="" style="display: none;">
													<span class="mr-1 text-16 color-light-purple line-height-1">설명
														더보기</span><img
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNSIgaGVpZ2h0PSIyNSIgdmlld0JveD0iMCAwIDI1IDI1Ij4KICAgIDxwYXRoIGZpbGw9IiM5Nzk3OTciIGQ9Ik0xMi42MTU1NTQsMTIuODAyMTc3OCBMMTcuNjcxNzA4OSw5LjE4NjY0NzU2IEMxOC4xMjA5NTM3LDguODY1NDAzOCAxOC43NDU1NTgxLDguOTY5MTY5MTUgMTkuMDY2ODAxOCw5LjQxODQxMzk1IEMxOS4zODgwNDU2LDkuODY3NjU4NzYgMTkuMjg0MjgwMiwxMC40OTIyNjMxIDE4LjgzNTAzNTQsMTAuODEzNTA2OSBMMTMuMTk1OTI3MywxNC44NDU4OTI1IEMxMi44NDc0MiwxNS4wOTUxMDE0IDEyLjM3ODg4MDMsMTUuMDk0NjEwMiAxMi4wMzA4OTYzLDE0Ljg0NDY3MSBMNi40MTY3MDc3MywxMC44MTIyODU0IEM1Ljk2ODEzNzU1LDEwLjQ5MDEwMDMgNS44NjU2ODIyMSw5Ljg2NTI3OTY4IDYuMTg3ODY3MzEsOS40MTY3MDk1IEM2LjUxMDA1MjQxLDguOTY4MTM5MzIgNy4xMzQ4NzMwMiw4Ljg2NTY4Mzk3IDcuNTgzNDQzMiw5LjE4Nzg2OTA3IEwxMi42MTU1NTQsMTIuODAyMTc3OCBaIi8+Cjwvc3ZnPgo="
														width="16px" style="margin-top: -3px">
												</button>
											</div>
										</div>
									</section>
								</div>
								<div class="js-vcd-car-info-tab-content w-100 h-auto"
									id="vcd_car_info_tab_contents_review">
									<section class="carmore-section">
										<div class="container">
											<div
												class="dc-flex justify-content-between align-items-center">
												<h3 class="mt-0 pt-2">업체 정보</h3>
												
											</div>
											<div class="text-decoration-none mb-3">
												<div class="dc-flex align-items-center">
													<div class="img-comp-logo mr-1 rounded korean"
														id="sci_img_comp_logo">
													</div>
<!-- 													렌트카 이미지 넣기 리뷰 별점 넣기 후순위-->
													<div>
													
														<div
															class="js-sci-txt-company-name text-16-b color-grey-2 mb-0">
															${param.place }</div>
														<div class="" id="sci_container_review_info_old_company"
															style="display: block;">
															<div class="dc-flex align-items-center">
																<img
																	src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxMCIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDEwIDEwIj4KICAgIDxwYXRoIGZpbGw9IiNGRkU1NUIiIGQ9Ik0zLjEwOCA4LjcwMmMtLjI4OC4xNTgtLjYyNC0uMDk3LS41Ny0uNDMyTDIuOSA2LjA2NiAxLjM2OSA0LjUwNWMtLjIzMy0uMjM3LS4xMDQtLjY1LjIxNy0uN2wyLjExNi0uMzIxLjk0Ni0yLjAwNWMuMTQ0LS4zMDUuNTYtLjMwNS43MDQgMGwuOTQ2IDIuMDA1IDIuMTE2LjMyMWMuMzIxLjA1LjQ1LjQ2My4yMTcuN2wtMS41MyAxLjU2LjM2IDIuMjA1Yy4wNTUuMzM1LS4yOC41OS0uNTY5LjQzMkw1IDcuNjYybC0xLjg5MiAxLjA0eiIvPgo8L3N2Zz4K">
																<div
																	class="js-sci-txt-evaluation text-12 color-grey-2 ml-1">
																	4.3</div>
																
															</div>
														</div>
														
													</div>
												</div>
											</div>
										</div>
										
										<div class="container">
											<div class="click-effect-press" id="sci_btn_open_branch_map">
											
												<!-- 지도 영역 -->
												<div class="map-wrap w-100" style="height: 164px;">
												
												
												<!-- 지도 -->
												<div id="map" style="width:100%;height:350px;"></div>
												<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3ac7eaf0b889d2a25e8a1f59096c406a"></script>
												<script>
												
												window.onload = function() {
													
													if(${param.place eq '전포지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.15849019679627, 129.06202404131136), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.15849019679627, 129.06202404131136); 
														var iwContent = '<input type="text" id="place" value="전포지점" style="padding:5px; background: #0d6ffc; color: white; border-radius: 10px; font-weight: bold;"> <br><a href="https://map.kakao.com/link/map/YATA전포지점,35.15849019679627,129.062024041311367" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/YATA전포지점,35.15849019679627,129.06202404131136" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.15849019679627, 129.06202404131136); //인포윈도우 표시 위치입니다
													}
													if(${param.place eq '부전지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.15975905300518, 129.06186404315977), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.15975905300518, 129.06186404315977); 
														var iwContent = '<input type="text" id="place" value="부전지점" style="padding:5px; background: #0d6ffc; color: white; border-radius: 10px; font-weight: bold;"> <br><a href="https://map.kakao.com/link/map/YATA부전지점,35.15975905300518,129.06186404315977" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/YATA전포지점,35.15975905300518,129.06186404315977" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.15975905300518, 129.06186404315977); //인포윈도우 표시 위치입니다
													}
													if(${param.place eq '사상지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.158690073109824, 129.06113477638084), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.158690073109824, 129.06113477638084); 
														var iwContent = '<input type="text" id="place" value="사상지점" style="padding:5px; background: #0d6ffc; color: white; border-radius: 10px; font-weight: bold;"> <br><a href="https://map.kakao.com/link/map/YATA사상지점,35.158690073109824,129.06113477638084" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/YATA사상지점,35.158690073109824,129.06113477638084" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.158690073109824, 129.06113477638084); //인포윈도우 표시 위치입니다
													}
													if(${param.place eq '개금지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.15730753621485, 129.06294334538524), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.15730753621485, 129.06294334538524); 
														var iwContent = '<input type="text" id="place" value="개금지점" style="padding:5px; background: #0d6ffc; color: white; border-radius: 10px; font-weight: bold;"> <br><a href="https://map.kakao.com/link/map/YATA개금지점,35.15730753621485,129.06294334538524" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/YATA개금지점,35.15730753621485,129.06294334538524" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.15730753621485, 129.06294334538524); //인포윈도우 표시 위치입니다
													}
													
													var map = new kakao.maps.Map(mapContainer, mapOption);
													// 마커를 생성합니다
													var marker = new kakao.maps.Marker({
													    position: markerPosition
													});
													
													// 마커가 지도 위에 표시되도록 설정합니다
													marker.setMap(map);
													    
													// 인포윈도우를 생성합니다
													var infowindow = new kakao.maps.InfoWindow({
													    position : iwPosition, 
													    content : iwContent 
													});
													  
													// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
													infowindow.open(map, marker);
													
												}
												</script>
													
												</div>
												<!-- 지도 영역 끝 -->
												
												</div>
											</div>
										<div class="container">
											<div class="text-14 font-weight-bold color-grey-3 mt-3">주소</div>
											<div class="dc-flex justify-content-between mt-2">
												<div
													class="js-sci-txt-company-address text-14 color-grey-4 wordbreak-keepall pr-2">
													제주특별자치도 제주시 다호북길 111</div>
												<div
													class="js-sci-btn-company-address-copy btn-copy click-effect-press">
													<img
														src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMyAyQzIuNDQ3NzIgMiAyIDIuNDQ3NzIgMiAzVjEwQzIgMTAuNTUyMyAyLjQ0NzcyIDExIDMgMTFINlYxM0M2IDEzLjU1MjMgNi40NDc3MiAxNCA3IDE0SDEzQzEzLjU1MjMgMTQgMTQgMTMuNTUyMyAxNCAxM1Y2QzE0IDUuNDQ3NzIgMTMuNTUyMyA1IDEzIDVIMTBWM0MxMCAyLjQ0NzcyIDkuNTUyMjggMiA5IDJIM1pNOSA1VjNIM1YxMEg2VjZDNiA1LjQ0NzcyIDYuNDQ3NzIgNSA3IDVIOVpNNyA2VjEzSDEzVjZIN1oiIGZpbGw9IndoaXRlIi8+Cjwvc3ZnPgo=">
												</div>
											</div>
											
											<div class="mt-3 js-show-devide-elmt" data-sde-s="1"
												data-sde-m="1" data-sde-sub="1" style="display: block;">
												<div class="text-14 font-weight-bold color-grey-3">영업시간</div>
												<div
													class="js-sci-btn-branch-business-time dc-flex align-items-start mt-2 click-effect-press">
													<div
														class="js-sci-txt-company-branch-business-time text-14 color-grey-4 wordbreak-keepall mb-0">
														08:00~20:00</div>
													<div class="ml-1">
														<img
															src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNOCAxNEMxMS4zMTM3IDE0IDE0IDExLjMxMzcgMTQgOEMxNCA0LjY4NjI5IDExLjMxMzcgMiA4IDJDNC42ODYyOSAyIDIgNC42ODYyOSAyIDhDMiAxMS4zMTM3IDQuNjg2MjkgMTQgOCAxNFpNNy40MDE4NiAxMkg4LjU4ODM4VjYuNzE2OEg3LjQwMTg2VjEyWk03LjQ5OTUxIDQuODkwNjJDNy4zODU1OCA1LjAxMTA3IDcuMzI4NjEgNS4xNjI0MyA3LjMyODYxIDUuMzQ0NzNDNy4zMjg2MSA1LjUyMzc2IDcuMzg1NTggNS42NzM1IDcuNDk5NTEgNS43OTM5NUM3LjYxNjcgNS45MTExMyA3Ljc4MjcxIDUuOTY5NzMgNy45OTc1NiA1Ljk2OTczQzguMjEyNCA1Ljk2OTczIDguMzc4NDIgNS45MTExMyA4LjQ5NTYxIDUuNzkzOTVDOC42MTI3OSA1LjY3MzUgOC42NzEzOSA1LjUyMzc2IDguNjcxMzkgNS4zNDQ3M0M4LjY3MTM5IDUuMTYyNDMgOC42MTI3OSA1LjAxMTA3IDguNDk1NjEgNC44OTA2MkM4LjM3ODQyIDQuNzcwMTggOC4yMTI0IDQuNzA5OTYgNy45OTc1NiA0LjcwOTk2QzcuNzgyNzEgNC43MDk5NiA3LjYxNjcgNC43NzAxOCA3LjQ5OTUxIDQuODkwNjJaIiBmaWxsPSIjODU5MkFCIi8+Cjwvc3ZnPgo=">
													</div>
												</div>
											</div>
											
										</div>
									</section>
									<div id="js_vcd_company_review_sections"
										style="display: block;">
										<section class="js-company-introduce carmore-section"
											style="display: block;">
											<div class="container">
												<div class="js-company-introduce pt-3 pb-3 clearfix"
													style="display: block;">
													<div class="text-16 font-weight-bold color-grey-3">${param.place }의 한마디</div>
													<div
														class="js-txt-company-introduce text-14 color-grey-4 mt-1 mb-0 wordbreak-breakword">안녕하세요.
														특별한 렌트카와 특별한 부산 여행을 시작해보세요~!</div>
										
												</div>
											</div>
										</section>
										<section class="carmore-section is-hide-new-branch">
											<div class="container">
												<div class="mt-5">
													<div
														class="dc-flex justify-content-between align-items-center">
														<div>
															<span
																class="color-grey-2 text-28 font-weight-bold wordbreak-keepall"
																id="rpc_company_point">4.7</span><span
																class="color-grey-6 text-18 wordbreak-keepall">/
																5.0</span>
														</div>
														
													</div>
													<p class="text-14 color-grey-4" id="rpc_txt_summary_info">최근
														예약수 11593건 | 누적 예약수 26013건 | 입점일 2019-11-28</p>
													<hr>
													<div
														class="dc-flex justify-content-between align-items-center mb-2">
														<div>
															<p class="color-grey-4 text-14 mb-0">차량 관리 상태</p>
														</div>
														<div class="dc-flex align-items-center">
															<div class="progress" style="width: 128px; height: 4px">
																<div class="progress-bar" id="rpc_review_progress_1"
																	style="width: 94%;"></div>
															</div>
															<div class="ml-1 text-12 font-weight-bold text-primary"
																id="rpc_review_1_point">4.7</div>
														</div>
													</div>
													<div
														class="dc-flex justify-content-between align-items-center mb-2">
														<div>
															<p class="color-grey-4 text-14 mb-0">업체 친절도</p>
														</div>
														<div class="dc-flex align-items-center">
															<div class="progress" style="width: 128px; height: 4px">
																<div class="progress-bar" id="rpc_review_progress_2"
																	style="width: 92%;"></div>
															</div>
															<div class="ml-1 text-12 font-weight-bold text-primary"
																id="rpc_review_2_point">4.6</div>
														</div>
													</div>
													<div
														class="dc-flex justify-content-between align-items-center mb-2">
														<div>
															<p class="color-grey-4 text-14 mb-0">업체의 이용절차 안내</p>
														</div>
														<div class="dc-flex align-items-center">
															<div class="progress" style="width: 128px; height: 4px">
																<div class="progress-bar" id="rpc_review_progress_3"
																	style="width: 94%;"></div>
															</div>
															<div class="ml-1 text-12 font-weight-bold text-primary"
																id="rpc_review_3_point">4.7</div>
														</div>
													</div>
												</div>
											</div>
										</section>
										<section class="carmore-section rpc-only-new-company"
											style="display: none;">
											<div class="container">
												<img
													class="dc-flex align-items-center img-fluid mx-auto mb-3 max-w-lg-50rem"
													src="/home/images/image-new-company-review-mocar.png">
												<p class="text-center text-14 color-grey-3">아직 충분한 평가가
													없어 표시되지 않습니다.</p>
											</div>
										</section>
										<section class="carmore-section dc-none"
											id="js_rpc_section_carmore_word" style="display: none;">
											<div class="container">
												<div class="text-center mb-3">
													<img
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMjIiIGhlaWdodD0iNDMiIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjAgMCAxMjIgNDMiPgogICAgPHBhdGggZmlsbD0iIzBENkZGQyIgZD0iTTE5LjUwMiAzMS4yNGgtMlYyNWgtMy4zOHYxNy4wOGgzLjM4di03LjU2aDJ2LTMuMjh6bS0xNy41Ni0yLjhoNi40NnYyLjgyaC02LjQ2djMuMDZoNS45Yy0uOTggMi41OC0zLjEyIDMuNzgtNS45IDMuOHYzLjE2YzUuNzItLjAyIDkuODItMy45MiA5LjgyLTEwLjc2VjI1LjRoLTkuODJ2My4wNHpNMzEuMzYgMzguMzJ2LTIuNzZoNS45OFYyNS40aC0xNS40djEwLjE2aDUuOTh2Mi43NkgyMXYzLjE2aDE3LjI4di0zLjE2aC02Ljkyem0tNi4wNi05Ljc2aDguNjh2My44NkgyNS4zdi0zLjg2ek01OCAzMS4yNGgtMlYyNWgtMy4zOHYxNy4wOEg1NnYtNy41Nmgydi0zLjI4ek00NS41OCAyNS4yYy0zLjE4IDAtNS4zIDIuNTItNS4zIDguMTQgMCA1LjYyIDIuMTIgOC4xNCA1LjMgOC4xNCAzLjE4IDAgNS4yOC0yLjUyIDUuMjgtOC4xNCAwLTUuNjItMi4xLTguMTQtNS4yOC04LjE0em0wIDEzLjE4Yy0xLjEyIDAtMS45Ni0xLjItMS45Ni01LjA0IDAtMy44Mi44NC01LjA0IDEuOTYtNS4wNCAxLjEgMCAxLjk0IDEuMjIgMS45NCA1LjA0IDAgMy44NC0uODQgNS4wNC0xLjk0IDUuMDR6TTc2LjMwMyAyNi4xNmgtNC4xMlYyNC43aC0zLjQ0djEuNDZoLTQuMTJ2Mi42NGgxMS42OHYtMi42NHptNC41MiAyLjhWMjVoLTMuMzh2MTIuNzRoMy4zOHYtNS41aDJ2LTMuMjhoLTJ6bS0xMC4zNiA3LjM2YzIuODQgMCA1LjI0LTEuMiA1LjI0LTMuNTIgMC0yLjMyLTIuNC0zLjUyLTUuMjQtMy41Mi0yLjg0IDAtNS4yNCAxLjItNS4yNCAzLjUyIDAgMi4zMiAyLjQgMy41MiA1LjI0IDMuNTJ6bTAtNC42YzEuMjIgMCAyLjAyLjQ4IDIuMDIgMS4wOCAwIC42LS44IDEuMDgtMi4wMiAxLjA4cy0yLjAyLS40OC0yLjAyLTEuMDhjMC0uNi44LTEuMDggMi4wMi0xLjA4em0tMS4yOCA1LjFoLTMuNDR2NS4yNmgxNS4zMnYtMi45NGgtMTEuODh2LTIuMzJ6TTEwMi4wNjEgMzEuMjRoLTJWMjVoLTMuMzh2MTcuMDhoMy4zOHYtNy41Nmgydi0zLjI4em0tMTcuNDYgMTAuMDRoOS45NFYyNS40aC05Ljk0djE1Ljg4em0zLjM4LTEyLjc0aDMuMTh2OS42aC0zLjE4di05LjZ6TTExOS43NzkgMjVoLTMuMzh2MTcuMDhoMy4zOFYyNXptLTUuNjIuNGgtMTAuMTR2MTUuODhoNi45MmMxLjY0IDAgMy41Mi0uMyA0LjU2LS44MnYtMy4wNGMtMS4wNC40OC0yLjguNzgtNC40Mi43OGgtMy42NHYtOS43Mmg2LjcyVjI1LjR6TTY1Ljg2MiAzLjE2N0M2NC40NCAxLjcyMyA2Mi42ODIgMSA2MC41OTQgMWMtMi4xNTMgMC0zLjk2LjcxNi01LjQxMyAyLjE0OUM1My43MjcgNC41ODIgNTMgNi4zNTMgNTMgOC40NjZjMCAyLjAwOC42OTkgMy42ODggMi4wNTQgNS4wMzYgMS4zNTggMS4zNDggMy4xNjggMi4wODUgNS4yODUgMi4yMTJ2Mi4yOWMyLjQ3NC0uNjcgNC4yLTEuODYgNS41ODYtMy41NzhDNjcuMzE1IDEyLjcxMSA2OCAxMC43NDYgNjggOC41M2MuMDA0LTIuMTM1LS43MTYtMy45MjQtMi4xMzgtNS4zNjN6Ii8+Cjwvc3ZnPgo=">
												</div>
												<div class="mt-3" id="js_rpc_container_carmore_word"></div>
												<div class="dc-none" id="js_rpc_template_carmore_word">
													<div class="dc-flex align-items-start mb-2">
														<img
															src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik04IDE0QzExLjMxMzcgMTQgMTQgMTEuMzEzNyAxNCA4QzE0IDQuNjg2MjkgMTEuMzEzNyAyIDggMkM0LjY4NjI5IDIgMiA0LjY4NjI5IDIgOEMyIDExLjMxMzcgNC42ODYyOSAxNCA4IDE0Wk04IDE1QzExLjg2NiAxNSAxNSAxMS44NjYgMTUgOEMxNSA0LjEzNDAxIDExLjg2NiAxIDggMUM0LjEzNDAxIDEgMSA0LjEzNDAxIDEgOEMxIDExLjg2NiA0LjEzNDAxIDE1IDggMTVaIiBmaWxsPSIjNjY2NjY2Ii8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTEuMTcxNSA2LjMyOTE4QzExLjM2NzUgNi41MjM2NyAxMS4zNjg4IDYuODQwMjUgMTEuMTc0MyA3LjAzNjI5TDguMTk4MTIgMTAuMDM2M0M4LjAxNDM2IDEwLjIyMTUgNy43MTkwNyAxMC4yMzQzIDcuNTE5OTggMTAuMDY1N0w1LjQ5NjE3IDguMzUxMzhDNS4yODU0NiA4LjE3MjkgNS4yNTkzNCA3Ljg1NzM5IDUuNDM3ODIgNy42NDY2OUM1LjYxNjMxIDcuNDM1OTggNS45MzE4MSA3LjQwOTg1IDYuMTQyNTIgNy41ODgzM0w3LjgxMzY4IDkuMDAzOTFMMTAuNDY0NCA2LjMzMkMxMC42NTg5IDYuMTM1OTYgMTAuOTc1NSA2LjEzNDcgMTEuMTcxNSA2LjMyOTE4WiIgZmlsbD0iIzk0QzBGRSIvPgo8L3N2Zz4K"
															style="margin-top: 3px;">
														<div class="text-14 color-grey-4 ml-1"
															id="js_rpc_txt_carmore_word"></div>
													</div>
												</div>
											</div>
										</section>
										<section class="carmore-section rpc-only-old-company"
											id="js_rpc_only_old_company">
											<div class="container">
												<h3>트러스트 리뷰</h3>
												<div>
													<label class="text-12 color-grey-5 mr-1">최근리뷰</label><span
														class="badge badge-soft-primary mr-2"
														id="rpc_recently_review_cnt">1,500+</span><label
														class="text-12 color-grey-5 mr-1">최근 업체 댓글</label><span
														class="badge badge-soft-primary mr-2"
														id="rpc_recently_company_reply_cnt">0+</span><label
														class="text-12 color-grey-5 mr-1">1년간 총 리뷰</label><span
														class="badge badge-soft-primary mr-2"
														id="rpc_year_review_cnt">1,521</span>
												</div>
												<div class="dc-flex mb-3 justify-content-end">
													<div class="txt-right">
														<div class="sort-filter-container">
															<div class="table-sort dc-flex justify-content-end">
																<div class="rpc-review-sort-btn click-effect-press"
																	data-type="2">
																	<div class="radio-sort active">
																		<div class="icon-sort"></div>
																		<div class="txt-sort">평점 높은 순</div>
																	</div>
																</div>
																<div class="rpc-review-sort-btn click-effect-press"
																	data-type="3">
																	<div class="radio-sort left-margin">
																		<div class="icon-sort"></div>
																		<div class="txt-sort">평점 낮은 순</div>
																	</div>
																</div>
																<div class="rpc-review-sort-btn click-effect-press"
																	data-type="1">
																	<div class="radio-sort left-margin">
																		<div class="icon-sort"></div>
																		<div class="txt-sort">최신순</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-lg-12 review-list-container dc-none"
													id="review_item">
													<div class="bg-white p-3 mb-3 border">
														<div class="dc-flex justify-content-between mb-1">
															<div class="js-btn-review-driver-info click-effect-press">
																<div class="dc-flex align-items-center">
																	<img
																		class="img-user-profile object-fit center-crop mr-1 dc-none"><img
																		class="js-review-item-user-grade-icon mr-1 dc-none"
																		style="width: 16px;"><span
																		class="color-grey-1 text-16 mr-2" id="review_txt_name">김**</span>
																</div>
															</div>
															<div class="flex-shrink-0">
																<div class="text-right dc-none"
																	id="js_container_review_report_btn">
																	<div
																		class="js-btn-review-report text-10 color-grey-5 click-effect-press">신고</div>
																</div>
																<div class="text-right dc-none"
																	id="js_container_review_my_btns">
																	<button
																		class="js-btn-review-modify btn btn-sm btn-outline-grey color-grey-5 text-10 click-effect-press">수정</button>
																	<button
																		class="js-btn-review-delete btn btn-sm btn-outline-grey color-grey-5 text-10 ml-2 click-effect-press">삭제</button>
																</div>
															</div>
														</div>
														<div
															class="dc-flex justify-content-between align-items-centers">
															<div>
																<span class="color-grey-2 text-24 wordbreak-keepall"
																	id="review_txt_evaluation">4.5</span><span
																	class="color-grey-5 text-10 wordbreak-keepall">/
																	5.0</span>
															</div>
															<div class="text-right">
																<p class="color-grey-5 text-10 mb-0"
																	id="review_txt_detail_evaluation">차량상태 3.4 | 친절도
																	4.4 | 이용안내 3.4</p>
																<p class="color-grey-5 text-10 mb-0"
																	id="review_txt_rent_info">2018.09.04 ~ 2018.09.07 |
																	아반떼</p>
															</div>
														</div>
														<hr>
														<p class="color-grey-4 text-14 wordbreak-breakword"
															id="review_txt_msg">쿠폰 사용해서 저렴하게 렌터카 렌트 했네요. 업체도 친절하고
															대응 잘해주셔서 편하게 렌트했습니다. 크게 불편한 점도 없었구요. 앞으로도 사업 번창하세요. :)!</p>
														<div
															class="dc-flex justify-content-between align-items-center mb-2">
															<span class="text-10 color-grey-5"
																id="review_txt_write_date">2018.09.20</span>
															<div
																class="review-btn-good dc-flex align-items-center click-effect-press">
																<img class="btn-good-icon mr-1"
																	src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMi4xODY3IDE1LjY2NjdIM0MxLjg5NTQzIDE1LjY2NjcgMSAxNC43NzEyIDEgMTMuNjY2N1Y5QzEgNy44OTU0MyAxLjg5NTQzIDcgMyA3SDQuMjMzNDJMNi43MjQxMyAxLjM5NTkxQzYuODMxMTMgMS4xNTUxNiA3LjA2OTg3IDEgNy4zMzMzMyAxQzguODA2MDkgMSAxMCAyLjE5MzkxIDEwIDMuNjY2NjdWNS42NjY2N0wxMy4wOTkxIDUuNjY2NzFDMTMuNjg1OSA1LjY2MDA2IDE0LjI0NTkgNS45MTE0MyAxNC42MzEgNi4zNTQyMkMxNS4wMTYgNi43OTcwMiAxNS4xODcyIDcuMzg2NTYgMTUuMDk5IDcuOTY3NzFMMTQuMTc5MSAxMy45NjY2QzE0LjAyOTYgMTQuOTUyNyAxMy4xNzY0IDE1LjY3NzkgMTIuMTg2NyAxNS42NjY3Wk01LjMzMzM0IDE0LjMzMzRMMTIuMTk0MiAxNC4zMzM0QzEyLjUyNjYgMTQuMzM3MSAxMi44MTEgMTQuMDk1NCAxMi44NjEgMTMuNzY1NkwxMy43ODA5IDcuNzY2NjFDMTMuODEwMiA3LjU3MzIzIDEzLjc1MzIgNy4zNzY3MSAxMy42MjQ4IDcuMjI5MTFDMTMuNDk2NSA3LjA4MTUyIDEzLjMwOTggNi45OTc3MyAxMy4xMDY3IDYuOTk5OTlIOS4zMzMzNEM4Ljk2NTE1IDYuOTk5OTkgOC42NjY2OCA2LjcwMTUxIDguNjY2NjggNi4zMzMzMlYzLjY2NjY1QzguNjY2NjggMy4wNzE2MSA4LjI3Njg4IDIuNTY3NjEgNy43Mzg3MSAyLjM5NjA2TDUuMzMzMzQgNy44MDgxM1YxNC4zMzM0Wk0yLjk2NjY3IDguMzMzMzFINFYxNC4zMzMzSDIuOTY2NjdDMi41OTg0OCAxNC4zMzMzIDIuMyAxNC4wMzQ4IDIuMyAxMy42NjY2VjguOTk5OThDMi4zIDguNjMxNzkgMi41OTg0OCA4LjMzMzMxIDIuOTY2NjcgOC4zMzMzMVoiIGZpbGw9IiNGRjYzNjMiLz4KPC9zdmc+Cg=="><span
																	class="text-12 wordbreak-keepall line-height-1"
																	id="review_txt_good">도움돼요 0</span>
															</div>
														</div>
														<div class="p-3 bg-light dc-none"
															id="review_company_reply_box">
															<span class="color-blue text-12"
																id="review_txt_company_reply_name">업체명</span>
															<p
																class="color-grey-3 mb-1 text-14 mt-2 wordbreak-breakword"
																id="review_txt_company_reply_msg">언제나 친절한 고고렌트카 입니다.
																알찬 이용후기 남겨주셔서 감사합니다. 언제나 편한 여행이 되도록 노력하는 고고렌트카가 되겠습니다.</p>
															<span class="text-10 color-grey-5"
																id="review_txt_company_reply_date">2018.09.20</span>
														</div>
													</div>
												</div>
												<button
													class="btn btn-outline-primary btn-block ml-2 mr-2 dc-none click-effect-press"
													id="rpc_btn_more_review">
													<span class="spinner-border spinner-border-sm mr-2"
														role="status" area-hidden="true"></span>리뷰 더보기
												</button>
												<div class="container-loading-dot" id="rpc_review_loading"
													style="display: none;">
													<div></div>
													<div></div>
													<div></div>
												</div>
												<div class="form-row mb-5" id="rpc_review_container_items">
													<div class="col-lg-12 review-list-container"
														id="review_item" rs="111110">
														<div class="bg-white p-3 mb-3 border">
															<div class="dc-flex justify-content-between mb-1">
																<div
																	class="js-btn-review-driver-info click-effect-press">
																	<div class="dc-flex align-items-center">
																		<img
																			class="img-user-profile object-fit center-crop mr-1 dc-none"><img
																			class="js-review-item-user-grade-icon mr-1"
																			style="width: 16px;"
																			src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxjaXJjbGUgY3g9IjExLjk5OSIgY3k9IjExLjk5OSIgcj0iMTAuNDk5IiBmaWxsPSIjNURBRUY5Ii8+CiAgICA8cGF0aCBkPSJNMTIuMTUyIDYuNzVDOS44OTIgNi43NSA4LjEgNy44MyA4LjEgOS42MzVjMCAxLjg3OSAxLjE3OSAyLjc3NSAzLjM1MiAzLjE4IDEuNzguMzMyIDIuNDU2LjY1MSAyLjQ1NiAxLjQ1IDAgLjY1LS42NzUgMS4xMDUtMS41ODQgMS4xMDUtMS4yNzcgMC0yLjExMi0uNjM5LTIuMjM1LTEuNTk3SDcuNzkzYy4wOTggMi4xMzcgMS45MDMgMy40NzUgNC4zNzEgMy40NzUgMi4yMzUgMCA0LjA0LTEuMTY2IDQuMDQtMy4wODIgMC0xLjQ5OC0uNzg2LTIuNjQtMy4wOTQtMy4xMTktMS45NTMtLjQwNS0yLjcyNi0uNjYzLTIuNzI2LTEuNDEyIDAtLjYwMi41NzctMS4wMTkgMS42Mi0xLjAxOSAxLjA2OSAwIDEuNzIuNTI4IDEuODU1IDEuNGgyLjMwOGMtLjExLTEuOTAzLTEuNzgtMy4yNjYtNC4wMTUtMy4yNjZ6IiBmaWxsPSIjZmZmIi8+Cjwvc3ZnPgo="><span
																			class="color-grey-1 text-16 mr-2"
																			id="review_txt_name">강**님</span>
																	</div>
																</div>
																<div class="flex-shrink-0">
																	<div class="text-right"
																		id="js_container_review_report_btn">
																		<div
																			class="js-btn-review-report text-10 color-grey-5 click-effect-press">신고</div>
																	</div>
																	<div class="text-right dc-none"
																		id="js_container_review_my_btns"
																		style="display: none;">
																		<button
																			class="js-btn-review-modify btn btn-sm btn-outline-grey color-grey-5 text-10 click-effect-press">수정</button>
																		<button
																			class="js-btn-review-delete btn btn-sm btn-outline-grey color-grey-5 text-10 ml-2 click-effect-press">삭제</button>
																	</div>
																</div>
															</div>
															<div
																class="dc-flex justify-content-between align-items-centers">
																<div>
																	<span class="color-grey-2 text-24 wordbreak-keepall"
																		id="review_txt_evaluation">5.0</span><span
																		class="color-grey-5 text-10 wordbreak-keepall">/
																		5.0</span>
																</div>
																<div class="text-right">
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_detail_evaluation">차량상태 5.0 | 친절도
																		5.0 | 이용안내 5.0</p>
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_rent_info">2023.03.07~2023.03.09 |
																		코나 1세대 EV</p>
																</div>
															</div>
															<hr>
															<p class="color-grey-4 text-14 wordbreak-breakword"
																id="review_txt_msg">저렴하게 이용 잘했어요! 공항에서 렌트카사무실까지
																이동해주시는 기사분 너무 친절하셨어요^_^!</p>
															<div
																class="dc-flex justify-content-between align-items-center mb-2">
																<span class="text-10 color-grey-5"
																	id="review_txt_write_date">2023.04.05</span>
																<div
																	class="review-btn-good dc-flex align-items-center click-effect-press gray">
																	<img class="btn-good-icon mr-1"
																		src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjE4NjcgMTUuNjY2N0gzQzEuODk1NDMgMTUuNjY2NyAxIDE0Ljc3MTIgMSAxMy42NjY3VjlDMSA3Ljg5NTQzIDEuODk1NDMgNyAzIDdINC4yMzM0Mkw2LjcyNDEzIDEuMzk1OTFDNi44MzExMyAxLjE1NTE2IDcuMDY5ODcgMSA3LjMzMzMzIDFDOC44MDYwOSAxIDEwIDIuMTkzOTEgMTAgMy42NjY2N1Y1LjY2NjY3TDEzLjA5OTEgNS42NjY3MUMxMy42ODU5IDUuNjYwMDYgMTQuMjQ1OSA1LjkxMTQzIDE0LjYzMSA2LjM1NDIyQzE1LjAxNiA2Ljc5NzAyIDE1LjE4NzIgNy4zODY1NiAxNS4wOTkgNy45Njc3MUwxNC4xNzkxIDEzLjk2NjZDMTQuMDI5NiAxNC45NTI3IDEzLjE3NjQgMTUuNjc3OSAxMi4xODY3IDE1LjY2NjdaTTUuMzMzMzMgMTQuMzMzNEwxMi4xOTQyIDE0LjMzMzRDMTIuNTI2NiAxNC4zMzcxIDEyLjgxMSAxNC4wOTU0IDEyLjg2MSAxMy43NjU2TDEzLjc4MDkgNy43NjY2MkMxMy44MTAyIDcuNTczMjQgMTMuNzUzMiA3LjM3NjczIDEzLjYyNDggNy4yMjkxM0MxMy40OTY1IDcuMDgxNTMgMTMuMzA5OCA2Ljk5Nzc0IDEzLjEwNjcgN0g5LjMzMzMzQzguOTY1MTQgNyA4LjY2NjY3IDYuNzAxNTIgOC42NjY2NyA2LjMzMzMzVjMuNjY2NjdDOC42NjY2NyAzLjA3MTYyIDguMjc2ODcgMi41Njc2MiA3LjczODcgMi4zOTYwN0w1LjMzMzMzIDcuODA4MTRWMTQuMzMzNFpNNCA4LjMzMzMzSDIuOTY2NjdDMi41OTg0OCA4LjMzMzMzIDIuMyA4LjYzMTgxIDIuMyA5VjEzLjY2NjdDMi4zIDE0LjAzNDkgMi41OTg0OCAxNC4zMzMzIDIuOTY2NjcgMTQuMzMzM0g0VjguMzMzMzNaIiBmaWxsPSIjOTk5OTk5Ii8+Cjwvc3ZnPgo="><span
																		class="text-12 wordbreak-keepall line-height-1"
																		id="review_txt_good">도움돼요 0</span>
																</div>
															</div>
															<div class="p-3 bg-light dc-none"
																id="review_company_reply_box" style="display: none;">
																<span class="color-blue text-12"
																	id="review_txt_company_reply_name">업체명</span>
																<p
																	class="color-grey-3 mb-1 text-14 mt-2 wordbreak-breakword"
																	id="review_txt_company_reply_msg">언제나 친절한 고고렌트카
																	입니다. 알찬 이용후기 남겨주셔서 감사합니다. 언제나 편한 여행이 되도록 노력하는 고고렌트카가
																	되겠습니다.</p>
																<span class="text-10 color-grey-5"
																	id="review_txt_company_reply_date">2018.09.20</span>
															</div>
														</div>
													</div>
													<div class="col-lg-12 review-list-container"
														id="review_item" rs="111096">
														<div class="bg-white p-3 mb-3 border">
															<div class="dc-flex justify-content-between mb-1">
																<div
																	class="js-btn-review-driver-info click-effect-press">
																	<div class="dc-flex align-items-center">
																		<img
																			class="img-user-profile object-fit center-crop mr-1 dc-none"><img
																			class="js-review-item-user-grade-icon mr-1"
																			style="width: 16px;"
																			src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjUiIHZpZXdCb3g9IjAgMCAyNCAyNSIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjEwLjUiIGZpbGw9IiMyQTQ5Q0MiLz4KICAgIDxwYXRoIGQ9Im0xNi42OTcgMTYuOTc1LTIuMzA4LTMuNTc3YzEuMTcyLS41NSAxLjgyLTEuNiAxLjgyLTIuOTY3IDAtMi4wNjMtMS40NzgtMy40MDYtNC4wMDUtMy40MDZIOC4xOTl2OS45NWgyLjIyMnYtMy4xMzhoMS43N2wxLjkzIDMuMTM4aDIuNTc2ek0xMC40MiA4Ljk5MWgxLjY4NWMxLjE3MiAwIDEuODguNSAxLjg4IDEuNDRzLS43MDggMS40NC0xLjg4IDEuNDRoLTEuNjg1di0yLjg4eiIgZmlsbD0iI2ZmZiIvPgo8L3N2Zz4K"><span
																			class="color-grey-1 text-16 mr-2"
																			id="review_txt_name">이**님</span>
																	</div>
																</div>
																<div class="flex-shrink-0">
																	<div class="text-right"
																		id="js_container_review_report_btn">
																		<div
																			class="js-btn-review-report text-10 color-grey-5 click-effect-press">신고</div>
																	</div>
																	<div class="text-right dc-none"
																		id="js_container_review_my_btns"
																		style="display: none;">
																		<button
																			class="js-btn-review-modify btn btn-sm btn-outline-grey color-grey-5 text-10 click-effect-press">수정</button>
																		<button
																			class="js-btn-review-delete btn btn-sm btn-outline-grey color-grey-5 text-10 ml-2 click-effect-press">삭제</button>
																	</div>
																</div>
															</div>
															<div
																class="dc-flex justify-content-between align-items-centers">
																<div>
																	<span class="color-grey-2 text-24 wordbreak-keepall"
																		id="review_txt_evaluation">5.0</span><span
																		class="color-grey-5 text-10 wordbreak-keepall">/
																		5.0</span>
																</div>
																<div class="text-right">
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_detail_evaluation">차량상태 5.0 | 친절도
																		5.0 | 이용안내 5.0</p>
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_rent_info">2023.03.16~2023.03.18 |
																		K5 3세대</p>
																</div>
															</div>
															<hr>
															<p class="color-grey-4 text-14 wordbreak-breakword"
																id="review_txt_msg">차량상태 및 청소상태좋습니다 친절합니다</p>
															<div
																class="dc-flex justify-content-between align-items-center mb-2">
																<span class="text-10 color-grey-5"
																	id="review_txt_write_date">2023.04.05</span>
																<div
																	class="review-btn-good dc-flex align-items-center click-effect-press gray">
																	<img class="btn-good-icon mr-1"
																		src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjE4NjcgMTUuNjY2N0gzQzEuODk1NDMgMTUuNjY2NyAxIDE0Ljc3MTIgMSAxMy42NjY3VjlDMSA3Ljg5NTQzIDEuODk1NDMgNyAzIDdINC4yMzM0Mkw2LjcyNDEzIDEuMzk1OTFDNi44MzExMyAxLjE1NTE2IDcuMDY5ODcgMSA3LjMzMzMzIDFDOC44MDYwOSAxIDEwIDIuMTkzOTEgMTAgMy42NjY2N1Y1LjY2NjY3TDEzLjA5OTEgNS42NjY3MUMxMy42ODU5IDUuNjYwMDYgMTQuMjQ1OSA1LjkxMTQzIDE0LjYzMSA2LjM1NDIyQzE1LjAxNiA2Ljc5NzAyIDE1LjE4NzIgNy4zODY1NiAxNS4wOTkgNy45Njc3MUwxNC4xNzkxIDEzLjk2NjZDMTQuMDI5NiAxNC45NTI3IDEzLjE3NjQgMTUuNjc3OSAxMi4xODY3IDE1LjY2NjdaTTUuMzMzMzMgMTQuMzMzNEwxMi4xOTQyIDE0LjMzMzRDMTIuNTI2NiAxNC4zMzcxIDEyLjgxMSAxNC4wOTU0IDEyLjg2MSAxMy43NjU2TDEzLjc4MDkgNy43NjY2MkMxMy44MTAyIDcuNTczMjQgMTMuNzUzMiA3LjM3NjczIDEzLjYyNDggNy4yMjkxM0MxMy40OTY1IDcuMDgxNTMgMTMuMzA5OCA2Ljk5Nzc0IDEzLjEwNjcgN0g5LjMzMzMzQzguOTY1MTQgNyA4LjY2NjY3IDYuNzAxNTIgOC42NjY2NyA2LjMzMzMzVjMuNjY2NjdDOC42NjY2NyAzLjA3MTYyIDguMjc2ODcgMi41Njc2MiA3LjczODcgMi4zOTYwN0w1LjMzMzMzIDcuODA4MTRWMTQuMzMzNFpNNCA4LjMzMzMzSDIuOTY2NjdDMi41OTg0OCA4LjMzMzMzIDIuMyA4LjYzMTgxIDIuMyA5VjEzLjY2NjdDMi4zIDE0LjAzNDkgMi41OTg0OCAxNC4zMzMzIDIuOTY2NjcgMTQuMzMzM0g0VjguMzMzMzNaIiBmaWxsPSIjOTk5OTk5Ii8+Cjwvc3ZnPgo="><span
																		class="text-12 wordbreak-keepall line-height-1"
																		id="review_txt_good">도움돼요 0</span>
																</div>
															</div>
															<div class="p-3 bg-light dc-none"
																id="review_company_reply_box" style="display: none;">
																<span class="color-blue text-12"
																	id="review_txt_company_reply_name">업체명</span>
																<p
																	class="color-grey-3 mb-1 text-14 mt-2 wordbreak-breakword"
																	id="review_txt_company_reply_msg">언제나 친절한 고고렌트카
																	입니다. 알찬 이용후기 남겨주셔서 감사합니다. 언제나 편한 여행이 되도록 노력하는 고고렌트카가
																	되겠습니다.</p>
																<span class="text-10 color-grey-5"
																	id="review_txt_company_reply_date">2018.09.20</span>
															</div>
														</div>
													</div>
													<div class="col-lg-12 review-list-container"
														id="review_item" rs="111007">
														<div class="bg-white p-3 mb-3 border">
															<div class="dc-flex justify-content-between mb-1">
																<div
																	class="js-btn-review-driver-info click-effect-press">
																	<div class="dc-flex align-items-center">
																		<img
																			class="img-user-profile object-fit center-crop mr-1 dc-none"><img
																			class="js-review-item-user-grade-icon mr-1"
																			style="width: 16px;"
																			src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjUiIHZpZXdCb3g9IjAgMCAyNCAyNSIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjEwLjUiIGZpbGw9IiMyQTQ5Q0MiLz4KICAgIDxwYXRoIGQ9Im0xNi42OTcgMTYuOTc1LTIuMzA4LTMuNTc3YzEuMTcyLS41NSAxLjgyLTEuNiAxLjgyLTIuOTY3IDAtMi4wNjMtMS40NzgtMy40MDYtNC4wMDUtMy40MDZIOC4xOTl2OS45NWgyLjIyMnYtMy4xMzhoMS43N2wxLjkzIDMuMTM4aDIuNTc2ek0xMC40MiA4Ljk5MWgxLjY4NWMxLjE3MiAwIDEuODguNSAxLjg4IDEuNDRzLS43MDggMS40NC0xLjg4IDEuNDRoLTEuNjg1di0yLjg4eiIgZmlsbD0iI2ZmZiIvPgo8L3N2Zz4K"><span
																			class="color-grey-1 text-16 mr-2"
																			id="review_txt_name">석**님</span>
																	</div>
																</div>
																<div class="flex-shrink-0">
																	<div class="text-right"
																		id="js_container_review_report_btn">
																		<div
																			class="js-btn-review-report text-10 color-grey-5 click-effect-press">신고</div>
																	</div>
																	<div class="text-right dc-none"
																		id="js_container_review_my_btns"
																		style="display: none;">
																		<button
																			class="js-btn-review-modify btn btn-sm btn-outline-grey color-grey-5 text-10 click-effect-press">수정</button>
																		<button
																			class="js-btn-review-delete btn btn-sm btn-outline-grey color-grey-5 text-10 ml-2 click-effect-press">삭제</button>
																	</div>
																</div>
															</div>
															<div
																class="dc-flex justify-content-between align-items-centers">
																<div>
																	<span class="color-grey-2 text-24 wordbreak-keepall"
																		id="review_txt_evaluation">5.0</span><span
																		class="color-grey-5 text-10 wordbreak-keepall">/
																		5.0</span>
																</div>
																<div class="text-right">
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_detail_evaluation">차량상태 5.0 | 친절도
																		5.0 | 이용안내 5.0</p>
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_rent_info">2023.03.23~2023.03.24 |
																		코나 1세대 EV</p>
																</div>
															</div>
															<hr>
															<p class="color-grey-4 text-14 wordbreak-breakword"
																id="review_txt_msg">
																업무용으로 렌트했습니다.<br>공항 가까워서 좋았습니다.
															</p>
															<div
																class="dc-flex justify-content-between align-items-center mb-2">
																<span class="text-10 color-grey-5"
																	id="review_txt_write_date">2023.04.05</span>
																<div
																	class="review-btn-good dc-flex align-items-center click-effect-press gray">
																	<img class="btn-good-icon mr-1"
																		src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjE4NjcgMTUuNjY2N0gzQzEuODk1NDMgMTUuNjY2NyAxIDE0Ljc3MTIgMSAxMy42NjY3VjlDMSA3Ljg5NTQzIDEuODk1NDMgNyAzIDdINC4yMzM0Mkw2LjcyNDEzIDEuMzk1OTFDNi44MzExMyAxLjE1NTE2IDcuMDY5ODcgMSA3LjMzMzMzIDFDOC44MDYwOSAxIDEwIDIuMTkzOTEgMTAgMy42NjY2N1Y1LjY2NjY3TDEzLjA5OTEgNS42NjY3MUMxMy42ODU5IDUuNjYwMDYgMTQuMjQ1OSA1LjkxMTQzIDE0LjYzMSA2LjM1NDIyQzE1LjAxNiA2Ljc5NzAyIDE1LjE4NzIgNy4zODY1NiAxNS4wOTkgNy45Njc3MUwxNC4xNzkxIDEzLjk2NjZDMTQuMDI5NiAxNC45NTI3IDEzLjE3NjQgMTUuNjc3OSAxMi4xODY3IDE1LjY2NjdaTTUuMzMzMzMgMTQuMzMzNEwxMi4xOTQyIDE0LjMzMzRDMTIuNTI2NiAxNC4zMzcxIDEyLjgxMSAxNC4wOTU0IDEyLjg2MSAxMy43NjU2TDEzLjc4MDkgNy43NjY2MkMxMy44MTAyIDcuNTczMjQgMTMuNzUzMiA3LjM3NjczIDEzLjYyNDggNy4yMjkxM0MxMy40OTY1IDcuMDgxNTMgMTMuMzA5OCA2Ljk5Nzc0IDEzLjEwNjcgN0g5LjMzMzMzQzguOTY1MTQgNyA4LjY2NjY3IDYuNzAxNTIgOC42NjY2NyA2LjMzMzMzVjMuNjY2NjdDOC42NjY2NyAzLjA3MTYyIDguMjc2ODcgMi41Njc2MiA3LjczODcgMi4zOTYwN0w1LjMzMzMzIDcuODA4MTRWMTQuMzMzNFpNNCA4LjMzMzMzSDIuOTY2NjdDMi41OTg0OCA4LjMzMzMzIDIuMyA4LjYzMTgxIDIuMyA5VjEzLjY2NjdDMi4zIDE0LjAzNDkgMi41OTg0OCAxNC4zMzMzIDIuOTY2NjcgMTQuMzMzM0g0VjguMzMzMzNaIiBmaWxsPSIjOTk5OTk5Ii8+Cjwvc3ZnPgo="><span
																		class="text-12 wordbreak-keepall line-height-1"
																		id="review_txt_good">도움돼요 0</span>
																</div>
															</div>
															<div class="p-3 bg-light dc-none"
																id="review_company_reply_box" style="display: none;">
																<span class="color-blue text-12"
																	id="review_txt_company_reply_name">업체명</span>
																<p
																	class="color-grey-3 mb-1 text-14 mt-2 wordbreak-breakword"
																	id="review_txt_company_reply_msg">언제나 친절한 고고렌트카
																	입니다. 알찬 이용후기 남겨주셔서 감사합니다. 언제나 편한 여행이 되도록 노력하는 고고렌트카가
																	되겠습니다.</p>
																<span class="text-10 color-grey-5"
																	id="review_txt_company_reply_date">2018.09.20</span>
															</div>
														</div>
													</div>
													<div class="col-lg-12 review-list-container"
														id="review_item" rs="110972">
														<div class="bg-white p-3 mb-3 border">
															<div class="dc-flex justify-content-between mb-1">
																<div
																	class="js-btn-review-driver-info click-effect-press">
																	<div class="dc-flex align-items-center">
																		<img
																			class="img-user-profile object-fit center-crop mr-1 dc-none"><img
																			class="js-review-item-user-grade-icon mr-1"
																			style="width: 16px;"
																			src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxjaXJjbGUgY3g9IjExLjk5OSIgY3k9IjExLjk5OSIgcj0iMTAuNDk5IiBmaWxsPSIjNURBRUY5Ii8+CiAgICA8cGF0aCBkPSJNMTIuMTUyIDYuNzVDOS44OTIgNi43NSA4LjEgNy44MyA4LjEgOS42MzVjMCAxLjg3OSAxLjE3OSAyLjc3NSAzLjM1MiAzLjE4IDEuNzguMzMyIDIuNDU2LjY1MSAyLjQ1NiAxLjQ1IDAgLjY1LS42NzUgMS4xMDUtMS41ODQgMS4xMDUtMS4yNzcgMC0yLjExMi0uNjM5LTIuMjM1LTEuNTk3SDcuNzkzYy4wOTggMi4xMzcgMS45MDMgMy40NzUgNC4zNzEgMy40NzUgMi4yMzUgMCA0LjA0LTEuMTY2IDQuMDQtMy4wODIgMC0xLjQ5OC0uNzg2LTIuNjQtMy4wOTQtMy4xMTktMS45NTMtLjQwNS0yLjcyNi0uNjYzLTIuNzI2LTEuNDEyIDAtLjYwMi41NzctMS4wMTkgMS42Mi0xLjAxOSAxLjA2OSAwIDEuNzIuNTI4IDEuODU1IDEuNGgyLjMwOGMtLjExLTEuOTAzLTEuNzgtMy4yNjYtNC4wMTUtMy4yNjZ6IiBmaWxsPSIjZmZmIi8+Cjwvc3ZnPgo="><span
																			class="color-grey-1 text-16 mr-2"
																			id="review_txt_name">박**님</span>
																	</div>
																</div>
																<div class="flex-shrink-0">
																	<div class="text-right"
																		id="js_container_review_report_btn">
																		<div
																			class="js-btn-review-report text-10 color-grey-5 click-effect-press">신고</div>
																	</div>
																	<div class="text-right dc-none"
																		id="js_container_review_my_btns"
																		style="display: none;">
																		<button
																			class="js-btn-review-modify btn btn-sm btn-outline-grey color-grey-5 text-10 click-effect-press">수정</button>
																		<button
																			class="js-btn-review-delete btn btn-sm btn-outline-grey color-grey-5 text-10 ml-2 click-effect-press">삭제</button>
																	</div>
																</div>
															</div>
															<div
																class="dc-flex justify-content-between align-items-centers">
																<div>
																	<span class="color-grey-2 text-24 wordbreak-keepall"
																		id="review_txt_evaluation">5.0</span><span
																		class="color-grey-5 text-10 wordbreak-keepall">/
																		5.0</span>
																</div>
																<div class="text-right">
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_detail_evaluation">차량상태 5.0 | 친절도
																		5.0 | 이용안내 5.0</p>
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_rent_info">2023.03.21~2023.03.25 |
																		코나 1세대 EV</p>
																</div>
															</div>
															<hr>
															<p class="color-grey-4 text-14 wordbreak-breakword"
																id="review_txt_msg">차량 인수와 반납 모두 빠르게 진행되었고, 차도 상태
																좋았어요. 다음에 또 이용하겠습니다.</p>
															<div
																class="dc-flex justify-content-between align-items-center mb-2">
																<span class="text-10 color-grey-5"
																	id="review_txt_write_date">2023.04.04</span>
																<div
																	class="review-btn-good dc-flex align-items-center click-effect-press gray">
																	<img class="btn-good-icon mr-1"
																		src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjE4NjcgMTUuNjY2N0gzQzEuODk1NDMgMTUuNjY2NyAxIDE0Ljc3MTIgMSAxMy42NjY3VjlDMSA3Ljg5NTQzIDEuODk1NDMgNyAzIDdINC4yMzM0Mkw2LjcyNDEzIDEuMzk1OTFDNi44MzExMyAxLjE1NTE2IDcuMDY5ODcgMSA3LjMzMzMzIDFDOC44MDYwOSAxIDEwIDIuMTkzOTEgMTAgMy42NjY2N1Y1LjY2NjY3TDEzLjA5OTEgNS42NjY3MUMxMy42ODU5IDUuNjYwMDYgMTQuMjQ1OSA1LjkxMTQzIDE0LjYzMSA2LjM1NDIyQzE1LjAxNiA2Ljc5NzAyIDE1LjE4NzIgNy4zODY1NiAxNS4wOTkgNy45Njc3MUwxNC4xNzkxIDEzLjk2NjZDMTQuMDI5NiAxNC45NTI3IDEzLjE3NjQgMTUuNjc3OSAxMi4xODY3IDE1LjY2NjdaTTUuMzMzMzMgMTQuMzMzNEwxMi4xOTQyIDE0LjMzMzRDMTIuNTI2NiAxNC4zMzcxIDEyLjgxMSAxNC4wOTU0IDEyLjg2MSAxMy43NjU2TDEzLjc4MDkgNy43NjY2MkMxMy44MTAyIDcuNTczMjQgMTMuNzUzMiA3LjM3NjczIDEzLjYyNDggNy4yMjkxM0MxMy40OTY1IDcuMDgxNTMgMTMuMzA5OCA2Ljk5Nzc0IDEzLjEwNjcgN0g5LjMzMzMzQzguOTY1MTQgNyA4LjY2NjY3IDYuNzAxNTIgOC42NjY2NyA2LjMzMzMzVjMuNjY2NjdDOC42NjY2NyAzLjA3MTYyIDguMjc2ODcgMi41Njc2MiA3LjczODcgMi4zOTYwN0w1LjMzMzMzIDcuODA4MTRWMTQuMzMzNFpNNCA4LjMzMzMzSDIuOTY2NjdDMi41OTg0OCA4LjMzMzMzIDIuMyA4LjYzMTgxIDIuMyA5VjEzLjY2NjdDMi4zIDE0LjAzNDkgMi41OTg0OCAxNC4zMzMzIDIuOTY2NjcgMTQuMzMzM0g0VjguMzMzMzNaIiBmaWxsPSIjOTk5OTk5Ii8+Cjwvc3ZnPgo="><span
																		class="text-12 wordbreak-keepall line-height-1"
																		id="review_txt_good">도움돼요 0</span>
																</div>
															</div>
															<div class="p-3 bg-light dc-none"
																id="review_company_reply_box" style="display: none;">
																<span class="color-blue text-12"
																	id="review_txt_company_reply_name">업체명</span>
																<p
																	class="color-grey-3 mb-1 text-14 mt-2 wordbreak-breakword"
																	id="review_txt_company_reply_msg">언제나 친절한 고고렌트카
																	입니다. 알찬 이용후기 남겨주셔서 감사합니다. 언제나 편한 여행이 되도록 노력하는 고고렌트카가
																	되겠습니다.</p>
																<span class="text-10 color-grey-5"
																	id="review_txt_company_reply_date">2018.09.20</span>
															</div>
														</div>
													</div>
													<div class="col-lg-12 review-list-container"
														id="review_item" rs="110874">
														<div class="bg-white p-3 mb-3 border">
															<div class="dc-flex justify-content-between mb-1">
																<div
																	class="js-btn-review-driver-info click-effect-press">
																	<div class="dc-flex align-items-center">
																		<img
																			class="img-user-profile object-fit center-crop mr-1 dc-none"><img
																			class="js-review-item-user-grade-icon mr-1"
																			style="width: 16px;"
																			src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxjaXJjbGUgY3g9IjExLjk5OSIgY3k9IjExLjk5OSIgcj0iMTAuNDk5IiBmaWxsPSIjNURBRUY5Ii8+CiAgICA8cGF0aCBkPSJNMTIuMTUyIDYuNzVDOS44OTIgNi43NSA4LjEgNy44MyA4LjEgOS42MzVjMCAxLjg3OSAxLjE3OSAyLjc3NSAzLjM1MiAzLjE4IDEuNzguMzMyIDIuNDU2LjY1MSAyLjQ1NiAxLjQ1IDAgLjY1LS42NzUgMS4xMDUtMS41ODQgMS4xMDUtMS4yNzcgMC0yLjExMi0uNjM5LTIuMjM1LTEuNTk3SDcuNzkzYy4wOTggMi4xMzcgMS45MDMgMy40NzUgNC4zNzEgMy40NzUgMi4yMzUgMCA0LjA0LTEuMTY2IDQuMDQtMy4wODIgMC0xLjQ5OC0uNzg2LTIuNjQtMy4wOTQtMy4xMTktMS45NTMtLjQwNS0yLjcyNi0uNjYzLTIuNzI2LTEuNDEyIDAtLjYwMi41NzctMS4wMTkgMS42Mi0xLjAxOSAxLjA2OSAwIDEuNzIuNTI4IDEuODU1IDEuNGgyLjMwOGMtLjExLTEuOTAzLTEuNzgtMy4yNjYtNC4wMTUtMy4yNjZ6IiBmaWxsPSIjZmZmIi8+Cjwvc3ZnPgo="><span
																			class="color-grey-1 text-16 mr-2"
																			id="review_txt_name">김**님</span>
																	</div>
																</div>
																<div class="flex-shrink-0">
																	<div class="text-right"
																		id="js_container_review_report_btn">
																		<div
																			class="js-btn-review-report text-10 color-grey-5 click-effect-press">신고</div>
																	</div>
																	<div class="text-right dc-none"
																		id="js_container_review_my_btns"
																		style="display: none;">
																		<button
																			class="js-btn-review-modify btn btn-sm btn-outline-grey color-grey-5 text-10 click-effect-press">수정</button>
																		<button
																			class="js-btn-review-delete btn btn-sm btn-outline-grey color-grey-5 text-10 ml-2 click-effect-press">삭제</button>
																	</div>
																</div>
															</div>
															<div
																class="dc-flex justify-content-between align-items-centers">
																<div>
																	<span class="color-grey-2 text-24 wordbreak-keepall"
																		id="review_txt_evaluation">5.0</span><span
																		class="color-grey-5 text-10 wordbreak-keepall">/
																		5.0</span>
																</div>
																<div class="text-right">
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_detail_evaluation">차량상태 5.0 | 친절도
																		5.0 | 이용안내 5.0</p>
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_rent_info">2023.04.01~2023.04.04 |
																		토레스</p>
																</div>
															</div>
															<hr>
															<p class="color-grey-4 text-14 wordbreak-breakword"
																id="review_txt_msg">거리가깝고 셔틀 자주운행하고 차상태 좋아요
																인수/반납빨리해줘요</p>
															<div
																class="dc-flex justify-content-between align-items-center mb-2">
																<span class="text-10 color-grey-5"
																	id="review_txt_write_date">2023.04.04</span>
																<div
																	class="review-btn-good dc-flex align-items-center click-effect-press gray">
																	<img class="btn-good-icon mr-1"
																		src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjE4NjcgMTUuNjY2N0gzQzEuODk1NDMgMTUuNjY2NyAxIDE0Ljc3MTIgMSAxMy42NjY3VjlDMSA3Ljg5NTQzIDEuODk1NDMgNyAzIDdINC4yMzM0Mkw2LjcyNDEzIDEuMzk1OTFDNi44MzExMyAxLjE1NTE2IDcuMDY5ODcgMSA3LjMzMzMzIDFDOC44MDYwOSAxIDEwIDIuMTkzOTEgMTAgMy42NjY2N1Y1LjY2NjY3TDEzLjA5OTEgNS42NjY3MUMxMy42ODU5IDUuNjYwMDYgMTQuMjQ1OSA1LjkxMTQzIDE0LjYzMSA2LjM1NDIyQzE1LjAxNiA2Ljc5NzAyIDE1LjE4NzIgNy4zODY1NiAxNS4wOTkgNy45Njc3MUwxNC4xNzkxIDEzLjk2NjZDMTQuMDI5NiAxNC45NTI3IDEzLjE3NjQgMTUuNjc3OSAxMi4xODY3IDE1LjY2NjdaTTUuMzMzMzMgMTQuMzMzNEwxMi4xOTQyIDE0LjMzMzRDMTIuNTI2NiAxNC4zMzcxIDEyLjgxMSAxNC4wOTU0IDEyLjg2MSAxMy43NjU2TDEzLjc4MDkgNy43NjY2MkMxMy44MTAyIDcuNTczMjQgMTMuNzUzMiA3LjM3NjczIDEzLjYyNDggNy4yMjkxM0MxMy40OTY1IDcuMDgxNTMgMTMuMzA5OCA2Ljk5Nzc0IDEzLjEwNjcgN0g5LjMzMzMzQzguOTY1MTQgNyA4LjY2NjY3IDYuNzAxNTIgOC42NjY2NyA2LjMzMzMzVjMuNjY2NjdDOC42NjY2NyAzLjA3MTYyIDguMjc2ODcgMi41Njc2MiA3LjczODcgMi4zOTYwN0w1LjMzMzMzIDcuODA4MTRWMTQuMzMzNFpNNCA4LjMzMzMzSDIuOTY2NjdDMi41OTg0OCA4LjMzMzMzIDIuMyA4LjYzMTgxIDIuMyA5VjEzLjY2NjdDMi4zIDE0LjAzNDkgMi41OTg0OCAxNC4zMzMzIDIuOTY2NjcgMTQuMzMzM0g0VjguMzMzMzNaIiBmaWxsPSIjOTk5OTk5Ii8+Cjwvc3ZnPgo="><span
																		class="text-12 wordbreak-keepall line-height-1"
																		id="review_txt_good">도움돼요 0</span>
																</div>
															</div>
															<div class="p-3 bg-light dc-none"
																id="review_company_reply_box" style="display: none;">
																<span class="color-blue text-12"
																	id="review_txt_company_reply_name">업체명</span>
																<p
																	class="color-grey-3 mb-1 text-14 mt-2 wordbreak-breakword"
																	id="review_txt_company_reply_msg">언제나 친절한 고고렌트카
																	입니다. 알찬 이용후기 남겨주셔서 감사합니다. 언제나 편한 여행이 되도록 노력하는 고고렌트카가
																	되겠습니다.</p>
																<span class="text-10 color-grey-5"
																	id="review_txt_company_reply_date">2018.09.20</span>
															</div>
														</div>
													</div>
													<div class="col-lg-12 review-list-container"
														id="review_item" rs="110605">
														<div class="bg-white p-3 mb-3 border">
															<div class="dc-flex justify-content-between mb-1">
																<div
																	class="js-btn-review-driver-info click-effect-press">
																	<div class="dc-flex align-items-center">
																		<img
																			class="img-user-profile object-fit center-crop mr-1 dc-none"><img
																			class="js-review-item-user-grade-icon mr-1"
																			style="width: 16px;"
																			src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjUiIHZpZXdCb3g9IjAgMCAyNCAyNSIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjEwLjUiIGZpbGw9IiMyQTQ5Q0MiLz4KICAgIDxwYXRoIGQ9Im0xNi42OTcgMTYuOTc1LTIuMzA4LTMuNTc3YzEuMTcyLS41NSAxLjgyLTEuNiAxLjgyLTIuOTY3IDAtMi4wNjMtMS40NzgtMy40MDYtNC4wMDUtMy40MDZIOC4xOTl2OS45NWgyLjIyMnYtMy4xMzhoMS43N2wxLjkzIDMuMTM4aDIuNTc2ek0xMC40MiA4Ljk5MWgxLjY4NWMxLjE3MiAwIDEuODguNSAxLjg4IDEuNDRzLS43MDggMS40NC0xLjg4IDEuNDRoLTEuNjg1di0yLjg4eiIgZmlsbD0iI2ZmZiIvPgo8L3N2Zz4K"><span
																			class="color-grey-1 text-16 mr-2"
																			id="review_txt_name">김**님</span>
																	</div>
																</div>
																<div class="flex-shrink-0">
																	<div class="text-right"
																		id="js_container_review_report_btn">
																		<div
																			class="js-btn-review-report text-10 color-grey-5 click-effect-press">신고</div>
																	</div>
																	<div class="text-right dc-none"
																		id="js_container_review_my_btns"
																		style="display: none;">
																		<button
																			class="js-btn-review-modify btn btn-sm btn-outline-grey color-grey-5 text-10 click-effect-press">수정</button>
																		<button
																			class="js-btn-review-delete btn btn-sm btn-outline-grey color-grey-5 text-10 ml-2 click-effect-press">삭제</button>
																	</div>
																</div>
															</div>
															<div
																class="dc-flex justify-content-between align-items-centers">
																<div>
																	<span class="color-grey-2 text-24 wordbreak-keepall"
																		id="review_txt_evaluation">5.0</span><span
																		class="color-grey-5 text-10 wordbreak-keepall">/
																		5.0</span>
																</div>
																<div class="text-right">
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_detail_evaluation">차량상태 5.0 | 친절도
																		5.0 | 이용안내 5.0</p>
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_rent_info">2023.03.23~2023.03.24 |
																		K5 3세대</p>
																</div>
															</div>
															<hr>
															<p class="color-grey-4 text-14 wordbreak-breakword"
																id="review_txt_msg">항상 편하게 잘 이용하는곳이에여 ㅎㅎ</p>
															<div
																class="dc-flex justify-content-between align-items-center mb-2">
																<span class="text-10 color-grey-5"
																	id="review_txt_write_date">2023.04.03</span>
																<div
																	class="review-btn-good dc-flex align-items-center click-effect-press gray">
																	<img class="btn-good-icon mr-1"
																		src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjE4NjcgMTUuNjY2N0gzQzEuODk1NDMgMTUuNjY2NyAxIDE0Ljc3MTIgMSAxMy42NjY3VjlDMSA3Ljg5NTQzIDEuODk1NDMgNyAzIDdINC4yMzM0Mkw2LjcyNDEzIDEuMzk1OTFDNi44MzExMyAxLjE1NTE2IDcuMDY5ODcgMSA3LjMzMzMzIDFDOC44MDYwOSAxIDEwIDIuMTkzOTEgMTAgMy42NjY2N1Y1LjY2NjY3TDEzLjA5OTEgNS42NjY3MUMxMy42ODU5IDUuNjYwMDYgMTQuMjQ1OSA1LjkxMTQzIDE0LjYzMSA2LjM1NDIyQzE1LjAxNiA2Ljc5NzAyIDE1LjE4NzIgNy4zODY1NiAxNS4wOTkgNy45Njc3MUwxNC4xNzkxIDEzLjk2NjZDMTQuMDI5NiAxNC45NTI3IDEzLjE3NjQgMTUuNjc3OSAxMi4xODY3IDE1LjY2NjdaTTUuMzMzMzMgMTQuMzMzNEwxMi4xOTQyIDE0LjMzMzRDMTIuNTI2NiAxNC4zMzcxIDEyLjgxMSAxNC4wOTU0IDEyLjg2MSAxMy43NjU2TDEzLjc4MDkgNy43NjY2MkMxMy44MTAyIDcuNTczMjQgMTMuNzUzMiA3LjM3NjczIDEzLjYyNDggNy4yMjkxM0MxMy40OTY1IDcuMDgxNTMgMTMuMzA5OCA2Ljk5Nzc0IDEzLjEwNjcgN0g5LjMzMzMzQzguOTY1MTQgNyA4LjY2NjY3IDYuNzAxNTIgOC42NjY2NyA2LjMzMzMzVjMuNjY2NjdDOC42NjY2NyAzLjA3MTYyIDguMjc2ODcgMi41Njc2MiA3LjczODcgMi4zOTYwN0w1LjMzMzMzIDcuODA4MTRWMTQuMzMzNFpNNCA4LjMzMzMzSDIuOTY2NjdDMi41OTg0OCA4LjMzMzMzIDIuMyA4LjYzMTgxIDIuMyA5VjEzLjY2NjdDMi4zIDE0LjAzNDkgMi41OTg0OCAxNC4zMzMzIDIuOTY2NjcgMTQuMzMzM0g0VjguMzMzMzNaIiBmaWxsPSIjOTk5OTk5Ii8+Cjwvc3ZnPgo="><span
																		class="text-12 wordbreak-keepall line-height-1"
																		id="review_txt_good">도움돼요 0</span>
																</div>
															</div>
															<div class="p-3 bg-light dc-none"
																id="review_company_reply_box" style="display: none;">
																<span class="color-blue text-12"
																	id="review_txt_company_reply_name">업체명</span>
																<p
																	class="color-grey-3 mb-1 text-14 mt-2 wordbreak-breakword"
																	id="review_txt_company_reply_msg">언제나 친절한 고고렌트카
																	입니다. 알찬 이용후기 남겨주셔서 감사합니다. 언제나 편한 여행이 되도록 노력하는 고고렌트카가
																	되겠습니다.</p>
																<span class="text-10 color-grey-5"
																	id="review_txt_company_reply_date">2018.09.20</span>
															</div>
														</div>
													</div>
													<div class="col-lg-12 review-list-container"
														id="review_item" rs="110416">
														<div class="bg-white p-3 mb-3 border">
															<div class="dc-flex justify-content-between mb-1">
																<div
																	class="js-btn-review-driver-info click-effect-press">
																	<div class="dc-flex align-items-center">
																		<img
																			class="img-user-profile object-fit center-crop mr-1 dc-none"><img
																			class="js-review-item-user-grade-icon mr-1"
																			style="width: 16px;"
																			src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxjaXJjbGUgY3g9IjExLjk5OSIgY3k9IjExLjk5OSIgcj0iMTAuNDk5IiBmaWxsPSIjNURBRUY5Ii8+CiAgICA8cGF0aCBkPSJNMTIuMTUyIDYuNzVDOS44OTIgNi43NSA4LjEgNy44MyA4LjEgOS42MzVjMCAxLjg3OSAxLjE3OSAyLjc3NSAzLjM1MiAzLjE4IDEuNzguMzMyIDIuNDU2LjY1MSAyLjQ1NiAxLjQ1IDAgLjY1LS42NzUgMS4xMDUtMS41ODQgMS4xMDUtMS4yNzcgMC0yLjExMi0uNjM5LTIuMjM1LTEuNTk3SDcuNzkzYy4wOTggMi4xMzcgMS45MDMgMy40NzUgNC4zNzEgMy40NzUgMi4yMzUgMCA0LjA0LTEuMTY2IDQuMDQtMy4wODIgMC0xLjQ5OC0uNzg2LTIuNjQtMy4wOTQtMy4xMTktMS45NTMtLjQwNS0yLjcyNi0uNjYzLTIuNzI2LTEuNDEyIDAtLjYwMi41NzctMS4wMTkgMS42Mi0xLjAxOSAxLjA2OSAwIDEuNzIuNTI4IDEuODU1IDEuNGgyLjMwOGMtLjExLTEuOTAzLTEuNzgtMy4yNjYtNC4wMTUtMy4yNjZ6IiBmaWxsPSIjZmZmIi8+Cjwvc3ZnPgo="><span
																			class="color-grey-1 text-16 mr-2"
																			id="review_txt_name">박**님</span>
																	</div>
																</div>
																<div class="flex-shrink-0">
																	<div class="text-right"
																		id="js_container_review_report_btn">
																		<div
																			class="js-btn-review-report text-10 color-grey-5 click-effect-press">신고</div>
																	</div>
																	<div class="text-right dc-none"
																		id="js_container_review_my_btns"
																		style="display: none;">
																		<button
																			class="js-btn-review-modify btn btn-sm btn-outline-grey color-grey-5 text-10 click-effect-press">수정</button>
																		<button
																			class="js-btn-review-delete btn btn-sm btn-outline-grey color-grey-5 text-10 ml-2 click-effect-press">삭제</button>
																	</div>
																</div>
															</div>
															<div
																class="dc-flex justify-content-between align-items-centers">
																<div>
																	<span class="color-grey-2 text-24 wordbreak-keepall"
																		id="review_txt_evaluation">5.0</span><span
																		class="color-grey-5 text-10 wordbreak-keepall">/
																		5.0</span>
																</div>
																<div class="text-right">
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_detail_evaluation">차량상태 5.0 | 친절도
																		5.0 | 이용안내 5.0</p>
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_rent_info">2023.03.21~2023.03.25 |
																		코나 1세대 EV</p>
																</div>
															</div>
															<hr>
															<p class="color-grey-4 text-14 wordbreak-breakword"
																id="review_txt_msg">차량상태도 좋고 저렴한 가격에 너무 좋았습니다!!^^</p>
															<div
																class="dc-flex justify-content-between align-items-center mb-2">
																<span class="text-10 color-grey-5"
																	id="review_txt_write_date">2023.04.02</span>
																<div
																	class="review-btn-good dc-flex align-items-center click-effect-press gray">
																	<img class="btn-good-icon mr-1"
																		src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjE4NjcgMTUuNjY2N0gzQzEuODk1NDMgMTUuNjY2NyAxIDE0Ljc3MTIgMSAxMy42NjY3VjlDMSA3Ljg5NTQzIDEuODk1NDMgNyAzIDdINC4yMzM0Mkw2LjcyNDEzIDEuMzk1OTFDNi44MzExMyAxLjE1NTE2IDcuMDY5ODcgMSA3LjMzMzMzIDFDOC44MDYwOSAxIDEwIDIuMTkzOTEgMTAgMy42NjY2N1Y1LjY2NjY3TDEzLjA5OTEgNS42NjY3MUMxMy42ODU5IDUuNjYwMDYgMTQuMjQ1OSA1LjkxMTQzIDE0LjYzMSA2LjM1NDIyQzE1LjAxNiA2Ljc5NzAyIDE1LjE4NzIgNy4zODY1NiAxNS4wOTkgNy45Njc3MUwxNC4xNzkxIDEzLjk2NjZDMTQuMDI5NiAxNC45NTI3IDEzLjE3NjQgMTUuNjc3OSAxMi4xODY3IDE1LjY2NjdaTTUuMzMzMzMgMTQuMzMzNEwxMi4xOTQyIDE0LjMzMzRDMTIuNTI2NiAxNC4zMzcxIDEyLjgxMSAxNC4wOTU0IDEyLjg2MSAxMy43NjU2TDEzLjc4MDkgNy43NjY2MkMxMy44MTAyIDcuNTczMjQgMTMuNzUzMiA3LjM3NjczIDEzLjYyNDggNy4yMjkxM0MxMy40OTY1IDcuMDgxNTMgMTMuMzA5OCA2Ljk5Nzc0IDEzLjEwNjcgN0g5LjMzMzMzQzguOTY1MTQgNyA4LjY2NjY3IDYuNzAxNTIgOC42NjY2NyA2LjMzMzMzVjMuNjY2NjdDOC42NjY2NyAzLjA3MTYyIDguMjc2ODcgMi41Njc2MiA3LjczODcgMi4zOTYwN0w1LjMzMzMzIDcuODA4MTRWMTQuMzMzNFpNNCA4LjMzMzMzSDIuOTY2NjdDMi41OTg0OCA4LjMzMzMzIDIuMyA4LjYzMTgxIDIuMyA5VjEzLjY2NjdDMi4zIDE0LjAzNDkgMi41OTg0OCAxNC4zMzMzIDIuOTY2NjcgMTQuMzMzM0g0VjguMzMzMzNaIiBmaWxsPSIjOTk5OTk5Ii8+Cjwvc3ZnPgo="><span
																		class="text-12 wordbreak-keepall line-height-1"
																		id="review_txt_good">도움돼요 0</span>
																</div>
															</div>
															<div class="p-3 bg-light dc-none"
																id="review_company_reply_box" style="display: none;">
																<span class="color-blue text-12"
																	id="review_txt_company_reply_name">업체명</span>
																<p
																	class="color-grey-3 mb-1 text-14 mt-2 wordbreak-breakword"
																	id="review_txt_company_reply_msg">언제나 친절한 고고렌트카
																	입니다. 알찬 이용후기 남겨주셔서 감사합니다. 언제나 편한 여행이 되도록 노력하는 고고렌트카가
																	되겠습니다.</p>
																<span class="text-10 color-grey-5"
																	id="review_txt_company_reply_date">2018.09.20</span>
															</div>
														</div>
													</div>
													<div class="col-lg-12 review-list-container"
														id="review_item" rs="110403">
														<div class="bg-white p-3 mb-3 border">
															<div class="dc-flex justify-content-between mb-1">
																<div
																	class="js-btn-review-driver-info click-effect-press">
																	<div class="dc-flex align-items-center">
																		<img
																			class="img-user-profile object-fit center-crop mr-1 dc-none"><img
																			class="js-review-item-user-grade-icon mr-1"
																			style="width: 16px;"
																			src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjUiIHZpZXdCb3g9IjAgMCAyNCAyNSIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxjaXJjbGUgY3g9IjEyIiBjeT0iMTIiIHI9IjEwLjUiIGZpbGw9IiMwRDZGRkMiLz4KICAgIDxwYXRoIGQ9Ik04LjI3NyAxNi45NzVoNC42ODljMi4yMzQgMCAzLjU1Mi0xLjE3MiAzLjU1Mi0zLjAxNSAwLS45NjUtLjY3MS0xLjg5My0xLjYyMy0yLjE5OC42ODMtLjI1NiAxLjE2LTEuMDYyIDEuMTYtMS43NyAwLTEuODItMS4yNDYtMi45NjctMy40NTYtMi45NjdIOC4yNzd2OS45NXptMi4yMjItNS45MjFWOC45MTdoMi4wMDNjLjg0MiAwIDEuMzMuMzc5IDEuMzMgMS4wNzVzLS40ODggMS4wNjItMS4zMyAxLjA2MmgtMi4wMDN6bTAgNC4wMjl2LTIuMjQ3aDIuMzY5Yy44NzkgMCAxLjQyOC4zOTEgMS40MjggMS4xMjQgMCAuNzMyLS41NDkgMS4xMjMtMS40MjggMS4xMjNoLTIuMzY5eiIgZmlsbD0iI2ZmZiIvPgo8L3N2Zz4K"><span
																			class="color-grey-1 text-16 mr-2"
																			id="review_txt_name">김**님</span>
																	</div>
																</div>
																<div class="flex-shrink-0">
																	<div class="text-right"
																		id="js_container_review_report_btn">
																		<div
																			class="js-btn-review-report text-10 color-grey-5 click-effect-press">신고</div>
																	</div>
																	<div class="text-right dc-none"
																		id="js_container_review_my_btns"
																		style="display: none;">
																		<button
																			class="js-btn-review-modify btn btn-sm btn-outline-grey color-grey-5 text-10 click-effect-press">수정</button>
																		<button
																			class="js-btn-review-delete btn btn-sm btn-outline-grey color-grey-5 text-10 ml-2 click-effect-press">삭제</button>
																	</div>
																</div>
															</div>
															<div
																class="dc-flex justify-content-between align-items-centers">
																<div>
																	<span class="color-grey-2 text-24 wordbreak-keepall"
																		id="review_txt_evaluation">5.0</span><span
																		class="color-grey-5 text-10 wordbreak-keepall">/
																		5.0</span>
																</div>
																<div class="text-right">
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_detail_evaluation">차량상태 5.0 | 친절도
																		5.0 | 이용안내 5.0</p>
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_rent_info">2023.03.14~2023.03.15 |
																		코나 1세대 EV</p>
																</div>
															</div>
															<hr>
															<p class="color-grey-4 text-14 wordbreak-breakword"
																id="review_txt_msg">너무 너무 편안하고 깨끗하고 좋았어요 만족합니다^^</p>
															<div
																class="dc-flex justify-content-between align-items-center mb-2">
																<span class="text-10 color-grey-5"
																	id="review_txt_write_date">2023.04.02</span>
																<div
																	class="review-btn-good dc-flex align-items-center click-effect-press gray">
																	<img class="btn-good-icon mr-1"
																		src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjE4NjcgMTUuNjY2N0gzQzEuODk1NDMgMTUuNjY2NyAxIDE0Ljc3MTIgMSAxMy42NjY3VjlDMSA3Ljg5NTQzIDEuODk1NDMgNyAzIDdINC4yMzM0Mkw2LjcyNDEzIDEuMzk1OTFDNi44MzExMyAxLjE1NTE2IDcuMDY5ODcgMSA3LjMzMzMzIDFDOC44MDYwOSAxIDEwIDIuMTkzOTEgMTAgMy42NjY2N1Y1LjY2NjY3TDEzLjA5OTEgNS42NjY3MUMxMy42ODU5IDUuNjYwMDYgMTQuMjQ1OSA1LjkxMTQzIDE0LjYzMSA2LjM1NDIyQzE1LjAxNiA2Ljc5NzAyIDE1LjE4NzIgNy4zODY1NiAxNS4wOTkgNy45Njc3MUwxNC4xNzkxIDEzLjk2NjZDMTQuMDI5NiAxNC45NTI3IDEzLjE3NjQgMTUuNjc3OSAxMi4xODY3IDE1LjY2NjdaTTUuMzMzMzMgMTQuMzMzNEwxMi4xOTQyIDE0LjMzMzRDMTIuNTI2NiAxNC4zMzcxIDEyLjgxMSAxNC4wOTU0IDEyLjg2MSAxMy43NjU2TDEzLjc4MDkgNy43NjY2MkMxMy44MTAyIDcuNTczMjQgMTMuNzUzMiA3LjM3NjczIDEzLjYyNDggNy4yMjkxM0MxMy40OTY1IDcuMDgxNTMgMTMuMzA5OCA2Ljk5Nzc0IDEzLjEwNjcgN0g5LjMzMzMzQzguOTY1MTQgNyA4LjY2NjY3IDYuNzAxNTIgOC42NjY2NyA2LjMzMzMzVjMuNjY2NjdDOC42NjY2NyAzLjA3MTYyIDguMjc2ODcgMi41Njc2MiA3LjczODcgMi4zOTYwN0w1LjMzMzMzIDcuODA4MTRWMTQuMzMzNFpNNCA4LjMzMzMzSDIuOTY2NjdDMi41OTg0OCA4LjMzMzMzIDIuMyA4LjYzMTgxIDIuMyA5VjEzLjY2NjdDMi4zIDE0LjAzNDkgMi41OTg0OCAxNC4zMzMzIDIuOTY2NjcgMTQuMzMzM0g0VjguMzMzMzNaIiBmaWxsPSIjOTk5OTk5Ii8+Cjwvc3ZnPgo="><span
																		class="text-12 wordbreak-keepall line-height-1"
																		id="review_txt_good">도움돼요 0</span>
																</div>
															</div>
															<div class="p-3 bg-light dc-none"
																id="review_company_reply_box" style="display: none;">
																<span class="color-blue text-12"
																	id="review_txt_company_reply_name">업체명</span>
																<p
																	class="color-grey-3 mb-1 text-14 mt-2 wordbreak-breakword"
																	id="review_txt_company_reply_msg">언제나 친절한 고고렌트카
																	입니다. 알찬 이용후기 남겨주셔서 감사합니다. 언제나 편한 여행이 되도록 노력하는 고고렌트카가
																	되겠습니다.</p>
																<span class="text-10 color-grey-5"
																	id="review_txt_company_reply_date">2018.09.20</span>
															</div>
														</div>
													</div>
													<div class="col-lg-12 review-list-container"
														id="review_item" rs="110354">
														<div class="bg-white p-3 mb-3 border">
															<div class="dc-flex justify-content-between mb-1">
																<div
																	class="js-btn-review-driver-info click-effect-press">
																	<div class="dc-flex align-items-center">
																		<img
																			class="img-user-profile object-fit center-crop mr-1 dc-none"><img
																			class="js-review-item-user-grade-icon mr-1 dc-none"
																			style="width: 16px;"><span
																			class="color-grey-1 text-16 mr-2"
																			id="review_txt_name">정**님</span>
																	</div>
																</div>
																<div class="flex-shrink-0">
																	<div class="text-right"
																		id="js_container_review_report_btn">
																		<div
																			class="js-btn-review-report text-10 color-grey-5 click-effect-press">신고</div>
																	</div>
																	<div class="text-right dc-none"
																		id="js_container_review_my_btns"
																		style="display: none;">
																		<button
																			class="js-btn-review-modify btn btn-sm btn-outline-grey color-grey-5 text-10 click-effect-press">수정</button>
																		<button
																			class="js-btn-review-delete btn btn-sm btn-outline-grey color-grey-5 text-10 ml-2 click-effect-press">삭제</button>
																	</div>
																</div>
															</div>
															<div
																class="dc-flex justify-content-between align-items-centers">
																<div>
																	<span class="color-grey-2 text-24 wordbreak-keepall"
																		id="review_txt_evaluation">5.0</span><span
																		class="color-grey-5 text-10 wordbreak-keepall">/
																		5.0</span>
																</div>
																<div class="text-right">
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_detail_evaluation">차량상태 5.0 | 친절도
																		5.0 | 이용안내 5.0</p>
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_rent_info">2023.03.30~2023.04.01 |
																		XM3</p>
																</div>
															</div>
															<hr>
															<p class="color-grey-4 text-14 wordbreak-breakword"
																id="review_txt_msg">완전 좋았어요 친절하고 차 상태도 좋았어요</p>
															<div
																class="dc-flex justify-content-between align-items-center mb-2">
																<span class="text-10 color-grey-5"
																	id="review_txt_write_date">2023.04.01</span>
																<div
																	class="review-btn-good dc-flex align-items-center click-effect-press gray">
																	<img class="btn-good-icon mr-1"
																		src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjE4NjcgMTUuNjY2N0gzQzEuODk1NDMgMTUuNjY2NyAxIDE0Ljc3MTIgMSAxMy42NjY3VjlDMSA3Ljg5NTQzIDEuODk1NDMgNyAzIDdINC4yMzM0Mkw2LjcyNDEzIDEuMzk1OTFDNi44MzExMyAxLjE1NTE2IDcuMDY5ODcgMSA3LjMzMzMzIDFDOC44MDYwOSAxIDEwIDIuMTkzOTEgMTAgMy42NjY2N1Y1LjY2NjY3TDEzLjA5OTEgNS42NjY3MUMxMy42ODU5IDUuNjYwMDYgMTQuMjQ1OSA1LjkxMTQzIDE0LjYzMSA2LjM1NDIyQzE1LjAxNiA2Ljc5NzAyIDE1LjE4NzIgNy4zODY1NiAxNS4wOTkgNy45Njc3MUwxNC4xNzkxIDEzLjk2NjZDMTQuMDI5NiAxNC45NTI3IDEzLjE3NjQgMTUuNjc3OSAxMi4xODY3IDE1LjY2NjdaTTUuMzMzMzMgMTQuMzMzNEwxMi4xOTQyIDE0LjMzMzRDMTIuNTI2NiAxNC4zMzcxIDEyLjgxMSAxNC4wOTU0IDEyLjg2MSAxMy43NjU2TDEzLjc4MDkgNy43NjY2MkMxMy44MTAyIDcuNTczMjQgMTMuNzUzMiA3LjM3NjczIDEzLjYyNDggNy4yMjkxM0MxMy40OTY1IDcuMDgxNTMgMTMuMzA5OCA2Ljk5Nzc0IDEzLjEwNjcgN0g5LjMzMzMzQzguOTY1MTQgNyA4LjY2NjY3IDYuNzAxNTIgOC42NjY2NyA2LjMzMzMzVjMuNjY2NjdDOC42NjY2NyAzLjA3MTYyIDguMjc2ODcgMi41Njc2MiA3LjczODcgMi4zOTYwN0w1LjMzMzMzIDcuODA4MTRWMTQuMzMzNFpNNCA4LjMzMzMzSDIuOTY2NjdDMi41OTg0OCA4LjMzMzMzIDIuMyA4LjYzMTgxIDIuMyA5VjEzLjY2NjdDMi4zIDE0LjAzNDkgMi41OTg0OCAxNC4zMzMzIDIuOTY2NjcgMTQuMzMzM0g0VjguMzMzMzNaIiBmaWxsPSIjOTk5OTk5Ii8+Cjwvc3ZnPgo="><span
																		class="text-12 wordbreak-keepall line-height-1"
																		id="review_txt_good">도움돼요 0</span>
																</div>
															</div>
															<div class="p-3 bg-light dc-none"
																id="review_company_reply_box" style="display: none;">
																<span class="color-blue text-12"
																	id="review_txt_company_reply_name">업체명</span>
																<p
																	class="color-grey-3 mb-1 text-14 mt-2 wordbreak-breakword"
																	id="review_txt_company_reply_msg">언제나 친절한 고고렌트카
																	입니다. 알찬 이용후기 남겨주셔서 감사합니다. 언제나 편한 여행이 되도록 노력하는 고고렌트카가
																	되겠습니다.</p>
																<span class="text-10 color-grey-5"
																	id="review_txt_company_reply_date">2018.09.20</span>
															</div>
														</div>
													</div>
													<div class="col-lg-12 review-list-container"
														id="review_item" rs="110293">
														<div class="bg-white p-3 mb-3 border">
															<div class="dc-flex justify-content-between mb-1">
																<div
																	class="js-btn-review-driver-info click-effect-press">
																	<div class="dc-flex align-items-center">
																		<img
																			class="img-user-profile object-fit center-crop mr-1 dc-none"><img
																			class="js-review-item-user-grade-icon mr-1"
																			style="width: 16px;"
																			src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxjaXJjbGUgY3g9IjExLjk5OSIgY3k9IjExLjk5OSIgcj0iMTAuNDk5IiBmaWxsPSIjNURBRUY5Ii8+CiAgICA8cGF0aCBkPSJNMTIuMTUyIDYuNzVDOS44OTIgNi43NSA4LjEgNy44MyA4LjEgOS42MzVjMCAxLjg3OSAxLjE3OSAyLjc3NSAzLjM1MiAzLjE4IDEuNzguMzMyIDIuNDU2LjY1MSAyLjQ1NiAxLjQ1IDAgLjY1LS42NzUgMS4xMDUtMS41ODQgMS4xMDUtMS4yNzcgMC0yLjExMi0uNjM5LTIuMjM1LTEuNTk3SDcuNzkzYy4wOTggMi4xMzcgMS45MDMgMy40NzUgNC4zNzEgMy40NzUgMi4yMzUgMCA0LjA0LTEuMTY2IDQuMDQtMy4wODIgMC0xLjQ5OC0uNzg2LTIuNjQtMy4wOTQtMy4xMTktMS45NTMtLjQwNS0yLjcyNi0uNjYzLTIuNzI2LTEuNDEyIDAtLjYwMi41NzctMS4wMTkgMS42Mi0xLjAxOSAxLjA2OSAwIDEuNzIuNTI4IDEuODU1IDEuNGgyLjMwOGMtLjExLTEuOTAzLTEuNzgtMy4yNjYtNC4wMTUtMy4yNjZ6IiBmaWxsPSIjZmZmIi8+Cjwvc3ZnPgo="><span
																			class="color-grey-1 text-16 mr-2"
																			id="review_txt_name">박**님</span>
																	</div>
																</div>
																<div class="flex-shrink-0">
																	<div class="text-right"
																		id="js_container_review_report_btn">
																		<div
																			class="js-btn-review-report text-10 color-grey-5 click-effect-press">신고</div>
																	</div>
																	<div class="text-right dc-none"
																		id="js_container_review_my_btns"
																		style="display: none;">
																		<button
																			class="js-btn-review-modify btn btn-sm btn-outline-grey color-grey-5 text-10 click-effect-press">수정</button>
																		<button
																			class="js-btn-review-delete btn btn-sm btn-outline-grey color-grey-5 text-10 ml-2 click-effect-press">삭제</button>
																	</div>
																</div>
															</div>
															<div
																class="dc-flex justify-content-between align-items-centers">
																<div>
																	<span class="color-grey-2 text-24 wordbreak-keepall"
																		id="review_txt_evaluation">5.0</span><span
																		class="color-grey-5 text-10 wordbreak-keepall">/
																		5.0</span>
																</div>
																<div class="text-right">
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_detail_evaluation">차량상태 5.0 | 친절도
																		5.0 | 이용안내 5.0</p>
																	<p class="color-grey-5 text-10 mb-0"
																		id="review_txt_rent_info">2023.03.24~2023.03.27 |
																		아반떼 CN7</p>
																</div>
															</div>
															<hr>
															<p class="color-grey-4 text-14 wordbreak-breakword"
																id="review_txt_msg">
																친절하고 좋아요.<br>위치도 공항에서 가까워서요.
															</p>
															<div
																class="dc-flex justify-content-between align-items-center mb-2">
																<span class="text-10 color-grey-5"
																	id="review_txt_write_date">2023.04.01</span>
																<div
																	class="review-btn-good dc-flex align-items-center click-effect-press gray">
																	<img class="btn-good-icon mr-1"
																		src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjE4NjcgMTUuNjY2N0gzQzEuODk1NDMgMTUuNjY2NyAxIDE0Ljc3MTIgMSAxMy42NjY3VjlDMSA3Ljg5NTQzIDEuODk1NDMgNyAzIDdINC4yMzM0Mkw2LjcyNDEzIDEuMzk1OTFDNi44MzExMyAxLjE1NTE2IDcuMDY5ODcgMSA3LjMzMzMzIDFDOC44MDYwOSAxIDEwIDIuMTkzOTEgMTAgMy42NjY2N1Y1LjY2NjY3TDEzLjA5OTEgNS42NjY3MUMxMy42ODU5IDUuNjYwMDYgMTQuMjQ1OSA1LjkxMTQzIDE0LjYzMSA2LjM1NDIyQzE1LjAxNiA2Ljc5NzAyIDE1LjE4NzIgNy4zODY1NiAxNS4wOTkgNy45Njc3MUwxNC4xNzkxIDEzLjk2NjZDMTQuMDI5NiAxNC45NTI3IDEzLjE3NjQgMTUuNjc3OSAxMi4xODY3IDE1LjY2NjdaTTUuMzMzMzMgMTQuMzMzNEwxMi4xOTQyIDE0LjMzMzRDMTIuNTI2NiAxNC4zMzcxIDEyLjgxMSAxNC4wOTU0IDEyLjg2MSAxMy43NjU2TDEzLjc4MDkgNy43NjY2MkMxMy44MTAyIDcuNTczMjQgMTMuNzUzMiA3LjM3NjczIDEzLjYyNDggNy4yMjkxM0MxMy40OTY1IDcuMDgxNTMgMTMuMzA5OCA2Ljk5Nzc0IDEzLjEwNjcgN0g5LjMzMzMzQzguOTY1MTQgNyA4LjY2NjY3IDYuNzAxNTIgOC42NjY2NyA2LjMzMzMzVjMuNjY2NjdDOC42NjY2NyAzLjA3MTYyIDguMjc2ODcgMi41Njc2MiA3LjczODcgMi4zOTYwN0w1LjMzMzMzIDcuODA4MTRWMTQuMzMzNFpNNCA4LjMzMzMzSDIuOTY2NjdDMi41OTg0OCA4LjMzMzMzIDIuMyA4LjYzMTgxIDIuMyA5VjEzLjY2NjdDMi4zIDE0LjAzNDkgMi41OTg0OCAxNC4zMzMzIDIuOTY2NjcgMTQuMzMzM0g0VjguMzMzMzNaIiBmaWxsPSIjOTk5OTk5Ii8+Cjwvc3ZnPgo="><span
																		class="text-12 wordbreak-keepall line-height-1"
																		id="review_txt_good">도움돼요 0</span>
																</div>
															</div>
															<div class="p-3 bg-light dc-none"
																id="review_company_reply_box" style="display: none;">
																<span class="color-blue text-12"
																	id="review_txt_company_reply_name">업체명</span>
																<p
																	class="color-grey-3 mb-1 text-14 mt-2 wordbreak-breakword"
																	id="review_txt_company_reply_msg">언제나 친절한 고고렌트카
																	입니다. 알찬 이용후기 남겨주셔서 감사합니다. 언제나 편한 여행이 되도록 노력하는 고고렌트카가
																	되겠습니다.</p>
																<span class="text-10 color-grey-5"
																	id="review_txt_company_reply_date">2018.09.20</span>
															</div>
														</div>
													</div>
													
												</div>
											</div>
										</section>
									</div>
								</div>
								
							</div>
						</div>
						<div class="dc-none text-primary text-12 text-right"
							id="template_next_price">
							<span class="js-next-price-txt-period"></span><span
								class="js-next-price-txt-price"></span>
						</div>
						<div class="table-row dc-none" id="template_table_row">
							<div class="dc-flex">
								<div class="w-60 bg-very-light-purple p-2">
									<div class="pl-2 dc-flex align-items-center">
										<div
											class="js-table-row-key text-14 font-weight-bold color-light-purple"></div>
										<div
											class="js-table-row-key-badge badge badge-primary ml-1 px-1 text-10">6개월
											선택중</div>
									</div>
								</div>
								<div
									class="w-40 p-2 dc-flex align-items-center justify-content-end">
									<div class="js-table-row-discount text-12 color-blue mr-1"></div>
									<div class="js-table-row-value text-14"></div>
								</div>
							</div>
						</div>
						<div class="floating-btn-page-bottom dc-lg-none"></div>
					</div>
				</div>
				
				<!--오른쪽 결제 정보 확인 카드 -->
				<div class="col-lg-5 dc-none dc-lg-block">
					<div
						class="cm-rounded bg-shadow bg-white sticky mx-n15px mx-lg-0 sticky-pc-menu-top sticky-element-inner-scroll">
						<section class="mt-3 p-3">
							<div class="container">
								<div class="row section-title">
									<div class="col">
										<div
											class="mb-3 dc-flex align-items-center justify-content-between text-16">
											<span class="color-grey-2 font-weight-bold">결제 정보</span>
										</div>
									</div>
								</div>
								<div class="js-vcd-not-soldout-elmt">
									<div class="js-vcd-pay-info" id="js_vcd_short_month_pay_info"
										style="">
										<div class="row">
											<div class="col">
												<ul class="list-group list-group-flush">
													<li class="list-group-item bg-lg-none px-0">
														<div
															class="dc-flex justify-content-between align-items-center color-grey-3 wordbreak-keepall">
															<span class="js-vcd-txt-rent-price-label">대여요금</span>
															<div class="text-right">
																<span class="js-vcd-txt-rent-price">${car.car_price }원</span>
															</div>
														</div>
													</li>
													<li
														class="js-vcd-price-poa-hide js-vcd-login list-group-item bg-lg-none px-0 tmobi-dc-none">
														<div
															class="dc-flex justify-content-between align-items-center color-grey-5 wordbreak-keepall">
															보험요금
															<div
																class="text-right js-vcd-btn-login dc-flex click-effect-press">
																<span class="color-blue-dark-light mr-2">
																	${param.ins}
																	
																</span>
															</div>
														</div>
													</li>
													<li
														class="js-vcd-price-poa-hide js-vcd-txt-point-discount list-group-item bg-lg-none px-0 dc-none"
														style="display: none;">
														<div
															class="dc-flex justify-content-between align-items-center color-grey-3 wordbreak-keepall">
															포인트 사용
															<div class="text-right">
																<span class="js-vcd-txt-use-point">0P</span>
															</div>
														</div>
													</li>
													<li
														class="js-vcd-price-poa-hide js-vcd-txt-coupon-discount list-group-item bg-lg-none px-0 dc-none"
														style="display: none;">
														<div
															class="dc-flex justify-content-between align-items-center color-grey-3 wordbreak-keepall">
															쿠폰사용
															<div class="text-right">
																<span class="js-vcd-txt-use-coupon">0원</span>
															</div>
														</div>
													</li>
													<li
														class="js-vcd-price-poa-hide list-group-item bg-lg-none px-0 border-none">
														<div
															class="dc-flex justify-content-between align-items-center color-grey-3 wordbreak-keepall font-weight-bold">
															<span class="text-primary">예상 결제액</span>
															<div class="text-right text-primary">
																<span class="js-vcd-txt-expected-price">
																	<script type="text/javascript">
																		document.write(${car.car_price } + ${param.ins} + "원");
																	</script>
																</span>
															</div>
														</div>
													</li>
												</ul>
												<button
													class="js-vcd-btn-go-reservation btn btn-primary btn-block btn-lg btn-border-10 mt-3 click-effect-press">
													<div
														class="text-18 font-weight-bold text-white line-height-1">
														
														<span onclick="pay()"
															class="js-vcd-welcome-coupon-applied-expected-price js-vcd-txt-expected-price js-vcd-price-button">
															<script type="text/javascript">
																document.write(${car.car_price } + ${param.ins} + "원 바로 예약하기");
															</script>
														</span><span
															class="js-vcd-txt-expected-poa-price js-vcd-price-button dc-none"
															style="display: none;"></span>
													</div>
													<div class="js-vcd-txt-price-desc text-12 text-white">
														</div>
												</button>
												<div class="dc-none" id="js_vcd_read_payment_tooltip">
													<div
														class="vreserv-container-tooltip-pc d-inline-flex justify-content-between align-items-center px-3 py-2">
														<div class="vreserv-container-tooltip-body">할인쿠폰 적용
															중! 놓치지 마세요</div>
														<div class="d-flex align-items-center">
															<img
																class="m-0 vreserv-container-img-cancel-icon-pc pl-2"
																src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiNmZmYiIGQ9Ik04IDYuNTg2bDQuMjkzLTQuMjkzYy4zOS0uMzkgMS4wMjQtLjM5IDEuNDE0IDAgLjM5LjM5LjM5IDEuMDI0IDAgMS40MTRMOS40MTQgOGw0LjI5MyA0LjI5M2MuMzkuMzkuMzkgMS4wMjQgMCAxLjQxNC0uMzkuMzktMS4wMjQuMzktMS40MTQgMEw4IDkuNDE0bC00LjI5MyA0LjI5M2MtLjM5LjM5LTEuMDI0LjM5LTEuNDE0IDAtLjM5LS4zOS0uMzktMS4wMjQgMC0xLjQxNEw2LjU4NiA4IDIuMjkzIDMuNzA3Yy0uMzktLjM5LS4zOS0xLjAyNCAwLTEuNDE0LjM5LS4zOSAxLjAyNC0uMzkgMS40MTQgMEw4IDYuNTg2eiIvPgo8L3N2Zz4K">
														</div>
														<div class="vreserv-container-tooltip-polygon-pc">
															<div class="vreserv-container-tooltip-polygon-inner"></div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="js-vcd-pay-info dc-none"
										id="js_vcd_subscribe_pay_info" style="display: none;"></div>
								</div>
								<div class="row js-vcd-soldout-elmt dc-none"
									style="display: none;">
									<div class="col">
										<div class="pb-3 text-16-b">해당 차량은 마감되었어요 T^T</div>
										<button
											class="btn btn-primary btn-block btn-lg mb-2 btn-border-10 text-14 font-weight-bold"
											disabled="true">마감된 차량</button>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
				<div class="d-lg-none">
					<div class="fixed-bottom bg-white pt-2 safearea-bottom">
						<div class="container">
							<div class="dc-none" id="js_container_read_payment_tooltip">
								<div
									class="vreserv-container-tooltip dc-flex justify-content-between align-items-center px-3 py-2">
									<div class="vreserv-container-tooltip-body">할인쿠폰 적용 중!
										놓치지 마세요</div>
									<div class="d-flex align-items-center">
										<img class="m-0 vreserv-container-img-cancel-icon pl-2"
											src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiNmZmYiIGQ9Ik04IDYuNTg2bDQuMjkzLTQuMjkzYy4zOS0uMzkgMS4wMjQtLjM5IDEuNDE0IDAgLjM5LjM5LjM5IDEuMDI0IDAgMS40MTRMOS40MTQgOGw0LjI5MyA0LjI5M2MuMzkuMzkuMzkgMS4wMjQgMCAxLjQxNC0uMzkuMzktMS4wMjQuMzktMS40MTQgMEw4IDkuNDE0bC00LjI5MyA0LjI5M2MtLjM5LjM5LTEuMDI0LjM5LTEuNDE0IDAtLjM5LS4zOS0uMzktMS4wMjQgMC0xLjQxNEw2LjU4NiA4IDIuMjkzIDMuNzA3Yy0uMzktLjM5LS4zOS0xLjAyNCAwLTEuNDE0LjM5LS4zOSAxLjAyNC0uMzkgMS40MTQgMEw4IDYuNTg2eiIvPgo8L3N2Zz4K">
									</div>
									<div class="vreserv-container-tooltip-polygon">
										<div class="vreserv-container-tooltip-polygon-inner"></div>
									</div>
								</div>
							</div>
							<div class="js-vcd-not-soldout-elmt">
								<button
									class="js-vcd-btn-go-reservation btn btn-primary btn-block btn-lg btn-pay btn-border-10 mb-2 click-effect-press">
									<div class="text-18 font-weight-bold">
										<span
											class="js-vcd-txt-expected-price js-vcd-price-button js-vcd-welcome-coupon-applied-expected-price">7,300원
											바로 예약하기</span><span
											class="js-vcd-txt-expected-poa-price js-vcd-price-button dc-none"
											style="display: none;"></span>
									</div>
									<div class="js-vcd-txt-price-desc text-12">가입 후 첫 구매 5천원
										할인, 완전자차 포함</div>
								</button>
							</div>
							<div class="js-vcd-soldout-elmt dc-none" style="display: none;">
								<button
									class="btn btn-primary btn-block btn-lg btn-border-10 text-14 font-weight-bold"
									disabled="true">마감된 차량</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../inc/footer.jsp"></jsp:include>
</body>
</html>