<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
												<c:choose>
													<c:when test="${member.member_gender == '1' }">
														<input type="text" class="w-50 form-control" style="margin-bottom: 10px;"
														id="member_gender" value="남" readonly="readonly">
													</c:when>
													<c:otherwise>
														<input type="text" class="w-50 form-control" style="margin-bottom: 10px;"
														id="member_gender" value="여" readonly="readonly">
													</c:otherwise>
												</c:choose>
											</div>
											<br>
											<button class="w-50 btn btn-lg btn-primary"
												style="width: 300px; margin-bottom: 15px" type="submit">수정</button>
											<button class="w-50 btn btn-lg btn-secondary"
												style="width: 300px; margin-bottom: 15px" type="reset">취소</button>
											<button class="w-50 btn btn-lg btn-danger"
												style="width: 300px; margin-bottom: 15px" type="button" onclick="if(confirm('회원 탈퇴 하시겠습니까?')){location.href='deleteMember'} else {alert('취소 되었습니다.')}">회원탈퇴</button>
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