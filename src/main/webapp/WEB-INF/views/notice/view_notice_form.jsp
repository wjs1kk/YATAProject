<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>YATA</title>
<link href="${pageContext.request.contextPath }/resources/css/css.css"
	rel="stylesheet" type="text/css">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		// 왼쪽메뉴 선택기
		$('.js-mypage-btn-left-menu').click(function() {
			$('.js-mypage-btn-left-menu').removeClass('active');
			$(this).addClass('active');
			$('.mypage-section').removeClass('on');
			$('.mypage-section').eq($(this).index()).addClass('on');
		});
		// 오른쪽영역 검색
		$(".csSearchBtn").on(
				"click",
				function() {
					location.href = "search.cs?board_subject="
							+ $('.csSearchBar').val();
				});
	});
</script>
<style type="text/css">
.mypage-section {
	display: none;
}
.on {
	display: block;
}
</style>
</head>

<body>

	<jsp:include page="../inc/top.jsp" />

	<div class="pc-mobile-header-container">
		<div class="pc-header space-2 text-center dc-none dc-lg-block">
			<div class="container">
				<h2 class="text-grey-3 underline-bg dc-inline-block">공지사항</h2>
				<p class="text-grey-5 mb-0">안녕하세요 공지사항입니다.</p>

			</div>
		</div>
	</div>
	<div class="container py-5">
		<div class="row">

			<div class="col-md-4 text-left dc-block pb-10">
				<div class="sticky-md sticky-pc-menu-top">
					<div id="js_mypage_left_menu">
						<div class="text-left pt-5">
							<div>
								<h3 class="color-grey-3 text-14 list-border-bottom">공지사항</h3>
								<div class="list-group list-group-flush">
									<a
										class="js-mypage-btn-left-menu js-btn-go-help-for-mypage py-2 text-decoration-none px-0 click-effect-press active"
										data-type="faq" onclick="history.back()">공지사항</a> <a
										class="js-mypage-btn-left-menu js-mypage-btn-family-intro py-2 text-decoration-none px-0 click-effect-press"
										onclick="history.back()">이용안내</a>
								</div>
							</div>
						</div>
					</div>
					<div class="text-left pt-5">
						<div>
							<h3 class="color-grey-3 text-14 list-border-bottom"></h3>
							<div
								class="dc-flex justify-content-between align-items-center mt-3">
								<div class="text-14 font-weight-bold color-grey-2">전화문의</div>
								<div
									class="dc-flex js-mypage-bnt-cs-tel js-btn-custom-cs-tel click-effect-press"
									data-location="mypage-cscenter" data-tap="mypage">
									<img
										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMCIgaGVpZ2h0PSIzMCIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDMwIDMwIj4KICAgIDxwYXRoIGZpbGw9IiM0OTQ5NDkiIGQ9Ik0yNCAxNi45Yy0uOS0uMS0xLjktLjQtMi43LS43LTEuMy0uNS0yLjctLjItMy43LjhsLS42LjZjLTEuOC0xLjItMy40LTIuOC00LjYtNC42bC42LS42YzEtMSAxLjMtMi40LjgtMy43LS4zLS45LS42LTEuOC0uNy0yLjctLjItMS43LTEuNy0zLTMuNC0zSDYuNWMtMSAwLTEuOS40LTIuNiAxLjEtLjYuNy0xIDEuNy0uOSAyLjcuNCAzLjUgMS42IDYuOSAzLjUgOS45IDEuNyAyLjcgNC4xIDUuMSA2LjggNi44IDIuOSAxLjkgNi4zIDMuMSA5LjggMy41aC4zYy45IDAgMS43LS4zIDIuNC0uOS43LS43IDEuMS0xLjYgMS4xLTIuNnYtMy4yYy4xLTEuNy0xLjEtMy4yLTIuOS0zLjR6bS0xMi44LTYuNGwtLjguOGMtLjguOC0uOSAyLS4zIDMgMS40IDIuMyAzLjQgNC4yIDUuNyA1LjcgMSAuNiAyLjIuNSAzLS4zbC44LS44Yy4yLS4yLjYtLjMuOS0uMiAxLjEuNCAyLjIuNyAzLjMuOC40LjEuNy40LjcuOHYzLjNjMCAuMi0uMS41LS4zLjYtLjIuMi0uNC4yLS42LjItMy4xLS4zLTYtMS40LTguNi0zLjEtMi41LTEuNi00LjUtMy42LTYtNi0xLjktMi43LTMtNS43LTMuNC04LjggMC0uMi4xLS40LjItLjYuMi0uMi40LS4zLjctLjNoMy4yYy40IDAgLjguMy44LjcuMiAxLjIuNSAyLjMuOCAzLjQuMi4zLjEuNi0uMS44eiIvPgo8L3N2Zz4K">
									<div
										class="js-txt-custom-cs-tel text-24 font-weight-bold color-grey-3">
										1544-5344</div>
								</div>
							</div>
							<div class="text-14 color-grey-5 mt-5">
								매일(공휴일 포함) 오전 9시 ~ 오후 6시<br>점심시간 오후 12시30분 ~ 1시30분 (1시간)
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-8 pb-6">
				<div class="mypage-section on" id="mypage_section_point" style="">
					<form id="viewNotice" name="viewNotice" method="post">
						<fieldset>
							<section class="section-form">
								<div class="form-header">
									<h2 class="tit-size-mid">${notice.board_subject}</h2>
								</div>
								<div class="form-cont">
									<div class="row type2">
										<label for="input02" class="input-tit">제목<span
											class="txt-red">*</span></label>
										<div class="input-cont">
											<div class="inputT">
												<div id="board_subject">${notice.board_subject}</div>
											</div>
										</div>
									</div>

									<div class="row type2">
										<label for="" class="input-tit">문의내용<span
											class="txt-red">*</span></label>
										<div id="board_content">${notice.board_content}</div>
									</div>
								</div>
							</section>
						</fieldset>

						<section id="commandList">
							<input type="button" value="목록" onclick="history.back()">
						</section>
					</form>
				</div>

			</div>
		</div>
	</div>

	<jsp:include page="../inc/footer.jsp" />

</body>

</html>