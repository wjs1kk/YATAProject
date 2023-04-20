<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YATA</title>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body style="">
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
										<div class="dc-flex justify-content-between pb-5">
											<div class="js-mypage-btn-point dc-flex flex-stretch pr-1"
												style="flex-basis: 50%" onclick="location.href='mypage?tab=point'">
												<div
													class="bg-color-grey-7 border-radius-6 text-14 color-grey-3 text-center w-100 py-1 click-effect-press">
													<div class="js-mypage-txt-point text-16-b">${member.member_point}
														P</div>
													포인트
												</div>
											</div>
											<div
												class="js-mypage-btn-coupon dc-flex flex-stretch pl-1 position-relative"
												style="flex-basis: 50%" onclick="location.href='mypage?tab=coupon'">
												<div
													class="bg-color-grey-7 border-radius-6 text-14 color-grey-3 text-center w-100 py-1 click-effect-press">
													<div class="js-mypage-txt-coupon-cnt text-16-b">4 장</div>
													쿠폰
												</div>
												<div class="mypage-talk-coupon dc-none"
													id="js_mypage_talk_coupon" style="display: none;">
													<div
														class="talk-coupon text-white line-height-1 white-space-nowrap">소멸예정
														쿠폰이 있어요!</div>
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
											<a	class="js-mypage-btn-left-menu js-mypage-btn-profile py-2 text-decoration-none px-0" onclick="location.href='modifyInfo'" style="cursor: pointer;">내
												정보 관리
											</a> 
											<a class="js-mypage-btn-left-menu js-btn-go-help-for-mypage py-2 text-decoration-none px-0" onclick="location.href='#'" style="cursor: pointer;"
											data-type="faq">자주묻는 질문
											</a>
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
											<button
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
					<div class="col-md-8 pb-6">
						<div class="mypage-section" id="mypage_section_coupon" style="">
							<section class="carmore-section">
								<div class="container">
									<h3>쿠폰 등록</h3>
									<div class="form-row align-items-center">
										<div class="col">
											<input class="form-control" id="vcdp_input_coupon_regist"
												placeholder="쿠폰코드를 입력해주세요" maxlength="20">
										</div>
										<div class="dc-flex">
											<button class="btn btn-primary border-radius-6"
												id="vcdp_btn_coupon_regist" type="button">등록</button>
										</div>
									</div>
									<div class="dc-none" id="js_vcd_grade_coupon_issue_container"
										style="display: none;">
										<div class="mt-5 text-center">
											<div class="text-14">
												<img class="vertical-sub" id="js_vcd_user_grade_icon"
													style="width: 1rem; height: 1rem;"> <span
													class="font-weight-bold" id="js_vcd_user_nickname"></span>님의
												회원등급은 <span class="font-weight-bold"
													id="js_vcd_user_grade_name"></span>입니다.
											</div>
											<div class="text-14">
												등급 전용 쿠폰이 아직 <span class="font-weight-bold"
													id="js_vcd_user_remain_grade_coupon_cnt"></span><span
													class="font-weight-bold">개</span>나 남았으니 발급받고
											</div>
											<div class="text-14">저렴하게 이용해보세요 :)</div>
										</div>
										<div class="mt-4">
											<button class="btn btn-primary btn-block border-radius-6"
												id="js_vcd_btn_issue_grade_coupon" type="button">쿠폰발급</button>
										</div>
									</div>
								</div>
							</section>
							<section class="carmore-section">
								<div class="container">
									<h3 class="color-grey-5 text-16">쿠폰 목록</h3>
									<div class="text-14 color-grey-4 py-3">
										보유쿠폰&nbsp;<span class="font-weight-bold"
											id="js_vdcp_coupon_cnt">4</span>장
									</div>
									<div id="vcdp_container_coupon_list">
										<div
											class="coupon-item-container cm-rounded px-4 py-3 click-effect-press vcdp-coupon-list-item"
											data="8935808">
											<div
												class="dc-flex justify-content-between align-items-start">
												<div class="pb-2">
													<span
														class="badge badge-primary text-white font-weight-bold"
														id="cbc_grade"></span>
													<div class="pr-2">
														<div
															class="cbc-txt-coupon-title text-12 font-weight-bold color-grey-3 dc-inline">신규가입
															월구독 15,000원 할인쿠폰</div>
														<div
															class="js-cbc-txt-coupon-dday ml-1 text-12 font-weight-bold color-red dc-inline">D-70</div>
													</div>
												</div>
												<button
													class="btn btn-sm btn-grey-7 my-1 js-cbc-btn-coupon-condition js-show-cbc-btn-coupon-condition">조건보기</button>
											</div>
											<div class="dc-flex align-items-baseline">
												<div
													class="cbc-txt-coupon-price text-32 font-weight-bold color-grey-2">15,000</div>
												<div
													class="cbc-txt-coupon-unit text-16 font-weight-bold color-grey-2 ml-1">원</div>
											</div>
											<div
												class="cbc-txt-coupon-rent-condition text-10 color-grey-5">350,000원
												이상 렌트 시</div>
											<div
												class="cbc-txt-coupon-expiration-date text-10 color-grey-5">~2023.06.26까지
												사용</div>
											<div class="cbc-btn-direct-reservation dc-none"
												style="display: none;">
												<hr>
												<div
													class="dc-flex justify-content-center align-items-center">
													<div
														class="ml-1 text-16 font-weight-bold js-direct-reservation-btnv js-move-direct-reservation">바로
														사용하기</div>
													<img class="m-0"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE3IDE2Ij4KICAgIDxwYXRoIHN0cm9rZT0iIzBENkZGQyIgc3Ryb2tlLXdpZHRoPSIyIiBkPSJNOS41IDNsNSA1LTUgNU0xLjUgOGgxMyIvPgo8L3N2Zz4K">
												</div>
											</div>
										</div>
										<div
											class="coupon-item-container cm-rounded px-4 py-3 click-effect-press vcdp-coupon-list-item"
											data="8935807">
											<div
												class="dc-flex justify-content-between align-items-start">
												<div class="pb-2">
													<span
														class="badge badge-primary text-white font-weight-bold"
														id="cbc_grade"></span>
													<div class="pr-2">
														<div
															class="cbc-txt-coupon-title text-12 font-weight-bold color-grey-3 dc-inline">신규가입
															월구독 20,000원 할인쿠폰</div>
														<div
															class="js-cbc-txt-coupon-dday ml-1 text-12 font-weight-bold color-red dc-inline">D-70</div>
													</div>
												</div>
												<button
													class="btn btn-sm btn-grey-7 my-1 js-cbc-btn-coupon-condition js-show-cbc-btn-coupon-condition">조건보기</button>
											</div>
											<div class="dc-flex align-items-baseline">
												<div
													class="cbc-txt-coupon-price text-32 font-weight-bold color-grey-2">20,000</div>
												<div
													class="cbc-txt-coupon-unit text-16 font-weight-bold color-grey-2 ml-1">원</div>
											</div>
											<div
												class="cbc-txt-coupon-rent-condition text-10 color-grey-5">350,000원
												이상 렌트 시</div>
											<div
												class="cbc-txt-coupon-expiration-date text-10 color-grey-5">~2023.06.26까지
												사용</div>
											<div class="cbc-btn-direct-reservation dc-none"
												style="display: none;">
												<hr>
												<div
													class="dc-flex justify-content-center align-items-center">
													<div
														class="ml-1 text-16 font-weight-bold js-direct-reservation-btnv js-move-direct-reservation">바로
														사용하기</div>
													<img class="m-0"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE3IDE2Ij4KICAgIDxwYXRoIHN0cm9rZT0iIzBENkZGQyIgc3Ryb2tlLXdpZHRoPSIyIiBkPSJNOS41IDNsNSA1LTUgNU0xLjUgOGgxMyIvPgo8L3N2Zz4K">
												</div>
											</div>
										</div>
										<div
											class="coupon-item-container cm-rounded px-4 py-3 click-effect-press vcdp-coupon-list-item"
											data="8935806">
											<div
												class="dc-flex justify-content-between align-items-start">
												<div class="pb-2">
													<span
														class="badge badge-primary text-white font-weight-bold"
														id="cbc_grade"></span>
													<div class="pr-2">
														<div
															class="cbc-txt-coupon-title text-12 font-weight-bold color-grey-3 dc-inline">신규가입
															해외 10,000원 할인쿠폰</div>
														<div
															class="js-cbc-txt-coupon-dday ml-1 text-12 font-weight-bold color-red dc-inline">D-70</div>
													</div>
												</div>
												<button
													class="btn btn-sm btn-grey-7 my-1 js-cbc-btn-coupon-condition js-show-cbc-btn-coupon-condition">조건보기</button>
											</div>
											<div class="dc-flex align-items-baseline">
												<div
													class="cbc-txt-coupon-price text-32 font-weight-bold color-grey-2">10,000</div>
												<div
													class="cbc-txt-coupon-unit text-16 font-weight-bold color-grey-2 ml-1">원</div>
											</div>
											<div
												class="cbc-txt-coupon-rent-condition text-10 color-grey-5 dc-none"></div>
											<div
												class="cbc-txt-coupon-expiration-date text-10 color-grey-5">~2023.06.26까지
												사용</div>
											<div class="cbc-btn-direct-reservation dc-none"
												style="display: none;">
												<hr>
												<div
													class="dc-flex justify-content-center align-items-center">
													<div
														class="ml-1 text-16 font-weight-bold js-direct-reservation-btnv js-move-direct-reservation">바로
														사용하기</div>
													<img class="m-0"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE3IDE2Ij4KICAgIDxwYXRoIHN0cm9rZT0iIzBENkZGQyIgc3Ryb2tlLXdpZHRoPSIyIiBkPSJNOS41IDNsNSA1LTUgNU0xLjUgOGgxMyIvPgo8L3N2Zz4K">
												</div>
											</div>
										</div>
										<div
											class="coupon-item-container cm-rounded px-4 py-3 click-effect-press vcdp-coupon-list-item"
											data="8935805">
											<div
												class="dc-flex justify-content-between align-items-start">
												<div class="pb-2">
													<span
														class="badge badge-primary text-white font-weight-bold"
														id="cbc_grade"></span>
													<div class="pr-2">
														<div
															class="cbc-txt-coupon-title text-12 font-weight-bold color-grey-3 dc-inline">신규가입
															국내 5,000원 할인쿠폰</div>
														<div
															class="js-cbc-txt-coupon-dday ml-1 text-12 font-weight-bold color-red dc-inline">D-70</div>
													</div>
												</div>
												<button
													class="btn btn-sm btn-grey-7 my-1 js-cbc-btn-coupon-condition js-show-cbc-btn-coupon-condition">조건보기</button>
											</div>
											<div class="dc-flex align-items-baseline">
												<div
													class="cbc-txt-coupon-price text-32 font-weight-bold color-grey-2">5,000</div>
												<div
													class="cbc-txt-coupon-unit text-16 font-weight-bold color-grey-2 ml-1">원</div>
											</div>
											<div
												class="cbc-txt-coupon-rent-condition text-10 color-grey-5 dc-none"></div>
											<div
												class="cbc-txt-coupon-expiration-date text-10 color-grey-5">~2023.06.26까지
												사용</div>
											<div class="cbc-btn-direct-reservation dc-none"
												style="display: none;">
												<hr>
												<div
													class="dc-flex justify-content-center align-items-center">
													<div
														class="ml-1 text-16 font-weight-bold js-direct-reservation-btnv js-move-direct-reservation">바로
														사용하기</div>
													<img class="m-0"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE3IDE2Ij4KICAgIDxwYXRoIHN0cm9rZT0iIzBENkZGQyIgc3Ryb2tlLXdpZHRoPSIyIiBkPSJNOS41IDNsNSA1LTUgNU0xLjUgOGgxMyIvPgo8L3N2Zz4K">
												</div>
											</div>
										</div>
									</div>
									<div class="dc-none"
										id="vcdp_container_unserviceability_coupon_group"
										style="display: none;">
										<h3 class="color-grey-5 text-16 pt-4">사용불가 쿠폰</h3>
										<div id="vcdp_container_unserviceability_coupon_list"></div>
									</div>
									<div
										class="cm-rounded p-3 bg-shadow bg-white mb-2 cm-list-item click-effect-press dc-none"
										id="vcdp_item_select_none_coupon">
										<div class="cm-list-item-container">
											<p class="text-15 color-grey-3 mb-0">쿠폰 선택안함</p>
										</div>
									</div>
									<div
										class="coupon-item-container cm-rounded dc-none px-4 py-3 click-effect-press"
										id="cbc_item_coupon">
										<div class="dc-flex justify-content-between align-items-start">
											<div class="pb-2">
												<span
													class="badge badge-primary text-white font-weight-bold"
													id="cbc_grade"></span>
												<div class="pr-2">
													<div
														class="cbc-txt-coupon-title text-12 font-weight-bold color-grey-3 dc-inline"></div>
													<div
														class="js-cbc-txt-coupon-dday ml-1 text-12 font-weight-bold color-red dc-inline"></div>
												</div>
											</div>
											<button
												class="btn btn-sm btn-grey-7 my-1 js-cbc-btn-coupon-condition">조건보기</button>
										</div>
										<div class="dc-flex align-items-baseline">
											<div
												class="cbc-txt-coupon-price text-32 font-weight-bold color-grey-2"></div>
											<div
												class="cbc-txt-coupon-unit text-16 font-weight-bold color-grey-2 ml-1"></div>
										</div>
										<div
											class="cbc-txt-coupon-rent-condition text-10 color-grey-5 dc-none"></div>
										<div
											class="cbc-txt-coupon-expiration-date text-10 color-grey-5"></div>
										<div class="cbc-btn-direct-reservation dc-none">
											<hr>
											<div
												class="dc-flex justify-content-center align-items-center">
												<div
													class="ml-1 text-16 font-weight-bold js-direct-reservation-btnv">바로
													사용하기</div>
												<img class="m-0"
													src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNyIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE3IDE2Ij4KICAgIDxwYXRoIHN0cm9rZT0iIzBENkZGQyIgc3Ryb2tlLXdpZHRoPSIyIiBkPSJNOS41IDNsNSA1LTUgNU0xLjUgOGgxMyIvPgo8L3N2Zz4K">
											</div>
										</div>
									</div>
									<p
										class="text-14 color-grey-5 my-3 text-center space-2a dc-none"
										id="vcdp_item_coupon_empty">사용할 수 있는 쿠폰이 없습니다.</p>
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