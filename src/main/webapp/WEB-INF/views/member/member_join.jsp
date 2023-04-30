<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<head>
<script type="text/javascript">
	
	
	// 2023-04-27 김동욱 - 회원가입 정규표현식
	$(function() {
		
		// 이메일 규칙
		// 2023-04-27 김동욱 - 이메일 중복 체크
		// 2023-04-28 김동욱 - 전화번호, 생년월일 삭제
		$("#emailCheck").on("click", function() {
			if(emailReg.exec($("#member_email").val())){
				$.ajax({
					type: "POST",
					url: "MemberEmailCheck",
					data: {
						"member_email": $("#member_email").val()
						},
					success: function(res) {
						if(res == "true"){
							alert("사용 가능한 이메일 입니다!")
							$("#emailCheckValue").val("1");
						}else{
							alert("이미 사용중인 이메일 입니다!")
							$("#emailCheckValue").val("0");
						};
					}
				})
			}else{
				alert("이메일 형식을 확인해주세요!")
			}
		})
		
		// 이메일 규칙
		let emailReg = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
		$("#member_email").on("change", function() {
			if(!emailReg.exec($("#member_email").val())){
				$("#emailResult").html("이메일 형식을 확인해주세요!<br>ex) YATA@naver.com").css("color", "red");
			}else{
				$("#emailResult").html("사용 가능한 이메일 형식 입니다!").css("color", "blue");
			}
		})
		
		//비밀번호 규칙 (숫자, 영어 대소문자, 특수문자 (!, @, #, $, %) 4~16자리 사용 가능)
		let passwdReg = /^[a-zA-Z0-9!@#$%]{8,16}$/
		$("#member_passwd1").on("change", function() {
			if(!passwdReg.exec($("#member_passwd1").val())){
				$("#passwd1Result").html("비밀번호 형식을 확인해주세요.<br> 영어, 숫자, 특수문자 (!, @, #, $, %) 8~16자리를 입력 가능").css("color", "red");
			}else{
				$("#passwd1Result").html("사용 가능한 비밀번호 형식 입니다!").css("color", "blue");
			}
		})
		
		// 비밀번호가 일치하는 지 확인
		$("#member_passwd2").on("change", function() {
			if(!passwdReg.exec($("#member_passwd2").val())){
				$("#passwd2Result").html("비밀번호 형식을 확인해주세요.<br> 영어, 숫자, 특수문자 (!, @, #, $, %) 8~16자리를 입력 가능").css("color", "red");
			}else{
				if($("#member_passwd1").val() != $("#member_passwd2").val()){
					$("#passwd2Result").html("비밀번호가 일치하지 않습니다!").css("color", "red");
				}else{
					$("#passwd2Result").html("비밀번호가 일치합니다!").css("color", "blue");
				}
			}
		})
		
		//이름 규칙
		let nameReg = /^[가-힣]{2,5}$/;
		$("#member_name").on("change", function() {
			if(!nameReg.exec($("#member_name").val())){
				$("#nameResult").html("이름 형식을 확인해주세요! <br> 한글 2~5자 입력 가능!").css("color", "red");
			}else{
				$("#nameResult").html("사용 가능한 이름 형식 입니다!").css("color", "blue");
			}
		})
		
	});
	// 2023-04-27 김동욱 - 회원가입 정규표현식이 submit이 실행될 때 규칙이 맞는 지 한번 더 확인함
	function checkForm() {
		
		let emailReg = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
		if(!emailReg.exec($("#member_email").val())){
			alert("이메일을 확인해주세요!");
			return false;
		}
		
		let passwdReg = /^[a-zA-Z0-9!@#$%]{8,16}$/
		if(!passwdReg.exec($("#member_passwd1").val())){
			alert("비밀번호 형식을 확인해주세요!");
			return false;
		}
		
		if($("#member_passwd1").val() != $("#member_passwd2").val()){
			alert("비밀번호가 일치하는 지 확인해주세요!")
			return false;
		}
		
		let nameReg = /^[가-힣]{2,5}$/;
		if(!nameReg.exec($("#member_name").val())){
			alert("이름을 확인해주세요!")
			return false;
		}
		
		if($("#member_gender option").index($("#member_gender option:selected")) == 0){
			alert("성별을 선택해주세요!")
			return false;
		}
		
		if($("#emailCheckValue").val() == ''){
			alert("이메일 중복체크 필수!")
			return false;
		}
		
		if($("#emailCheckValue").val() == '0'){
			alert("이미 사용중인 이메일 입니다. 이메일 중복체크를 다시 실행해주세요!")
			return false;
		}
		
	}
	
</script>
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
          		<!-- 2023-04-27 김동욱 onsubmit 적용 및 정규표현식 규칙확인 표시용 result div 추가 -->
          		<!-- 2023-04-28 김동욱 각 항목당 라벨 삭제 생년월일 전화번호 삭제 -->
			    <form action="joinPro" method="post" onsubmit="return checkForm();">
			    <div>
			    <br>
			        <h1 class="h3 mb-3 fw-normal text-dark">회원가입</h1>
			        <div class="d-flex justify-content-center">
			        	<c:choose>
			        		<c:when test="${param.member_email != null}">
			        		<input type="email" id="member_email" name="member_email" class="justify-content-center w-50 form-control" placeholder="이메일" value="${param.member_email }" readonly="readonly" required autofocus>			        		
			        		</c:when>
			        		<c:otherwise>
			        	<input type="email" id="member_email" name="member_email" class="justify-content-center w-50 form-control" placeholder="이메일" required autofocus>
			        		</c:otherwise>
			        	</c:choose>
			        	<input class="btn btn-lg btn-primary" type="button" id="emailCheck" value="중복체크">
			        </div>
		        	<div id="emailResult"></div>
		        	<br>
			        <div class="d-flex justify-content-center">
			        	<input type="password" id="member_passwd1" name="member_passwd" class="w-50 form-control" placeholder="비밀번호" required autofocus>
			        </div>
			        <div id="passwd1Result"></div>
		        	<br>
			        <div class="d-flex justify-content-center">
			        	<input type="password" id="member_passwd2" class="w-50 form-control" placeholder="비밀번호 확인" required autofocus>
			        </div>
			        <div id="passwd2Result"></div>
		        	<br>
			        <div class="d-flex justify-content-center">
			        	<input type="text" id="member_name" name="member_name" class="w-50 form-control" placeholder="이름" required autofocus>
			        </div>
			        <div id="nameResult"></div>
		        	<br>
			        <div class="d-flex justify-content-center">
			        	<select class="form-control w-50" id="member_gender" name="member_gender" required autofocus>
						  <option value="성별">성별</option>
						  <option value="1">남자</option>
						  <option value="2">여자</option>
						</select>
			        </div>
			        <div id="emailResult"></div>
		        	<br>
			        <br>
			        <!-- 비밀번호 확인용 hidden - 비밀번호 확인을 체크하면 value값이 1이됨 -->
			        <input type="hidden" value="" id="emailCheckValue">
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