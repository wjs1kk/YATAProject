<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>

<script type="text/javascript">
	$(function() {
			if(${member.member_gender eq '1' }){
				$('#member_gender').val('1')
			}else {
				$('#member_gender').val('2')
			}
</script>
</head>
<body>
	<%@ include file="../inc/top.jsp" %>

    <!-- END nav -->
    
	<div>
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text justify-content-start align-items-center justify-content-center">
				<div class="col-lg-8 ftco-animate">
					<div class="text w-100 text-center mb-md-5 pb-md-5">
					
					<!-- 2023-04-29 김동욱 전화번호, 생년월일 삭제 -->
						<form action="AdminMemberModifyPro.ad" method="post">
							<div>
								<br>	
								<h1 class="h3 mb-3 fw-normal text-dark">회원정보 수정</h1>
								<label for="inputEmail" class="visually-hidden">Email</label>
								<div class="d-flex justify-content-center">
									<input type="email" id="member_email" value="${member.member_email }" name="member_email" class="justify-content-center w-50 form-control" readonly="readonly" placeholder="이메일" required autofocus>
								</div>
								<label for="name" class="visually-hidden">Name</label>
								<div class="d-flex justify-content-center">
									<input type="text" id="member_name" value="${member.member_name }" class="w-50 form-control" readonly="readonly">
								</div>
								<label for="gender" class="visually-hidden">Gender</label>
								<div class="d-flex justify-content-center" id="member_gender">
									<select class="form-control w-50" id="member_gender" name="member_gender">
										<option selected">
											<c:choose>
												<c:when test="${member.member_gender eq '1' }">
													남자
												</c:when>
												<c:otherwise>
													여자
												</c:otherwise>
											</c:choose>
										</option>
									</select>
								</div>
								<label for="phone" class="visually-hidden">Phone</label>
								<label for="point" class="visually-hidden">Point</label>
								<div class="d-flex justify-content-center">
									<input type="text" id="member_point" value="${member.member_point }" name="member_point" class="w-50 form-control" required>
								</div>
								<label for="license" class="visually-hidden">license</label>
								<div class="d-flex justify-content-center">
									<input type="text" id="member_license" value="${member.member_license }" name="member_license" class="w-50 form-control">
								</div>
								<label for="isAdmin" class="visually-hidden">isAdmin</label>
								<div class="d-flex justify-content-center">
									<input type="text" id="member_isAdmin" value="${member.member_isadmin }" name="member_isadmin" class="w-50 form-control">
								</div>
								<br>
								<button class="w-50 btn btn-lg btn-primary" style="width: 350px;" type="submit" >수정</button>
								<br>
								<br>
							   
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../inc/footer.jsp" %>
</body>
</html>