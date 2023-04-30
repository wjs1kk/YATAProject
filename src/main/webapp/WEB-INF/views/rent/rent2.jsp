<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-fouc">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/css.css">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	function pay(car_price){
		location.href="pay?car_id=${param.car_id}&res_place=${param.res_place}&rentalDatetime=${param.rentalDatetime}&ins=${param.ins}&time=${param.time}&car_price="+car_price;
	}
</script>
<script type="text/javascript">
function maskingName(name) {
	  if (name.length <= 2) {
	    return name.replace(name.substring(0, 1), "*");
	  }

	  return (
	    name[0] +
	    "*".repeat(name.substring(1, name.length - 1).length) +
	    name[name.length - 1]
	  );
	}
</script>
</head>
<body style="">
	<jsp:include page="../inc/top.jsp"></jsp:include>
	<div class="pc-mobile-header-container">
		<!-- 		pay와 상단부분 디자인 통일시킴 -->
	 	<div class="pc-header space-2 text-center dc-none dc-lg-block">
            <div class="container">
                <h2 class="text-grey-3 underline-bg dc-inline-block">선택정보</h2>
            </div>
        </div>
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
												class="js-cpi-txt-car-model text-20 font-weight-bold color-grey-3 mb-0">${car.car_name }</div>
											
											
											<div class="js-cpi-container-branch-info pt-1 dc-none" style="display: none;">
												<div class="dc-flex align-items-center">
													<img
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE3IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM4NTkyQUIiIGQ9Ik03LjY0OCAyLjE0NmMuMTk2LS4xOTUuNTEyLS4xOTUuNzA3IDBsNS43OTMgNS43OTNjLjMxNS4zMTUuMDkyLjg1NC0uMzUzLjg1NEgyLjIwOWMtLjQ0NSAwLS42NjktLjUzOS0uMzU0LS44NTRsNS43OTMtNS43OTN6TTEzLjAwMiA4Ljc5M2gtMTB2NS41YzAgLjI3Ni4yMjQuNS41LjVoOWMuMjc2IDAgLjUtLjIyNC41LS41di01LjV6Ii8+CiAgICA8cmVjdCB3aWR0aD0iMiIgaGVpZ2h0PSI0IiB4PSI3LjAwMiIgeT0iMTEuNzkzIiBmaWxsPSIjRkFGQUZBIiByeD0iMSIvPgo8L3N2Zz4K">
													<div
														class="js-cpi-txt-branch-info text-12 color-grey-4 ml-1">${param.res_place }</div>
												</div>
											</div>
									     	 <div class="js-cpi-container-branch-info pt-1">
			                                    <div class="dc-flex align-items-center">
			                                    	<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE3IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiM4NTkyQUIiIGQ9Ik03LjY0OCAyLjE0NmMuMTk2LS4xOTUuNTEyLS4xOTUuNzA3IDBsNS43OTMgNS43OTNjLjMxNS4zMTUuMDkyLjg1NC0uMzUzLjg1NEgyLjIwOWMtLjQ0NSAwLS42NjktLjUzOS0uMzU0LS44NTRsNS43OTMtNS43OTN6TTEzLjAwMiA4Ljc5M2gtMTB2NS41YzAgLjI3Ni4yMjQuNS41LjVoOWMuMjc2IDAgLjUtLjIyNC41LS41di01LjV6Ii8+CiAgICA8cmVjdCB3aWR0aD0iMiIgaGVpZ2h0PSI0IiB4PSI3LjAwMiIgeT0iMTEuNzkzIiBmaWxsPSIjRkFGQUZBIiByeD0iMSIvPgo8L3N2Zz4K">
			                                        <div class="js-cpi-txt-branch-info text-12 color-grey-4 ml-1">${param.res_place }</div>
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
														class="txt-rent-period" style="display: block;">${param.time }
															시간</span></span>
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
												class="js-oversea-default-insurance-plan text-12 color-grey-4 text-right dc-none">
											</div>
											<div class="mt-1" id="js_vcd_next_prices"></div>
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
											id="vcd_review_note"></div>
									</li>
									<li class="nav-item text-center">
										<div class="nav-link js-vcd-nav-link click-effect-press"
											id="vcd_review_tab"></div>
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
													<div
														class="container-car-option js-vcd-radio-car-option p-3 mb-2 dc-block active"
														id="template_car_option">
														<label class="checkbox-container inline-radio mb-0"
															id="template_container_car_option_item">
															<div class="checkbox-label ml-3"
																id="template_txt_car_option_item">가죽시트 · 금연 ·
																네비게이션 · 시트열선 · 운전석에어백 · 조수석에어백 · 후방센서 · 후방카메라 · ABS ·
																블루투스 · AUX · iPod · USB · 스마트키</div> <input
															id="template_radio_car_option" type="radio"
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
											<h3>🚙 YATA가 먼저 타봤어요</h3>
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
													영업시간 외 대여/반납이 필요한 경우 YATA 고객센터를 통한 상담 후 예약 진행해주세요.</div>
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
											<h3>YATA 이용 안내</h3>
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
													<div class="js-vcp-use-contents-overseas container-blur"
														data-open="0">
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
																	결항(결박) 확인서를 YATA로 전달주시면 100% 환불 가능합니다.<br> 결항확인서는
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
														계약 조항에 위배되는 행동이나 위의 조항에 대한 위반행위를 한 경우, 회사(YATA)는 서비스를 제공하지
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
													<div>

														<div
															class="js-sci-txt-company-name text-16-b color-grey-2 mb-0">
															${param.res_place }</div>
														<div class="" id="sci_container_review_info_old_company"
															style="display: block;">
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
													
													<!-- 2023-04-26 김동욱 마크업 추가 -->
													if(${param.res_place eq '부전지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.15849019679627, 129.06202404131136), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.15849019679627, 129.06202404131136); 
														var iwContent = '<input type="text" readonly="readonly" size=13 id="res_place" value="부전지점" style="padding:5px; text-align: center; border: none;  background: #0d6ffc; color: white; font-weight: bold;"> <br><div align="center"><a href="https://map.kakao.com/link/map/YATA부전지점,35.15849019679627,129.062024041311367" style=" color:black; target="_blank">큰지도보기&nbsp&nbsp</a><a href="https://map.kakao.com/link/to/YATA부전지점,35.15849019679627,129.06202404131136" style="color:black; target="_blank">|&nbsp&nbsp길찾기</a></div></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.15849019679627, 129.06202404131136); //인포윈도우 표시 위치입니다
													}
													if(${param.res_place eq '개금지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.15350639526366, 129.02236435863063), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.15350639526366, 129.02236435863063); 
														var iwContent = '<input type="text" readonly="readonly" size=13 id="res_place" value="개금지점" style="padding:5px; text-align: center; border: none;  background: #0d6ffc; color: white; font-weight: bold;"> <br><div align="center"><a href="https://map.kakao.com/link/map/YATA개금지점,35.15350639526366,129.02236435863063" style=" color:black; target="_blank">큰지도보기&nbsp&nbsp</a><a href="https://map.kakao.com/link/to/YATA개금지점,35.15350639526366,129.02236435863063" style="color:black; target="_blank">|&nbsp&nbsp길찾기</a></div></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.15350639526366, 129.02236435863063); //인포윈도우 표시 위치입니다
													}
													if(${param.res_place eq '양정지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.171802173296115, 129.07062980631056), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.171802173296115, 129.07062980631056); 
														var iwContent = '<input type="text" readonly="readonly" size=13 id="res_place" value="양정지점" style="padding:5px; text-align: center; border: none;  background: #0d6ffc; color: white; font-weight: bold;"> <br><div align="center"><a href="https://map.kakao.com/link/map/YATA양정지점,35.171802173296115,129.07062980631056" style=" color:black; target="_blank">큰지도보기&nbsp&nbsp</a><a href="https://map.kakao.com/link/to/YATA양정지점,35.171802173296115,129.07062980631056" style="color:black; target="_blank">|&nbsp&nbsp길찾기</a></div></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.171802173296115, 129.07062980631056); //인포윈도우 표시 위치입니다
													}
													if(${param.res_place eq '사상지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.16397324604171, 128.98397041262533), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.16397324604171, 128.98397041262533); 
														var iwContent = '<input type="text" readonly="readonly" size=13 id="res_place" value="사상지점" style="padding:5px; text-align: center; border: none;  background: #0d6ffc; color: white; font-weight: bold;"> <br><div align="center"><a href="https://map.kakao.com/link/map/YATA사상지점,35.16397324604171,128.98397041262533" style=" color:black; target="_blank">큰지도보기&nbsp&nbsp</a><a href="https://map.kakao.com/link/to/YATA사상지점,35.16397324604171,128.98397041262533" style="color:black; target="_blank">|&nbsp&nbsp길찾기</a></div></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.16397324604171, 128.98397041262533); //인포윈도우 표시 위치입니다
													}
													if(${param.res_place eq '초량지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.118523949110354, 129.0420473044028), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.118523949110354, 129.0420473044028); 
														var iwContent = '<input type="text" readonly="readonly" size=13 id="res_place" value="초량지점" style="padding:5px; text-align: center; border: none;  background: #0d6ffc; color: white; font-weight: bold;"> <br><div align="center"><a href="https://map.kakao.com/link/map/YATA초량지점,35.118523949110354,129.0420473044028" style=" color:black; target="_blank">큰지도보기&nbsp&nbsp</a><a href="https://map.kakao.com/link/to/YATA초량지점,35.118523949110354,129.0420473044028" style="color:black; target="_blank">|&nbsp&nbsp길찾기</a></div></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.118523949110354, 129.0420473044028); //인포윈도우 표시 위치입니다
													}
													if(${param.res_place eq '대연지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.134730608938014, 129.08991884387186), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.134730608938014, 129.08991884387186); 
														var iwContent = '<input type="text" readonly="readonly" size=13 id="res_place" value="대연지점" style="padding:5px; text-align: center; border: none;  background: #0d6ffc; color: white; font-weight: bold;"> <br><div align="center"><a href="https://map.kakao.com/link/map/YATA대연지점,35.134730608938014,129.08991884387186" style=" color:black; target="_blank">큰지도보기&nbsp&nbsp</a><a href="https://map.kakao.com/link/to/YATA대연지점,35.134730608938014,129.08991884387186" style="color:black; target="_blank">|&nbsp&nbsp길찾기</a></div></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.134730608938014, 129.08991884387186); //인포윈도우 표시 위치입니다
													}
													if(${param.res_place eq '광안지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.1590424787196, 129.11362265230918), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.1590424787196, 129.11362265230918); 
														var iwContent = '<input type="text" readonly="readonly" size=13 id="res_place" value="광안지점" style="padding:5px; text-align: center; border: none;  background: #0d6ffc; color: white; font-weight: bold;"> <br><div align="center"><a href="https://map.kakao.com/link/map/YATA광안지점,35.1590424787196,129.11362265230918" style=" color:black; target="_blank">큰지도보기&nbsp&nbsp</a><a href="https://map.kakao.com/link/to/YATA광안지점,35.1590424787196,129.11362265230918" style="color:black; target="_blank">|&nbsp&nbsp길찾기</a></div></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.1590424787196, 129.11362265230918); //인포윈도우 표시 위치입니다
													}
													if(${param.res_place eq '덕천지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.210357389233025, 129.00728691916393), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.210357389233025, 129.00728691916393); 
														var iwContent = '<input type="text" readonly="readonly" size=13 id="res_place" value="덕천지점" style="padding:5px; text-align: center; border: none;  background: #0d6ffc; color: white; font-weight: bold;"> <br><div align="center"><a href="https://map.kakao.com/link/map/YATA덕천지점,35.210357389233025,129.00728691916393" style=" color:black; target="_blank">큰지도보기&nbsp&nbsp</a><a href="https://map.kakao.com/link/to/YATA덕천지점,35.210357389233025,129.00728691916393" style="color:black; target="_blank">|&nbsp&nbsp길찾기</a></div></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.210357389233025, 129.00728691916393); //인포윈도우 표시 위치입니다
													}
													if(${param.res_place eq '동래지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.19744274515372, 129.08909287871484), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.19744274515372, 129.08909287871484); 
														var iwContent = '<input type="text" readonly="readonly" size=13 id="res_place" value="동래지점" style="padding:5px; text-align: center; border: none;  background: #0d6ffc; color: white; font-weight: bold;"> <br><div align="center"><a href="https://map.kakao.com/link/map/YATA동래지점,35.19744274515372,129.08909287871484" style=" color:black; target="_blank">큰지도보기&nbsp&nbsp</a><a href="https://map.kakao.com/link/to/YATA동래지점,35.19744274515372,129.08909287871484" style="color:black; target="_blank">|&nbsp&nbsp길찾기</a></div></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.19744274515372, 129.08909287871484); //인포윈도우 표시 위치입니다
													}
													if(${param.res_place eq '만덕지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.212365981105116, 129.03808166881382), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.212365981105116, 129.03808166881382); 
														var iwContent = '<input type="text" readonly="readonly" size=13 id="res_place" value="만덕지점" style="padding:5px; text-align: center; border: none;  background: #0d6ffc; color: white; font-weight: bold;"> <br><div align="center"><a href="https://map.kakao.com/link/map/YATA만덕지점,35.212365981105116,129.03808166881382" style=" color:black; target="_blank">큰지도보기&nbsp&nbsp</a><a href="https://map.kakao.com/link/to/YATA만덕지점,35.212365981105116,129.03808166881382" style="color:black; target="_blank">|&nbsp&nbsp길찾기</a></div></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.212365981105116, 129.03808166881382); //인포윈도우 표시 위치입니다
													}
													if(${param.res_place eq '센텀지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.169889225058526, 129.13434891966517), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.169889225058526, 129.13434891966517); 
														var iwContent = '<input type="text" readonly="readonly" size=13 id="res_place" value="센텀지점" style="padding:5px; text-align: center; border: none;  background: #0d6ffc; color: white; font-weight: bold;"> <br><div align="center"><a href="https://map.kakao.com/link/map/YATA센텀지점,35.169889225058526,129.13434891966517" style=" color:black; target="_blank">큰지도보기&nbsp&nbsp</a><a href="https://map.kakao.com/link/to/YATA센텀지점,35.169889225058526,129.13434891966517" style="color:black; target="_blank">|&nbsp&nbsp길찾기</a></div></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.169889225058526, 129.13434891966517); //인포윈도우 표시 위치입니다
													}
													if(${param.res_place eq '사하지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.100484776657254, 128.97944505949522), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.100484776657254, 128.97944505949522); 
														var iwContent = '<input type="text" readonly="readonly" size=13 id="res_place" value="사하지점" style="padding:5px; text-align: center; border: none;  background: #0d6ffc; color: white; font-weight: bold;"> <br><div align="center"><a href="https://map.kakao.com/link/map/YATA사하지점,35.100484776657254,128.97944505949522" style=" color:black; target="_blank">큰지도보기&nbsp&nbsp</a><a href="https://map.kakao.com/link/to/YATA사하지점,35.100484776657254,128.97944505949522" style="color:black; target="_blank">|&nbsp&nbsp길찾기</a></div></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.100484776657254, 128.97944505949522); //인포윈도우 표시 위치입니다
													}
													if(${param.res_place eq '반여지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.1948640243858, 129.13079224144306), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.1948640243858, 129.13079224144306); 
														var iwContent = '<input type="text" readonly="readonly" size=13 id="res_place" value="반여지점" style="padding:5px; text-align: center; border: none;  background: #0d6ffc; color: white; font-weight: bold;"> <br><div align="center"><a href="https://map.kakao.com/link/map/YATA반여지점,35.1948640243858,129.13079224144306" style=" color:black; target="_blank">큰지도보기&nbsp&nbsp</a><a href="https://map.kakao.com/link/to/YATA반여지점,35.1948640243858,129.13079224144306" style="color:black; target="_blank">|&nbsp&nbsp길찾기</a></div></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.1948640243858, 129.13079224144306); //인포윈도우 표시 위치입니다
													}
													if(${param.res_place eq '장전지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
													        center: new kakao.maps.LatLng(35.237234035210896, 129.0890312285848), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.237234035210896, 129.0890312285848); 
														var iwContent = '<input type="text" readonly="readonly" size=13 id="res_place" value="장전지점" style="padding:5px; text-align: center; border: none;  background: #0d6ffc; color: white; font-weight: bold;"> <br><div align="center"><a href="https://map.kakao.com/link/map/YATA장전지점,35.237234035210896,129.0890312285848" style=" color:black; target="_blank">큰지도보기&nbsp&nbsp</a><a href="https://map.kakao.com/link/to/YATA장전지점,35.237234035210896,129.0890312285848" style="color:black; target="_blank">|&nbsp&nbsp길찾기</a></div></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.237234035210896, 129.0890312285848); //인포윈도우 표시 위치입니다
													}
													if(${param.res_place eq '장산지점'}){
														var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
													    mapOption = { 
// 													        center: new kakao.maps.LatLng(35.237234035210896, 129.0890312285848), // 지도의 중심좌표
													        center: new kakao.maps.LatLng(35.16855143919391, 129.1753411620854), // 지도의 중심좌표
													        level: 3 // 지도의 확대 레벨
													    };
													
														// 마커가 표시될 위치입니다 
														var markerPosition  = new kakao.maps.LatLng(35.16855143919391, 129.1753411620854); 
														var iwContent = '<input type="text" readonly="readonly" size=13 id="res_place" value="장산지점" style="padding:5px; text-align: center; border: none;  background: #0d6ffc; color: white; font-weight: bold;"> <br><div align="center"><a href="https://map.kakao.com/link/map/YATA장산지점,35.16855143919391,129.1753411620854" style=" color:black; target="_blank">큰지도보기&nbsp&nbsp</a><a href="https://map.kakao.com/link/to/YATA장산지점,35.16855143919391,129.1753411620854" style="color:black; target="_blank">|&nbsp&nbsp길찾기</a></div></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
													    iwPosition = new kakao.maps.LatLng(35.16855143919391, 129.1753411620854); //인포윈도우 표시 위치입니다
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
													<div class="text-16 font-weight-bold color-grey-3">${param.res_place }의
														한마디</div>
													<div
														class="js-txt-company-introduce text-14 color-grey-4 mt-1 mb-0 wordbreak-breakword">안녕하세요.
														특별한 렌트카와 특별한 부산 여행을 시작해보세요~!</div>

												</div>
											</div>
										</section>
<<<<<<< HEAD
=======
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
<!-- 													<p class="text-14 color-grey-4" id="rpc_txt_summary_info">최근 -->
<!-- 														예약수 11593건 | 누적 예약수 26013건 | 입점일 2019-11-28</p> -->
													<hr>
													<div
														class="dc-flex justify-content-between align-items-center mb-2">
<!-- 														<div> -->
<!-- 															<p class="color-grey-4 text-14 mb-0">차량 관리 상태</p> -->
<!-- 														</div> -->
														<div class="dc-flex align-items-center">
															<div class="progress" style="width: 128px; height: 4px">
																<div class="progress-bar" id="rpc_review_progress_1"
																	style="width: 94%;"></div>
															</div>
<!-- 															<div class="ml-1 text-12 font-weight-bold text-primary" -->
<!-- 																id="rpc_review_1_point">4.7</div> -->
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
>>>>>>> afc33c2d139bce7eda0cd5f975d41b67792ade93
										<section class="carmore-section rpc-only-old-company"
											id="js_rpc_only_old_company">
											<div class="container">
												<h3>고객 리뷰</h3>
												<div class="col-lg-12 container" id="review_item">
													<c:forEach var="listReview" items="${listReview }">
														<div class="bg-white p-3 mb-3 border">
															<div class="dc-flex justify-content-between mb-1">
																<div
																	class="js-btn-review-driver-info click-effect-press">
																	<div class="dc-flex align-items-center">
																		<img class="img-user-profile object-fit center-crop mr-1 dc-none">
																		<img class="js-review-item-user-grade-icon mr-1 dc-none" style="width: 16px;">
																		<span class="color-grey-1 text-16 mr-2" id="review_txt_name" 
																		style="font-size: 1.4rem; font-weight: bold;">${car.car_name } </span>
																	</div>
																	<span class="text-10 color-grey-5" id="review_txt_write_date">
																	<script type="text/javascript">
																		document.write("${listReview.review_updateDate } | "+maskingName("${listReview.member_name }")+" 님");
																		
																	</script>
																	
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
																
																<div class="text-40 font-weight-bold text-primary">
																	<span class="text-40 font-weight-bold text-primary wordbreak-keepall" id="review_txt_evaluation">${listReview.review_star }</span>
																	<span class="color-grey-5 text-10 wordbreak-keepall">/ 5.0</span>
																
																</div>
															</div>
															<div class="dc-flex justify-content-between align-items-centers">
																<div>
																</div>
																<div class="text-right">
																</div>
															</div>
															<hr>
															<p class="color-grey-4 text-18 wordbreak-breakword" id="review_txt_msg">${listReview.review_content }</p>
															<div class="dc-flex justify-content-between align-items-center mb-2">
																<span class="text-10 color-grey-5" id="review_txt_write_date"></span>
																
																<div
																	class="review-btn-good dc-flex align-items-center click-effect-press">
																	<img class="btn-good-icon mr-1"
																		src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMi4xODY3IDE1LjY2NjdIM0MxLjg5NTQzIDE1LjY2NjcgMSAxNC43NzEyIDEgMTMuNjY2N1Y5QzEgNy44OTU0MyAxLjg5NTQzIDcgMyA3SDQuMjMzNDJMNi43MjQxMyAxLjM5NTkxQzYuODMxMTMgMS4xNTUxNiA3LjA2OTg3IDEgNy4zMzMzMyAxQzguODA2MDkgMSAxMCAyLjE5MzkxIDEwIDMuNjY2NjdWNS42NjY2N0wxMy4wOTkxIDUuNjY2NzFDMTMuNjg1OSA1LjY2MDA2IDE0LjI0NTkgNS45MTE0MyAxNC42MzEgNi4zNTQyMkMxNS4wMTYgNi43OTcwMiAxNS4xODcyIDcuMzg2NTYgMTUuMDk5IDcuOTY3NzFMMTQuMTc5MSAxMy45NjY2QzE0LjAyOTYgMTQuOTUyNyAxMy4xNzY0IDE1LjY3NzkgMTIuMTg2NyAxNS42NjY3Wk01LjMzMzM0IDE0LjMzMzRMMTIuMTk0MiAxNC4zMzM0QzEyLjUyNjYgMTQuMzM3MSAxMi44MTEgMTQuMDk1NCAxMi44NjEgMTMuNzY1NkwxMy43ODA5IDcuNzY2NjFDMTMuODEwMiA3LjU3MzIzIDEzLjc1MzIgNy4zNzY3MSAxMy42MjQ4IDcuMjI5MTFDMTMuNDk2NSA3LjA4MTUyIDEzLjMwOTggNi45OTc3MyAxMy4xMDY3IDYuOTk5OTlIOS4zMzMzNEM4Ljk2NTE1IDYuOTk5OTkgOC42NjY2OCA2LjcwMTUxIDguNjY2NjggNi4zMzMzMlYzLjY2NjY1QzguNjY2NjggMy4wNzE2MSA4LjI3Njg4IDIuNTY3NjEgNy43Mzg3MSAyLjM5NjA2TDUuMzMzMzQgNy44MDgxM1YxNC4zMzM0Wk0yLjk2NjY3IDguMzMzMzFINFYxNC4zMzMzSDIuOTY2NjdDMi41OTg0OCAxNC4zMzMzIDIuMyAxNC4wMzQ4IDIuMyAxMy42NjY2VjguOTk5OThDMi4zIDguNjMxNzkgMi41OTg0OCA4LjMzMzMxIDIuOTY2NjcgOC4zMzMzMVoiIGZpbGw9IiNGRjYzNjMiLz4KPC9zdmc+Cg=="><span
																		class="text-12 wordbreak-keepall line-height-1"
																		id="review_txt_good">도움돼요 0</span>
																</div>
															</div>
															
															<!------------------------------------------- 리뷰 답글 ------------------------------------->
<!-- 															<div class="p-3 bg-light dc-none" -->
<!-- 																id="review_company_reply_box"> -->
<!-- 																<span class="color-blue text-12" -->
<!-- 																	id="review_txt_company_reply_name">업체명</span> -->
<!-- 																<p -->
<!-- 																	class="color-grey-3 mb-1 text-14 mt-2 wordbreak-breakword" -->
<!-- 																	id="review_txt_company_reply_msg">언제나 친절한 고고렌트카 -->
<!-- 																	입니다. 알찬 이용후기 남겨주셔서 감사합니다. 언제나 편한 여행이 되도록 노력하는 고고렌트카가 -->
<!-- 																	되겠습니다.</p> -->
<!-- 																<span class="text-10 color-grey-5" -->
<!-- 																	id="review_txt_company_reply_date">2018.09.20</span> -->
<!-- 															</div> -->
															<!----------------------------------------------------------------------------------------->
															</div>
														</c:forEach>
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
											<div class="mb-3 dc-flex align-items-center justify-content-between text-20">
												<span class="color-grey-2 font-weight-bold ">결제 정보</span>
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
															<div class="dc-flex justify-content-between align-items-center color-grey-3 wordbreak-keepall ">
																<span class="js-vcd-txt-rent-price-label text-16">대여요금</span>
																<div class="text-right">
																	<span class="js-vcd-txt-rent-price text-18">
																	<script type="text/javascript">
																		document.write("+ " + ((${car.car_price }/2)*${param.time}).toLocaleString("ko-KR") + " 원");
																	</script>
																	</span>
																</div>
															</div>
														</li>
														<li class="js-vcd-price-poa-hide js-vcd-login list-group-item bg-lg-none px-0 tmobi-dc-none">
															<div class="dc-flex justify-content-between align-items-center color-grey-5 wordbreak-keepall text-16">
																보험요금
																<div class="text-right js-vcd-btn-login dc-flex ">
																	<span class="color-blue-dark-light text-18">
																	<script type="text/javascript">
																		document.write("+ " + (${param.ins}).toLocaleString("ko-KR") + " 원");
																	</script>	
																	</span>
																</div>
															</div>
														</li>
														<li
															class="js-vcd-price-poa-hide list-group-item bg-lg-none px-0 border-none">
															<div
																class="dc-flex justify-content-between align-items-center color-grey-3 wordbreak-keepall font-weight-bold">
																<span class="text-primary text-24">예상 결제액</span>
																<div class="text-right text-primary">
																	<span class="js-vcd-txt-expected-price text-24"> 
																	<script type="text/javascript">
																		document.write(((${car.car_price }/2)*${param.time} + ${param.ins}).toLocaleString("ko-KR") + " 원");
																	</script>
																	</span>
																</div>
															</div>
														</li>
													</ul>
													<button class="js-vcd-btn-go-reservation btn btn-primary btn-block btn-lg btn-border-10 mt-3 click-effect-press">
														<div class="text-18 font-weight-bold text-white line-height-1">
															<span onclick="pay(${car.car_price})" class="js-vcd-welcome-coupon-applied-expected-price js-vcd-txt-expected-price js-vcd-price-button">
																예약하기
															</span>
															<span class="js-vcd-txt-expected-poa-price js-vcd-price-button dc-none" style="display: none;"></span>
														</div>
														<div class="js-vcd-txt-price-desc text-12 text-white">
														</div>
													</button>
													<div class="dc-none" id="js_vcd_read_payment_tooltip">
														<div class="vreserv-container-tooltip-pc d-inline-flex justify-content-between align-items-center px-3 py-2">
															<div class="vreserv-container-tooltip-body">할인쿠폰 적용 중! 놓치지 마세요</div>
															<div class="d-flex align-items-center">
																<img class="m-0 vreserv-container-img-cancel-icon-pc pl-2"
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
										<div class="js-vcd-pay-info dc-none" id="js_vcd_subscribe_pay_info" style="display: none;"></div>
									</div>
									<div class="row js-vcd-soldout-elmt dc-none"
										style="display: none;">
										<div class="col">
											<div class="pb-3 text-16-b">해당 차량은 마감되었어요 T^T</div>
											<button class="btn btn-primary btn-block btn-lg mb-2 btn-border-10 text-14 font-weight-bold" disabled="true">마감된 차량</button>
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
										<div class="vreserv-container-tooltip-polygon">
											<div class="vreserv-container-tooltip-polygon-inner"></div>
										</div>
									</div>
								</div>
								<div class="js-vcd-not-soldout-elmt">
								</div>
								<div class="js-vcd-soldout-elmt dc-none" style="display: none;">
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