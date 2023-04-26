<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YATA</title>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<script>
function open(){
	$('#modal_select_area').css('display', 'block');
}

function couponClose(){
	$('#modal_select_area').css('display', 'none');
}
</script>
<link rel="stylesheet" href="resources/css/style.css">
<style>
<
style> /* The Modal (background) */ .searchModal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 10; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.search-modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 70%; /* Could be more or less, depending on screen size */
}
</style>
</head>
<body style="">
	<main id="content" role="main">
		<div class="main-contents">
			<jsp:include page="../inc/top.jsp"></jsp:include>
			<div class="pc-mobile-header-container">
				<div class="pc-header space-2 text-center dc-none dc-lg-block">
					<div class="container">
						<h2 class="text-grey-3 underline-bg dc-inline-block">내 정보 관리</h2>
					</div>
				</div>
			</div>
			<div class="container py-5">
				<div id="mypage_section_modify">
					<div class="container">
						<div
							class="row no-gutters slider-text justify-content-start align-items-center justify-content-center">
							<div class="col-lg-8 ftco-animate">
								<div class="text w-100 text-center mb-md-5 pb-md-5">
									<form action="modifyPro" method="post">
										<div>
											<label for="inputEmail" class="visually-hidden">Email</label>
											<div class="d-flex justify-content-center">
												<input type="email" id="member_email"
													class="justify-content-center w-50 form-control"
													id="member_email" value="${member.member_email}"
													style="margin-bottom: 10px;" readonly="readonly">
											</div>
											<label for="inputPassword2" class="visually-hidden">
												새 비밀번호</label>
											<div class="d-flex justify-content-center">
												<input type="password" id="inputPassword2"
													name="member_passwd" id="member_passwd"
													class="w-50 form-control" style="margin-bottom: 10px;"
													placeholder="변경할 비밀번호">
											</div>
											<label for="inputPassword2" class="visually-hidden">
												새 비밀번호 확인</label>
											<div class="d-flex justify-content-center">
												<input type="password" id="inputPassword2"
													name="member_passwd2" id="member_passwd2"
													class="w-50 form-control" style="margin-bottom: 10px;"
													placeholder="변경할 비밀번호 확인">
											</div>
											<label for="name" class="visually-hidden">Name</label>
											<div class="d-flex justify-content-center">
												<input type="text" class="w-50 form-control"
													style="margin-bottom: 10px;" id="member_name"
													placeholder="이름" value="${member.member_name}"
													readonly="readonly">
											</div>
											<label for="birth" class="visually-hidden">생년월일</label>
											<div class="d-flex justify-content-center">
												<input type="text" class="w-50 form-control"
													style="margin-bottom: 10px;" id="member_birth"
													readonly="readonly" value="${member.member_birth}" />
											</div>
											<label class="visually-hidden">운전면허증 등록</label>
											<div class="searchModal d-flex justify-content-center"
												id="#license" rel="modal:open">
												<input type="text" class="w-50 form-control"
													style="margin-bottom: 10px;" placeholder="등록하러 가기" onclick="open()">
											</div>
											<!-- 											<div class="d-flex justify-content-center"> -->
											<!-- 												<div class="searchModal" id="searchModal"> -->
											<!-- 													<label for="name" class="visually-hidden">Name</label> -->
											<!-- 													<input type="text" class="w-50 form-control" -->
											<!-- 														style="margin-bottom: 10px;" id="member_license" -->
											<%-- 														placeholder="성명" value="${member.member_name}" /> --%>
											<!-- 													<label for="birth" class="visually-hidden">생년월일</label> -->
											<!-- 													<input type="text" class="w-50 form-control" -->
											<!-- 														style="margin-bottom: 10px;" id="member_license" -->
											<%-- 														placeholder="생년월일" value="${member.member_birth}" /> --%>
											<!-- 													<label for="licenseNum" class="visually-hidden">운전면허번호</label> -->
											<!-- 													<input type="text" class="w-50 form-control" -->
											<!-- 														style="margin-bottom: 10px;" id="member_license" -->
											<!-- 														placeholder="운전면허번호"/> -->
											<!-- 													<label for="birth" class="visually-hidden">암호일련번호</label> -->
											<!-- 													<input type="text" class="w-50 form-control" -->
											<!-- 														style="margin-bottom: 10px;" id="member_license" -->
											<!-- 														placeholder="암호일련번호"/> -->
											<!-- 												</div> -->
											<!-- 											</div> -->
											<label for="gender" class="visually-hidden">Gender</label>
											<div class="d-flex justify-content-center">
												<input type="text" class="w-50 form-control"
													style="margin-bottom: 10px;" id="member_gender"
													value="${member.member_gender}" readonly="readonly">
											</div>
											<label for="phone" class="visually-hidden">Phone</label>
											<div class="d-flex justify-content-center">
												<input type="text" class="w-50 form-control"
													style="margin-bottom: 10px;" name="member_phone"
													id="member_phone" placeholder="01X-0000-0000"
													value="${member.member_phone}">
											</div>
											<!-- 등록여부 체크박스로 할건지 정해야함 -->
											<!-- 											<label for="license" class="visually-hidden">운전면허증 등록여부</label> -->
											<!-- 											<div class="d-flex justify-content-center"> -->
											<!-- 												<input type="text" class="w-50 form-control" style="margin-bottom: 10px;" -->
											<%-- 													value="${member_license}" readonly="readonly"> --%>
											<!-- 											</div> -->
											<br>

											<button class="w-50 btn btn-lg btn-primary"
												style="width: 300px; margin-bottom: 15px" type="submit">수정</button>
											<button class="w-50 btn btn-lg btn-secondary"
												style="width: 300px; margin-bottom: 15px" type="reset">취소</button>
											<button class="w-50 btn btn-lg btn-danger"
												style="width: 300px; margin-bottom: 15px" type="button"
												onclick="location.href='deleteMember'">회원탈퇴</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="contents-modal" id="eventSelect">
			<div class="modal fade pr-0 show"
				id="modal_select_area" tabindex="-1"
				role="dialog" data-backdrop="true" data-keyboard="true"
				data-pageview="1"
				style="z-index: 1050; display: hidden; padding-right: 17px;"
				aria-modal="true">
				<div
					class="modal-dialog modal-dialog-centered modal-lg modal-dialog-scrollable stretched-modal"
					role="document">
					<div class="modal-content">
						<div class="modal-header">
							<div class="modal-title-wrapper dc-flex align-items-center">
								<h5 class="modal-title line-height-1 text-16 color-grey-3"
									id="modal_common_popup_txt_title"></h5>
								<div class="ml-2" id="js_modal_common_title_sub_button"
									style="display: block;"></div>
							</div>

							<!-- 닫기 버튼 -->
							<button id="modal_close"
								class="js-btn-modal-close btn btn-xs btn-icon btn-soft-secondary right-auto"
								type="button" data-dismiss="modal" aria-label="Close"
								onclick="couponClose()">
								<svg aria-hidden="true" width="16" height="16"
									viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
									<path fill="currentColor"
											d="M11.5,9.5l5-5c0.2-0.2,0.2-0.6-0.1-0.9l-1-1c-0.3-0.3-0.7-0.3-0.9-0.1l-5,5l-5-5C4.3,2.3,3.9,2.4,3.6,2.6l-1,1 C2.4,3.9,2.3,4.3,2.5,4.5l5,5l-5,5c-0.2,0.2-0.2,0.6,0.1,0.9l1,1c0.3,0.3,0.7,0.3,0.9,0.1l5-5l5,5c0.2,0.2,0.6,0.2,0.9-0.1l1-1 c0.3-0.3,0.3-0.7,0.1-0.9L11.5,9.5z">
									</path>
								</svg>
							</button>

						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<jsp:include page="../inc/footer.jsp" />

</body>
</html>