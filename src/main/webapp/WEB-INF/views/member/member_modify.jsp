<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YATA</title>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js">
</script>
<script>
window.onload = function() {
    function onClick() {
        document.querySelector('.modal_wrap').style.display ='block';
        document.querySelector('.black_bg').style.display ='block';
    }   
    
    function offClick() {
        document.querySelector('.modal_wrap').style.display ='none';
        document.querySelector('.black_bg').style.display ='none';
    }
 
    document.getElementById('modal_btn').addEventListener('click', onClick);
    document.querySelector('.modal_close').addEventListener('click', offClick);
};

function mLicense() {
	let city = document.querySelector('#city');
	let licenseNum = document.querySelector("#license_num");
	let licenseNum2 = document.querySelector("#license_num2");
	let licenseNum3 = document.querySelector("#license_num3");
	
	let license = city.value + "-" + licenseNum.value + "-" + licenseNum2.value + "-" + licenseNum3.value;
	let licensePass = document.querySelector("#license_pass").value;
}




</script>

<link rel="stylesheet" href="resources/css/style.css">
<style>
.modal_wrap{
        display: none;
        width: 500px;
        height: 500px;
        position: relative;
        top:50%;
        left: 50%;
        margin: -250px 0 0 -250px;
        background:#eee;
        z-index: 2;
    }

.black_bg{
    display: none;
    position: absolute;
    content: "";
    width: 100%;
    height: 100%;
    background-color:rgba(0, 0, 0, 0.5);
    top:0;
    left: 0;
    z-index: 1;
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
											<!----------------------------------- 면허증 등록 관련 시작 ----------------------------------------->
											<label class="visually-hidden">운전면허증 등록</label>
											<div class="d-flex justify-content-center">
												<button type="button" class="modal_btn w-50 form-control" id="modal_btn"
													style="margin-bottom: 10px;">등록하러 가기</button>
											</div>
											<div class="black_bg"></div>
												<div class="modal_wrap">
													<div class="modal-header justify-content-center">
														<h4>운전면허증 등록하기</h4>
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
													<label for="licenseNum" class="visually-hidden">운전면허번호</label>
													<div class="d-flex justify-content-center"> 
														<select class="w-20 form-control" name="city" id="city">
														    <option value="11">서울(11)</option>
														    <option value="12">부산(12)</option>
														    <option value="13">경기(13)</option>
														    <option value="13">경기남부(13)</option>
														    <option value="29">세종(29)</option>
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
													  	</select>
														<input
															type="text" class="w-20 form-control" name="license_num" id="license_num"
															placeholder="**" maxlength="2"/>
														<input
															type="text" class="w-30 form-control"
															style="margin-bottom: 10px;" name="license_num2" id="license_num2"
															placeholder="******" maxlength="6"/>
														<input
															type="text" class="w-30 form-control"
															style="margin-bottom: 10px;" name="license_num3" id="license_num3"
															placeholder="**" maxlength="2"/>
													</div> 
													<label for="birth" class="visually-hidden">암호일련번호</label>
													<div class="d-flex justify-content-center">
													<input type="text"
														class="w-50 form-control" name="license_pass" id="license_pass" style="margin-bottom: 10px;"
														id="license_pass" placeholder="암호일련번호" maxlength="6"/>
													</div>
													<div class="modal-footer justify-content-center" id="apply" data-backdrop="static" data-keyboard="false">
														<button class="w-50 btn btn-lg btn-primary"	style="width: 300px; margin-bottom: 15px" type="submit" onclick="mLicense()">등록</button>
														<button class="modal_close w-50 btn btn-lg btn-secondary" style="width: 300px; margin-bottom: 15px" type="button">닫기</button>
													</div>
												</div>
											<!-- -------------------------------- 면허증 등록 관련 끝 -------------------------------------- -->
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
	</main>
	<jsp:include page="../inc/footer.jsp" />
</body>
</html>