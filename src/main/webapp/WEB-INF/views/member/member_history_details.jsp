<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YATA</title>

<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
	<main id="content" role="main">
		<div class="main-contents">
			<jsp:include page="../inc/top.jsp"></jsp:include>

			<div class="pc-mobile-header-container">
				<div class="pc-header space-2 text-center dc-none dc-lg-block">
					<div class="container">
						<h2 class="text-grey-3 underline-bg dc-inline-block">마이페이지</h2>
						<p class="text-grey-5 mb-0">내 정보</p>
					</div>
				</div>
			</div>
			<div class="container py-5">
				<div class="row">
					<div class="col-md-4 text-left dc-block pb-10">
						<div class="sticky-md sticky-pc-menu-top">
							<section
								class="carmore-section p-0 bg-white cm-rounded bg-shadow mb-3">
								<div class="container">
									<div class="pt-4 position-relative" id="js_mypage_top_info">
										<div
											class="dc-flex justify-content-between align-items-center pb-3 pt-lg-0 pt-2">
											<div class="dc-flex align-items-start pr-2">
												<div class="mr-2" id="js_mypage_user_profile">
													<img
														class="img-user-profile object-fit center-crop dc-none">
												</div>
												<div>
													<div class="is-only-member pr-2">
														<div class="text-20">
															<span class="js-mypage-txt-nickname wordbreak-breakword">${member.member_name}</span>님
														</div>
														<div
															class="js-mypage-txt-user-id color-grey-5 text-12 mb-0 wordbreak-breakall">${member.member_email}</div>
													</div>
												</div>
											</div>
										</div>

										<div
											class="dc-flex justify-content-between px-2 mb-4 is-only-member">
											<div
												class="js-mypage-btn-rent-history dc-flex flex-column flex-grow-1 text-center click-effect-press"
												onclick="location.href='mypage?tab=history'">
												<img
													src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjYiIGhlaWdodD0iMjYiIHZpZXdCb3g9IjAgMCAyNiAyNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGNsaXAtcGF0aD0idXJsKCMxb2IzMno2c2RhKSI+CiAgICAgICAgPHBhdGggZD0iTTMgNy4yNTZhMiAyIDAgMCAxIDItMmgxNmEyIDIgMCAwIDEgMiAydjE1Ljc0M2EyIDIgMCAwIDEtMiAySDVhMiAyIDAgMCAxLTItMlY3LjI1NnoiIGZpbGw9IiNDN0UwRkYiLz4KICAgICAgICA8cGF0aCBkPSJNOC4yMDMgMTAuODZoOS41OTVNOC4yMDMgMTUuMTI3aDkuNTk1TTguMjAzIDE5LjM5NWg2LjM5NiIgc3Ryb2tlPSIjRTZFRkZDIiBzdHJva2Utd2lkdGg9IjEuNCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+CiAgICAgICAgPHBhdGggZD0iTTExLjI2OCAzLjAwNWMuNzY5LTEuMzM1IDIuNjk1LTEuMzM1IDMuNDY1IDBsMS4yOTggMi4yNTJIOS45N2wxLjI5OS0yLjI1MnoiIGZpbGw9IiM5NkM2RkYiLz4KICAgIDwvZz4KICAgIDxkZWZzPgogICAgICAgIDxjbGlwUGF0aCBpZD0iMW9iMzJ6NnNkYSI+CiAgICAgICAgICAgIDxwYXRoIGZpbGw9IiNmZmYiIGQ9Ik0wIDBoMjZ2MjZIMHoiLz4KICAgICAgICA8L2NsaXBQYXRoPgogICAgPC9kZWZzPgo8L3N2Zz4K"
													height="26px"> <span class="color-grey-3 text-14">예약내역</span>
											</div>
											<div
												class="js-mypage-btn-myreview dc-flex flex-column flex-grow-1 text-center click-effect-press"
												onclick="location.href='mypage?tab=review'">
												<img
													src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjciIGhlaWdodD0iMjYiIHZpZXdCb3g9IjAgMCAyNyAyNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGNsaXAtcGF0aD0idXJsKCN4anBrYjR1NTlhKSI+CiAgICAgICAgPHJlY3QgeD0iMi4zMzMiIHk9IjQuNTEiIHdpZHRoPSIxOS4wMTIiIGhlaWdodD0iMTkuNDkiIHJ4PSIyIiBmaWxsPSIjQzdFMEZGIi8+CiAgICAgICAgPHBhdGggZD0iTTE5Ljc3MyA2LjgzM2MtLjk3NS0uOTU4LTEuMDU3LTIuNTA2LS4xODMtMy40NGwxLjU5Ni0xLjcwNWMuODczLS45MzQgMi4zODUtLjkxNCAzLjM2LjA0My45NzQuOTU4IDEuMDU2IDIuNTA2LjE4MiAzLjQ0bC0xLjU5NiAxLjcwNmMtLjg3My45MzMtMi4zODUuOTE0LTMuMzYtLjA0NHoiIGZpbGw9IiM5NkM2RkYiLz4KICAgICAgICA8cGF0aCBkPSJtMTAuNDM4IDEzLjEyMS0yLjI0OCA1LjU4Yy0uMTMxLjMyNS4xODMuNjM2LjQ5Ni40ODhsNS4zNDgtMi41MzUtMy41OTctMy41MzZ2LjAwM3oiIGZpbGw9IiNGQkZDRkYiLz4KICAgICAgICA8cGF0aCBkPSJtOC42NDYgMTcuNTcyIDEuMTI1IDEuMTA1LTEuMjE1LjU3N2MtLjI2My4xMjUtLjUyOS0uMTM3LS40MTgtLjQxMWwuNTExLTEuMjY4LS4wMDMtLjAwM3oiIGZpbGw9IiM5NkM2RkYiLz4KICAgICAgICA8cGF0aCBkPSJtMjEuODY0IDMuMzY0LTEuMTk4LTEuMTc4LTEwLjIyOCAxMC45MzUgMS4xOTcgMS4xNzZMMjEuODY0IDMuMzY0eiIgZmlsbD0iI0I5RDVGRiIvPgogICAgICAgIDxwYXRoIGQ9Ik0yMy4wNjQgNC41MzkgMjEuODY3IDMuMzZsLTEwLjIzIDEwLjkzNCAxLjE5OCAxLjE3OCA1LjExNC01LjQ2NyA1LjExNS01LjQ2N3pNMjQuMjYgNS43MmwtMS4xOTctMS4xNzgtNS4xMTUgNS40NjctNS4xMTQgNS40NjcgMS4xOTcgMS4xNzdMMjQuMjYxIDUuNzJ6IiBmaWxsPSIjOUFDMkZGIi8+CiAgICA8L2c+CiAgICA8ZGVmcz4KICAgICAgICA8Y2xpcFBhdGggaWQ9InhqcGtiNHU1OWEiPgogICAgICAgICAgICA8cGF0aCBmaWxsPSIjZmZmIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSguMzMzKSIgZD0iTTAgMGgyNnYyNkgweiIvPgogICAgICAgIDwvY2xpcFBhdGg+CiAgICA8L2RlZnM+Cjwvc3ZnPgo="
													height="26px"><span class="color-grey-3 text-14">나의리뷰</span>
											</div>
										</div>
										<div class="dc-flex justify-content-between pb-5" id="">
											<div class="js-mypage-btn-point dc-flex flex-stretch pr-1"
												style="flex-basis: 50%"
												onclick="location.href='mypage?tab=point'">
												<div
													class="bg-color-grey-7 border-radius-6 text-14 color-grey-3 text-center w-100 py-1 click-effect-press">
													<div class="js-mypage-txt-point text-16-b">${member.member_point}
														P</div>
													포인트
												</div>
											</div>
											<div
												class="js-mypage-btn-coupon dc-flex flex-stretch pl-1 position-relative"
												style="flex-basis: 50%"
												onclick="location.href='mypage?tab=coupon'">
												<div
													class="bg-color-grey-7 border-radius-6 text-14 color-grey-3 text-center w-100 py-1 click-effect-press">
													<div class="js-mypage-txt-coupon-cnt text-16-b">${userCoupon_count } 장</div>
													쿠폰
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
							<div id="js_mypage_left_menu">
								<div class="text-left pt-5">
									<div>
										<h3 class="color-grey-3 text-14 list-border-bottom">메뉴</h3>
										<div class="list-group list-group-flush">
											<a
												class="js-mypage-btn-left-menu js-mypage-btn-profile py-2 text-decoration-none px-0"
												onclick="location.href='#'" style="cursor: pointer;">
												내정보 관리 </a> <a href='customer_service'
												class="js-mypage-btn-left-menu js-btn-go-help-for-mypage py-2 text-decoration-none px-0"
												data-type="faq"> 자주묻는 질문 </a>
										</div>
									</div>
								</div>

							</div>
							<div class="text-left pt-5">
								<div>
									<h3 class="color-grey-3 text-14 list-border-bottom">고객센터</h3>
									<div
										class="dc-flex justify-content-between align-items-center mt-3">
										<div class="text-14">
											<div class="font-weight-bold color-grey-2">1:1 문의</div>
										</div>
										<div class="center-align-container">
											<button onclick="location.href='write.mf'"
												class="js-btn-channel-talk btn btn-outline-dark btn-sm">문의하기</button>
										</div>
									</div>

									<div class="text-14 color-grey-5 mt-5">
										매일(공휴일 포함) 오전 9시 ~ 오후 6시<br>점심시간 오후 12시30분 ~ 1시30분 (1시간)
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- history -->
					<div class="col-md-8 pb-6">
						<div class="mypage-section" id="mypage_section_rent_history">
							<section class="carmore-section pt-0 mobile-header-container">
								<div class="container">
									<h3 class="mt-0 pt-3">예약 내역</h3>
									<br>
									<table class="search_list_tbl for_web">
										<colgroup>
											<col style="width: 16.666%;">
											<col style="width: 16.666%;">
											<col style="width: 16.666%;">
											<col style="width: 25.666%;">
											<col style="width: 16.666%;">
											<col style="width: 16.666%;">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">예약번호</th>
												<th scope="col">대여기간</th>
												<th scope="col">대여지점</th>
												<th scope="col">차량명</th>
												<th scope="col">결제금액</th>
												<th scope="col">주문상태</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>${reserve.res_id}</td>
												<td>${reserve.res_startDate}
													<div style="text-align: center;">~</div>
													${reserve.res_endDate}
												</td>
												<td>${reserve.res_place}</td>
												<td>
													<div class="link_wrap ">
															${reserve.car_name}</a>
													</div>
												</td>
												<td>${reserve.res_totalPrice }원</td>
												<td class="clip ">
												<input class="btn-danger"
												type="button" value="예약취소"
												onclick="location.href='deleteReserve?res_id=${reserve.res_id}'">
												</td>
											</tr>
										</tbody>
									</table>
									
										<section class="n-section-block block-discount">
											<header class="n-table-title">
												<h4>할인 정보</h4>
											</header>
											<table class="n-table table-row">
												<colgroup>
													<col style="width: 190px">
													<col style="width: *">
												</colgroup>
												<tbody>
													<tr>
														<th scope="row">상품 할인</th>
														<td class="txt-info">-10,000원</td>
													</tr>
													<tr>
														<th scope="row">쿠폰 할인</th>
														<td class="txt-info">-5,850원</td>
													</tr>
													<tr>
														<th scope="row">포인트 사용</th>
														<td class="txt-info">-0원</td>
													</tr>
													<tr>
														<th scope="row"><strong>할인 합계</strong></th>
														<td class="txt-info"><strong>-<span
																id="total_dc_amt">15,850</span>원
														</strong>
													
													</tr>
												</tbody>
											</table>
										</section>
									<!-- //할인 정보 -->
									<section class="n-section-block">
										<header class="n-table-title bw">
											<h4>최종 결제 정보</h4>
										</header>
										<table class="n-table table-row">
											<colgroup>
												<col style="width: 190px">
												<col style="width: *">
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">상품 합계</th>
													<td><span id="total_pay_amt">49,000</span>원</td>
												</tr>
												<tr>
													<th scope="row">할인 합계</th>
													<td class="txt-info">-17,605원</td>
												</tr>
												<tr>
													<th scope="row">결제 수수료</th>
													<td>0원</td>
												</tr>
												<tr>
													<th scope="row">최종 결제 금액</th>
													<td><strong class="total">31,395원</strong></td>
												</tr>
											</tbody>
										</table>
									</section>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>