<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>YATA</title>

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
					<div class="col-md-8 pb-6">
						<!-- 회원 정보 수정 -->
						<div id="mypage_section_modify" style="display: none">
							<div class="container">
								<div class="row no-gutters slider-text justify-content-start align-items-center justify-content-center">
									<div class="col-lg-8 ftco-animate">
										<div class="text w-100 text-center mb-md-5 pb-md-5">
											<form action="modifyMember" method="post">
												<div>
													<br>
													<h1 class="h3 mb-3 fw-normal text-dark">내 정보 수정</h1>
													<label for="inputEmail" class="visually-hidden">Email</label>

													<div class="d-flex justify-content-center">
														<input type="email" id="email_id"
															class="justify-content-center w-50 form-control"
															value="${member_email}" readonly="readonly">
													</div>
													<label for="inputPassword" class="visually-hidden">Password</label>
													<div class="d-flex justify-content-center">
														<input type="text" id="inputPassword"
															class="w-50 form-control" placeholder="현재 비밀번호" value="${member_passwd }" required>
													</div>
													<label for="inputPassword2" class="visually-hidden" >Confirm
														Password</label>
													<div class="d-flex justify-content-center">
														<input type="text" id="inputPassword2"
															class="w-50 form-control" placeholder="변경할 비밀번호" value="${member_passwd }">
													</div>
													<label for="name" class="visually-hidden">Name</label>
													<div class="d-flex justify-content-center">
														<input type="text" id="name" class="w-50 form-control"
															placeholder="이름" value="${member_name}" readonly="readonly">
													</div>
													<label for="date" class="visually-hidden">YYYY/MM/DD</label>
													<div class="d-flex justify-content-center">
														<input class="w-50 form-control" type="text"
															name='userBirthday' value="${member_date}" />
													</div>
													<label for="gender" class="visually-hidden">Gender</label>
													<div class="d-flex justify-content-center">
														<input type="text" id="gender" class="w-50 form-control"
															placeholder="성별" value="${member_gender}" readonly="readonly">
													</div>
													<label for="phone" class="visually-hidden">Phone</label>
													<div class="d-flex justify-content-center">
														<input type="text" id="phone" class="w-50 form-control"
															placeholder="01X-0000-0000" value="${member_phone}" required>
													</div>
													<label for="phone" class="visually-hidden">License</label>
													<div class="d-flex justify-content-center">
														<input type="text" id="phone" class="w-50 form-control"
															placeholder="01X-0000-0000" value="${member_license}">
													</div>
													<br>
													
													<button class="w-50 btn btn-lg btn-primary" style="width: 300px;margin-bottom: 15px" type="submit">수정</button>
													<button class="w-50 btn btn-lg btn-primary" style="width: 300px;margin-bottom: 15px " type="reset">취소</button>
													<button class="w-50 btn btn-lg btn-primary" style="width: 300px;margin-bottom: 15px" >회원탈퇴</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<jsp:include page="../inc/footer.jsp" />

</body>
</html>