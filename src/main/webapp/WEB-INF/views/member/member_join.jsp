<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<head>
<meta charset="UTF-8">
</head>
	<%@ include file="../inc/top.jsp" %>

    <!-- END nav -->
    
    <div>
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text justify-content-start align-items-center justify-content-center">
          <div class="col-lg-8 ftco-animate">
          	<div class="text w-100 text-center mb-md-5 pb-md-5">
			    <form action="joinPro" method="post">
			    <div>
			    <br>
			        <h1 class="h3 mb-3 fw-normal text-dark">회원가입</h1>
			        <label for="inputEmail" class="visually-hidden">Email</label>
			        <div class="d-flex justify-content-center">
			        	<input type="email" id="member_email" name="member_email" class="justify-content-center w-50 form-control" placeholder="이메일" required autofocus>
			        	<button class="btn btn-lg btn-primary" type="submit">중복확인</button>
			        </div>
			        <label for="inputPassword" class="visually-hidden ">Password</label>
			        <div class="d-flex justify-content-center">
			        	<input type="password" id="member_passwd" name="member_passwd" class="w-50 form-control" placeholder="비밀번호" required>
			        </div>
			        <label for="inputPassword2" class="visually-hidden">Confirm Password</label>
			        <div class="d-flex justify-content-center">
			        	<input type="password" id="" class="w-50 form-control" placeholder="비밀번호 확인" required>
			        </div>
			        <label for="name" class="visually-hidden">Name</label>
			        <div class="d-flex justify-content-center">
			        	<input type="text" id="member_name" name="member_name" class="w-50 form-control" placeholder="이름" required>
			        </div>
			        <label for="date" class="visually-hidden">YYYY/MM/DD</label>
			        <div class="d-flex justify-content-center">
			        	<input class="w-50 form-control" id="member_birth" name="member_birth" type="date" name='userBirthday'/>
			        </div>
			        <label for="gender" class="visually-hidden">Gender</label>
			        <div class="d-flex justify-content-center" id="member_gender" name="member_gender">
			        	<select class="form-control w-50" id="member_gender" name="member_gender">
						  <option selected >성별</option>
						  <option value="1">남자</option>
						  <option value="2">여자</option>
						</select>
			        </div>
			        <label for="phone" class="visually-hidden">Phone</label>
			        <div class="d-flex justify-content-center">
			        	<input type="text" id="member_phone" name="member_phone" class="w-50 form-control" placeholder="01X-0000-0000" required>
			        </div>
			        <br>
			        <button class="w-50 btn btn-lg btn-primary" style="width: 350px;" type="submit" >가입</button>
			        <br>
			        <br>
	        
			    </div>
			    </form>
            </div>
          </div>
        </div>
      </div>
    </div>
<jsp:include page="../inc/footer.jsp"/>
</body>
</html>