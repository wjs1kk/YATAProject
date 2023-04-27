<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>YATA</title>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body style="">
	<main id="content" role="main">
		<div class="main-contents">
			<jsp:include page="../inc/top_admin.jsp"></jsp:include>

			<div class="pc-mobile-header-container">
				<div class="pc-header space-2 text-center dc-none dc-lg-block">
					<div class="container">
						<h2 class="text-grey-3 underline-bg dc-inline-block">1:1 문의 내역</h2>
						<p class="text-grey-5 mb-0">내 정보</p>
					</div>
				</div>
			</div>
			<div class="container py-5">
				<div class="mypage-section" id="mypage_section_point" style="">
					<fieldset>
						<section class="section-form">
							<div class="form-header">
								<h2 class="tit-size-mid">1:1 문의 내역</h2>
							</div>
							<div class="form-cont">
								<div class="row type2">
									<label for="input02" class="input-tit">작성자<span
										class="txt-red">*</span></label>
									<div class="input-cont">
										<div class="inputT">
											<input type="text" style="background: lightgray;"
												value="${mailform.member_email }" readonly="readonly">
										</div>
									</div>
								</div>
							<div class="form-cont">
								<div class="row type2">
									<label for="input02" class="input-tit">제목<span
										class="txt-red">*</span></label>
									<div class="input-cont">
										<div class="inputT">
											<input type="text"  style="background: lightgray;"
												value="${mailform.board_subject }" readonly="readonly" >
										</div>
									</div>
								</div>
								<div class="row type2">
									<label for="" class="input-tit">문의내용<span
										class="txt-red">*</span></label>
									<div class="textarea" style="height: 300px;" >
											<textarea cols="30" rows="10" style="border: none;" readonly="readonly">${mailform.board_content }</textarea>
										<!-- <textarea name="REQMAT" id="reqmat" cols="30" rows="10" placeholder="차량 사용 목적을 입력하세요"></textarea> -->
									</div>
								</div>
							</div>
						</section>
					</fieldset>
				</div>
			</div>
			
			
			<div class="container py-5">
				<div class="mypage-section" id="mypage_section_point" style="">
					<form action="AdminMailFormReplyPro.ad" name="writeForm" method="post">
						<input type="hidden" name="member_email" value="${mailform.member_email }">
						<input type="hidden" name="board_re_ref" value="${mailform.board_re_ref }">
						<input type="hidden" name="board_re_lev" value="${mailform.board_re_lev }">
						<input type="hidden" name="board_re_seq" value="${mailform.board_re_seq }">
						<fieldset>
							<section class="section-form">
								<div class="form-header">
									<h2 class="tit-size-mid">1:1 문의 답변</h2>
								</div>
								<div class="form-cont">
									<div class="row type2">
										<label for="input02" class="input-tit">제목<span
											class="txt-red">*</span></label>
										<div class="input-cont">
											<div class="inputT">
												<input type="text" id="board_subject" name="board_subject"
													value="" placeholder="제목을 입력하세요">
											</div>
										</div>
									</div>
									<div class="row type2">
										<label for="" class="input-tit">답변내용<span
											class="txt-red">*</span></label>
										<div class="textarea" style="height: 300px;">
											<textarea name="board_content" id="board_content" cols="30"
												rows="10" style="border: none;"
												placeholder="답변내용을 입력해주세요."></textarea>
											<!-- <textarea name="REQMAT" id="reqmat" cols="30" rows="10" placeholder="차량 사용 목적을 입력하세요"></textarea> -->
										</div>
									</div>
								</div>
							</section>
						</fieldset>
		
						<section id="btnArea">
							<input type="submit" value="등록">&nbsp;&nbsp; <input
								type="reset" value="다시쓰기">&nbsp;&nbsp; <input
								type="button" value="취소" onclick="history.back()">
						</section>
					</form>
				</div>
			</div>
		</div>
	</main>
	<jsp:include page="../inc/footer.jsp" />
	
	
	

</body>
</html>