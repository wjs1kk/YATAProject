<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>YATA</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<link rel="stylesheet" href="resources/css/style.css">
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
								
									<!-- 2023-04-29 김동욱 생년월일, 전화번호 삭제 -->
									<form action="modifyPro" method="post">
										<div>
											<label for="inputEmail" class="visually-hidden">Email</label>
											<div class="d-flex justify-content-center">
												<input type="email" id="member_email"
													class="justify-content-center w-50 form-control"
													id="member_email" value="${member.member_email}" style="margin-bottom: 10px;" readonly="readonly">
											</div>
											<label for="inputPassword2" class="visually-hidden">
												새 비밀번호</label>
											<div class="d-flex justify-content-center">
												<input type="password" id="inputPassword2"
													name="member_passwd" id="member_passwd" class="w-50 form-control" style="margin-bottom: 10px;" placeholder="변경할 비밀번호" >
											</div>
											<label for="inputPassword2" class="visually-hidden">
												새 비밀번호 확인</label>
											<div class="d-flex justify-content-center">
												<input type="password" id="inputPassword2"
													name="member_passwd2" id="member_passwd2" class="w-50 form-control" style="margin-bottom: 10px;" placeholder="변경할 비밀번호 확인">
											</div>
											<label for="name" class="visually-hidden">Name</label>
											<div class="d-flex justify-content-center">
												<input type="text" class="w-50 form-control" style="margin-bottom: 10px;"
													id="member_name" placeholder="이름" value="${member.member_name}" readonly="readonly">
											</div>
											<label for="gender" class="visually-hidden">Gender</label>
											<div class="d-flex justify-content-center">
												<input type="text" class="w-50 form-control" style="margin-bottom: 10px;"
													id="member_gender" value="${member.member_gender}" readonly="readonly">
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
												style="width: 300px; margin-bottom: 15px" type="button" onclick="location.href='deleteMember'">회원탈퇴</button>
										</div>
									</form>
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