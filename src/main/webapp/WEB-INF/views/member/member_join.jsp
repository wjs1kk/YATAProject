<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/main.css">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<head>
<meta charset="UTF-8">
</head>
<%@ include file="../inc/top.jsp"%>

<!-- END nav -->
<div class="pc-mobile-header-container">
				<div class="pc-header space-2 text-center dc-none dc-lg-block">
					<div class="container">
						<h2 class="text-grey-3 underline-bg dc-inline-block">회원가입</h2>
					</div>
				</div>
			</div>
<div>
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text justify-content-start align-items-center justify-content-center join">
			<div class="col-lg-8 ftco-animate">
				<div class="text w-100 text-center mb-md-5 pb-md-5">
					<form action="joinPro" method="post">
						<div>
							<br>
							<div class="d-flex justify-content-center join">
								<input type="email" id="member_email" name="member_email" class="justify-content-center join w-50 form-control" placeholder="이메일" required="" autofocus="" style="">
								<button class="btn btn-lg btn-primary join" type="submit" style="">중복확인</button>
							</div>

							<div class="d-flex justify-content-center join">
								<input type="password" id="member_passwd" name="member_passwd" class="w-50 form-control" placeholder="비밀번호" required="">
							</div>

							<div class="d-flex justify-content-center join">
								<input type="password" id="" class="w-50 form-control" placeholder="비밀번호 확인" required="">
							</div>

							<div class="d-flex justify-content-center join">
								<input type="text" id="member_name" name="member_name" class="w-50 form-control" placeholder="이름" required="">
							</div>

							

							<div class="d-flex justify-content-center join" id="member_gender" name="member_gender">
								<select class="form-control w-50" id="member_gender" name="member_gender">
									<option selected="">성별</option>
									<option value="1">남자</option>
									<option value="2">여자</option>
								</select>
							</div>

							
							<br>
							<button class="w-50 btn btn-lg btn-primary" style="width: 350px;" type="submit">가입</button>
							<br> <br>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../inc/footer.jsp" />
</body>
</html>