<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YATA</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

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
													<div class="js-mypage-txt-coupon-cnt text-16-b">${userCoupon_count }
														장</div>
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
												onclick="location.href='modifyInfo'"
												style="cursor: pointer;">내 정보 관리</a> <a
												class="js-mypage-btn-left-menu js-btn-go-help-for-mypage py-2 text-decoration-none px-0"
												onclick="location.href='customer_service'"
												style="cursor: pointer;" data-type="faq">자주묻는 질문</a> <a
												class="js-mypage-btn-left-menu js-btn-go-help-for-mypage py-2 text-decoration-none px-0"
												onclick="location.href='mypage?tab=license'"
												style="cursor: pointer;" data-type="faq">운전면허증 등록 </a>
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
					<!-- license -->
					<div class="col-md-8 pb-6">
						<div class="mypage-section" id="mypage_section_rent_license">
							<section class="carmore-section pt-0 mobile-header-container">
								<div class="container">
									<h3 class="d-flex justify-content-center text-secondary">운전면허증
										등록</h3>
									<hr>
									<form action="licensePro" method="post">
										<label for="name"
											class="d-flex justify-content-center visually-hidden">이름</label>
										<div class="d-flex justify-content-center">
											<input type="text" class="w-50 form-control"
												style="margin-bottom: 10px; width: 60% !important;"
												id="member_name" placeholder="이름" value="박경은"
												readonly="readonly">
										</div>
										<label for="name"
											class="d-flex justify-content-center visually-hidden">생년월일</label>
										<div class="d-flex justify-content-center">
											<input type="text" class="w-50 form-control"
												style="margin-bottom: 10px; width: 60% !important;"
												id="member_birth" name="member_birth" placeholder="생년월일">
										</div>
										<label for="licenseNum"
											class="d-flex justify-content-center visually-hidden">운전면허번호</label>
										<div class="d-flex justify-content-center">
											<select class="w-20 form-control" name="city" id="city"
												style="margin-right: 10px; width: 16% !important;">
												<option value="11">서울(11)</option>
												<option value="12">부산(12)</option>
												<option value="13">경기(13)</option>
												<option value="13">경기남부(13)</option>
												<option value="14">강원(14)</option>
												<option value="15">충북(15)</option>
												<option value="16">충남(16)</option>
												<option value="17">전북(17)</option>
												<option value="18">전남(18)</option>
												<option value="19">경북(19)</option>
												<option value="20">경남(20)</option>
												<option value="21">제주(21)</option>
												<option value="22">대구(22)</option>
												<option value="23">인천(23)</option>
												<option value="24">광주(24)</option>
												<option value="25">대전(25)</option>
												<option value="26">울산(26)</option>
												<option value="28">경기북부(28)</option>
												<option value="29">세종(29)</option>
											</select> <input type="text" class="w-20 form-control"
												name="license_num" id="license_num" placeholder="**"
												maxlength="2"
												style="width: 11% !important; margin-right: 10px;">
											<input type="text" class="w-30 form-control"
												style="margin-bottom: 10px; width: 18% !important; margin-right: 10px;"
												name="license_num2" id="license_num2" placeholder="******"
												maxlength="6"> <input type="text"
												class="w-30 form-control"
												style="margin-bottom: 10px; width: 11% !important;"
												name="license_num3" id="license_num3" placeholder="**"
												maxlength="2">
										</div>
										<label for="birth"
											class="d-flex justify-content-center visually-hidden">암호일련번호</label>
										<div class="d-flex justify-content-center">
											<input type="text" class="w-50 form-control"
												name="license_pass" id="license_pass"
												style="width: 60% !important; margin-bottom: 10px;"
												placeholder="암호일련번호" maxlength="6">
										</div>
										<hr>
										<br>
										<div class="d-flex justify-content-center" id="apply"
											data-backdrop="static" data-keyboard="false">
											<button class="justify-content-center btn btn-lg btn-primary"
												type="submit" style="width: 250px; margin-bottom: 15px"
												id="submit">등록</button>
											<button
												class="justify-content-center btn btn-lg btn-secondary"
												style="width: 250px; margin-left: 15px; margin-bottom: 15px"
												type="button">닫기</button>
										</div>
									</form>
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