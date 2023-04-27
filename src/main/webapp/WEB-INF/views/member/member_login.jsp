<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<head>
<script type="text/javascript">
	window.onpopstate = function(event) {
	
		if (sessionStorage.getItem("member_email") == null) {
			window.location = "login";
		}
	 
	}
</script>
<meta charset="UTF-8">
</head>
<body style="">
	<main id="content" role="main">
		<div class="main-contents">
			<jsp:include page="../inc/top.jsp"></jsp:include>
			<div class="pc-mobile-header-container">
				<div class="pc-header space-2 text-center dc-none dc-lg-block">
					<div class="container">
						<h2 class="text-grey-3 underline-bg dc-inline-block">로그인</h2>
					</div>
				</div>
			</div>
			<form action="loginPro" method="post">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text justify-content-start align-items-center justify-content-center">
          <div class="col-lg-8 ftco-animate">
          	<div class="text w-100 text-center mb-md-5 pb-md-5">	    
			    <div >
			        <div class="d-flex justify-content-center">
			        	<input type="email" id="member_email" name="member_email" class="justify-content-center w-50 form-control" placeholder="이메일"
			        	 style="margin-top: 25px;" required autofocus>
			        </div>
			        <div class="d-flex justify-content-center">
			        	<input type="password" id="member_passwd" name="member_passwd" class="w-50 form-control" placeholder="비밀번호" 
			        	style="margin-top: 25px;" required>
			        </div>
			        <br>
			        <button class="w-50 btn btn-lg btn-primary" style="width: 350px;" type="submit" >로그인</button>
			        
			        
			        <br>
			        <br>
			        <input type="hidden" name="kakaoemail" id="kakaoemail"/>
			        <a href="https://kauth.kakao.com/oauth/authorize?client_id=ead29902d723c95d189caf903db985d7&response_type=code&redirect_uri=http://localhost:8080/yata/kakao">
			        <img src="${pageContext.request.contextPath }/resources/images/kakao_login.png">
			        </a>		        
			    </div>
			  
            </div>
          </div>
        </div>
      </div>
   
    </form>
		</div>
	</main>
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>