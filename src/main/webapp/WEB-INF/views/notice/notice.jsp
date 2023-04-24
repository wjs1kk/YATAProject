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
										data-type="faq">공지사항</a> <a
										class="js-mypage-btn-left-menu js-mypage-btn-family-intro py-2 text-decoration-none px-0 click-effect-press">이용안내</a>
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
										class="js-txt-custom-cs-tel text-24 font-weight-bold color-grey-3">1544-5344</div>
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

				<div class="mypage-section on" id="mypage_section_help">
					<table class="tb-list" id="noticeList" name="noticeList">
						<colgroup>
							<col style="width: 10%">
							<col>
						</colgroup>
						<thead>
							<tr>
								<th scope="col">No</th>
								<th scope="col">제목</th>
							</tr>
						</thead>
						<tbody id="notice_list">
							<c:forEach var="notice" items="${noticeList }">


								<tr id="subject">
									<td>${notice.board_num }</td>
									<td class="tb-subj"><a
										href="view.no?board_num=${notice.board_num }&pageNum=${pageNum}">
											${notice.board_subject } </a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
			
					<c:choose>
						<c:when test="${empty param.pageNum }">
							<c:set var="pageNum" value="1" />
						</c:when>
						<c:otherwise>
							<c:set var="pageNum" value="${param.pageNum }" />
						</c:otherwise>
					</c:choose>

					<section id="pageList">
						<c:choose>
							<c:when test="${pageNum > 1 and empty param.searchKeyword }">
								<input type="button" value="이전"
									onclick="location.href='notice?pageNum=${pageNum - 1 }'">
							</c:when>
							<c:when test="${pageNum > 1 and not empty param.searchKeyword }">
								<input type="button" value="이전"
									onclick="location.href='notice?pageNum=${pageNum - 1 }&searchKeyword=${param.searchKeyword }'">
							</c:when>
							<c:otherwise>
								<input type="button" value="이전">
							</c:otherwise>
						</c:choose>

						<c:forEach var="num" begin="${pageInfo.startPage }"
							end="${pageInfo.endPage }">
							<c:choose>
								<c:when test="${pageNum eq num }">
									<b>${num }</b>
								</c:when>
								<c:when test="${pageNum ne num and empty param.searchKeyword }">
									<a href="notice?pageNum=${num }">${num }</a>
								</c:when>
								<c:when
									test="${pageNum ne num and not empty param.searchKeyword }">
									<a
										href="notice?pageNum=${num }&searchKeyword=${param.searchKeyword }">${num }</a>
								</c:when>
							</c:choose>
						</c:forEach>

						<c:choose>
							<c:when
								test="${pageNum < pageInfo.maxPage and empty param.searchKeyword }">
								<input type="button" value="다음"
									onclick="location.href='notice?pageNum=${pageNum + 1}'">
							</c:when>
							<c:when
								test="${pageNum < pageInfo.maxPage and not empty param.searchKeyword }">
								<input type="button" value="다음"
									onclick="location.href='notice?pageNum=${pageNum + 1 }&searchKeyword=${param.searchKeyword }'">
							</c:when>
							<c:otherwise>
								<input type="button" value="다음">
							</c:otherwise>
						</c:choose>

					</section>
				</div>

				<div class="mypage-section" id="mypage_section_setting">
					<div class="inner-type2">

						<!-- 페이지 타이틀 -->
						<section class="section-headline">
							<h1 class="tit">대여안내</h1>
							<p class="txt">YA-TA의 서비스를 경험하세요!</p>
						</section>
						<!-- //페이지 타이틀 -->


						<div class="detail-layer-items-wrap">
							<div class="detail-layer-items">
								<section class="section-explain layer-item item-step1"
									data-link="0">
									<div class="explain-header">
										<h2 class="tit-size-big">대여 자격</h2>
									</div>
									<div class="explain-cont">
										<p class="txt">도로교통법상 유효한 운전면허증을 소지하여야 대여가 가능하며, 1종 면허의 경우
											적성기간 경과 후 1년이 지나면 운전면허 취소로 대여가 불가합니다.</p>

										<div class="tbl-box">
											<table>
												<caption>대여 자격의 차량 유형, 9인승 이하, 11~12인승, 15인승, 면허
													종류, 운전자 연령, 취득 후 기간을 나타내는 표</caption>
												<thead>
													<tr>
														<th>차량 유형</th>
														<th>9인승 이하</th>
														<th>11~12인승</th>
														<th>15인승</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<th>면허 종류</th>
														<td>2종 보통 이상</td>
														<td>1종 보통 이상</td>
														<td>1종 보통 이상</td>
													</tr>
													<tr>
														<th>운전자 연령</th>
														<td>만 21세 이상 (대여일 기준)</td>
														<td>만 21세 이상 (대여일 기준)</td>
														<td>만26세 이상(대여일 기준)</td>
													</tr>
													<tr>
														<th>취득 후 기간</th>
														<td>면허 취득일로부터 1년 이상 경과</td>
														<td>면허 취득일로부터 1년 이상 경과</td>
														<td>면허 취득일로부터 1년 이상 경과</td>
													</tr>
												</tbody>
											</table>

											<!-- 201119 : 마크업수정 -->
											<ul class="lst dot">
												<li>YA-TA는 [여객자동차 운수사업법 시행규칙 제 67조]에 의거 15인승 이하 차량만 대여가
													가능합니다.</li>
												<li>운전면허증에 원동기가 함께 기재되어 있는 경우 운전경력증명서를 지참하셔야 차량대여가
													가능합니다.</li>
												<li>대여 시 운전면허증을 지참하셔야 하며 모바일 PASS 면허는 불가합니다.</li>
											</ul>
										</div>


									</div>
								</section>

								<section
									class="section-explain surcharge-section layer-item item-step3"
									data-link="2">
									<div class="explain-header">
										<h2 class="tit-size-big">추가 요금</h2>
									</div>
									<div class="explain-cont">
										<ul class="grid-row type2">
											<li>
												<div class="img-item">
													<span class="circle icon fee01"></span>
												</div>
												<dl class="descri-box">
													<dt class="tit">휴차 보상료</dt>
													<dd>
														차량대여 중 발생한 자차사고(임차인 가해사고)로 인해&nbsp;차량의 수리가 필요한 경우, 차량수리
														기간동안 차량에 발생한 영업손실에 대해<br> 차량수리비 이외 표준대여료의 50% 휴차보상료가
														고객 부담입니다.
													</dd>
												</dl>
											</li>
											<li>
												<div class="img-item">
													<span class="circle icon fee02"></span>
												</div>
												<dl class="descri-box">
													<dt class="tit">차량 수리비</dt>
													<dd>
														차량대여 중 렌터카의 손망실이 발생한 경우의 (임차인 과실사고 및 가해자 불명의 자차사고) 렌터카
														수리비는 고객 부담이며 렌터카 수리 시<br> 특별한 사유를 제외하고 YA-TA와 협의를 거쳐
														정해진 곳에서 수리를 해야 합니다.
													</dd>
												</dl>
											</li>
											<li>
												<div class="img-item">
													<span class="circle icon fee03"></span>
												</div>
												<dl class="descri-box">
													<dt class="tit">교통법규 위반 범칙금</dt>
													<dd>
														차량 대여 중 도로교통법 위반으로 발생한 모든 범칙금은 고객 부담.(주정차 위반, 버스전용차선위반,
														안전벨트 미착용 등)이며, 도로교통법 위반에 <br> 따른 사고의 경우 보험보상의 일부 혜택을
														받지 못 할 수도 있습니다.
													</dd>
												</dl>
											</li>
											<li>
												<div class="img-item">
													<span class="circle icon fee04"></span>
												</div>
												<dl class="descri-box">
													<dt class="tit">차량 유류비</dt>
													<dd>
														모든 차량은 Full-Tank(연료를 가득 채운 상태) 에서 대여해 드리며 반납시에도 Full-Tank
														상태로 반납을 해야 합니다. <br> 연료가 가득 채워지지 않았을 경우에는 가득 주유 시
														예상되는 금액으로 주유 비용을 정산해야 합니다.
														<ul class="lst dot">
															<li>실비정산시, 지점 내 데스크에 비치된 유류정산 기준표 참고</li>
														</ul>
													</dd>
												</dl>
											</li>
										</ul>
									</div>
								</section>

								<section
									class="section-explain rental-step-section layer-item item-step4"
									data-link="3">
									<div class="explain-header">
										<h2 class="tit-size-big">대여 절차</h2>
									</div>
									<div class="explain-cont">
										<ol class="grid-col col4 purchase-step">
											<li>
												<div class="img-item">
													<span class="icon purchase-step01"></span>
												</div>
												<p class="tit">1. 지점 방문</p>
												<p class="txt">
													직원에게 예약번호 또는 <br> 예약자 성명을 말씀해주세요.<br> (외국인일 경우 여권
													및 국제면허증 지참)
												</p>
											</li>
											<li>
												<div class="img-item">
													<span class="icon purchase-step02"></span>
												</div>
												<p class="tit">2. 고객 정보 확인</p>
												<p class="txt">
													예약사항을 확인 후, <br> 차량임대차 계약서 작성을 위해<br> 면허증을 담당직원에게
													제시해 주세요.<br> (모바일 PASS 면허는 불가)
												</p>
											</li>
											<li>
												<div class="img-item">
													<span class="icon purchase-step03"></span>
												</div>
												<p class="tit">3. 대여료 결제</p>
												<p class="txt">
													대여기간 및 차종, 옵션 등 <br> 최종 확인한 후<br> 차량 대여료를 결제해주세요.
												</p>
											</li>
											<li>
												<div class="img-item">
													<span class="icon purchase-step04"></span>
												</div>
												<p class="tit">4. 차량 확인 및 계약서 작성</p>
												<p class="txt">
													직원을 따라 주차장으로 이동하신 후 <br> 차량 상태를 확인하시고<br> 차량 임대차
													계약서에 서명해주세요.
												</p>
											</li>
										</ol>
										<div class="align-c mb-60">
											<ul class="lst dot inline-block">
												<li>YA-TA 홈페이지 또는 모바일웹/APP으로 예약하는 경우 결제를 완료하셔야 예약이
													완료됩니다.</li>
											</ul>
										</div>
									</div>
								</section>

								<section
									class="section-explain return-section layer-item item-step5"
									data-link="4">
									<div class="explain-header">
										<h2 class="tit-size-big">반납 절차</h2>
									</div>
									<div class="explain-cont">
										<ol class="grid-col col4 purchase-step">
											<li>
												<div class="img-item">
													<span class="icon purchase-step01"></span>
												</div>
												<p class="tit">1. 지점 방문</p>
												<p class="txt">
													반납지점 주차장에 차량을 주차하고 <br> 시동을 완전히 끈 후 차량 Key 와 <br>
													소지품을 챙겨 지점 사무실로 들어갑니다.
												</p>
											</li>
											<li>
												<div class="img-item">
													<span class="icon purchase-step05"></span>
												</div>
												<p class="tit">2. 자동차 키 반납</p>
												<p class="txt">
													담당직원에게 <br> 차량 Key를 반납하세요.
												</p>
											</li>
											<li>
												<div class="img-item">
													<span class="icon purchase-step06"></span>
												</div>
												<p class="tit">3. 차량 확인</p>
												<p class="txt">
													담당직원과 함께 차량이 주차된 곳으로 <br> 이동하여 차량 상태, <br> 유류상태
													등을 확인해 주세요.
												</p>
											</li>
											<li>
												<div class="img-item">
													<span class="icon purchase-step03"></span>
												</div>
												<p class="tit">4. 추가 비용 정산</p>
												<p class="txt">
													반납시간 초과, 차량의 손망실, <br> 유류비, 범칙금 등 추가금이 <br> 발생한
													경우 추가비용을 정산해주세요.
												</p>
											</li>
										</ol>
									</div>
								</section>

								<section
									class="section-explain reward-section layer-item item-step6"
									data-link="5">
									<div class="explain-header">
										<h2 class="tit-size-big">보험 및 보상</h2>
									</div>
									<div class="explain-cont">
										<p class="tit">차량 사고 시 보험 및 보상범위</p>
										<p class="txt">YA-TA의 모든 차량은 차량 이용 중 사고가 발생하였을 때 아래의 보험
											보상범위 내에서 고객님을 보호하기 위해 최선을 다하겠습니다.</p>
										<div class="tbl-box">
											<table>
												<caption>대인, 무한, 대물, 자손에 따른 보험 보상범위를 나타내는 표</caption>
												<colgroup>
													<col width="16.6%">
													<col width="*">
												</colgroup>
												<thead>
													<tr>
														<th>대인</th>
														<th class="align-l">무한</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<th>대물</th>
														<td class="align-l">사고 건당 2천만원</td>
													</tr>
													<tr>
														<th>자손</th>
														<td class="align-l">개인당 1천5백만원 (*계약서상 등록되지 않은 운전자는
															종합보험 혜택 불가)</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</section>

								<section
									class="section-explain cdw-section layer-item item-step7"
									data-link="6">
									<div class="explain-header">
										<h2 class="tit-size-big">자차 손해 면책제도(CDW)</h2>
									</div>
									<div class="explain-cont">
										<p class="txt">차량대여 중 귀책사유로 인하여 발생하는 모든 차량손해(손, 망실)는 고객님의
											책임이 발생하며, 자차손해 면책제도(CDW)에 가입하신 경우 고객의 실수로 발생한 자차사고에 대한 보호를
											받으실 수가 있습니다. 자차손해 면책제도 가입은 고객님의 선택 사항입니다.</p>

										<!-- 201119 : 클래스 descri-box =>  .define-area로 변경-->
										<dl class="define-area">
											<dt>면책금 안내</dt>
											<dd>
												<p class="txt">
													CDW 면책금액에 따라 차량손해의 액수에 상관없이 사고로 인한 파손 부위 1건당 5만원~30만원만
													지불하시면 차량손해에 대한 책임을 보호 받을 수 있습니다.<br> (고객부담금 면제 상품 가입
													시에는 차량손해 액수에 상관없이 고객부담금이 없습니다.)
												</p>
												<div class="tbl-box">
													<table>
														<caption>면책금에 관한 대물, 자손, 국산차량, 수입차량을 나타내는 표</caption>
														<thead>
															<tr>
																<th>구분</th>
																<th>국산차량</th>
																<th>수입차량</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<th>내륙</th>
																<td>고객부담금 면제 / 5만원 / 30만원</td>
																<td rowspan="2">30만원 (단일 면책금 제도 운영)</td>
															</tr>
															<tr>
																<th>제주</th>
																<td>고객부담금 면제 / 30만원</td>
															</tr>
														</tbody>
													</table>

													<!-- 201119 : 마크업수정 -->
													<ul class="lst dot">
														<li>자차손해 면책제도의 면책금 가입 종류에 따라 가입 요금이 다릅니다.</li>
													</ul>
												</div>

											</dd>
											<dt>차량 수리비</dt>
											<dd>
												차량대여 중 발생하는 귀책사유로 인한 당사 차량손해(손, 망실)는 고객님께서 차량 수리비를 지불하셔야
												합니다.<br> 자차손해 면책제도(CDW )를 가입한 경우 차량수리비가 면책금 종류에 따라 가입된
												면책금 미만인 경우에는 실비정산을 하며, <br> 가입된 면책금 이상인 경우 각각 가입 하신 최고의
												면책금만 지불하시면 됩니다.
											</dd>
											<dt>휴차보상료</dt>
											<dd>
												<p class="txt">
													자차손해 면책제도 가입 유무와 관계없이 사고로 인하여 차량이 휴차 할 경우에는 차량 운영의 차질로 인하여
													발생한 수리기간 동안<br> 대여차량 정상요금의 50%에 해당하는 휴차보상료가 청구됩니다.
												</p>

												<div class="tbl-box">
													<table>
														<caption>휴차보상료에 관한 국산차량, 수입차량, 청구기준, 청구금액을 나타내는
															표</caption>
														<colgroup>
															<col width="16.6%">
															<col width="*">
														</colgroup>
														<thead>
															<tr>
																<th>구분</th>
																<th>국산차량</th>
																<th>수입차량</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<th>청구기준</th>
																<td>차량 잔존가 대비 50% 이상의 파손 발생 시 청구<br> (CDW 가입여부
																	무관)
																</td>
																<td>차량 파손 시 수리기간 동안<br> 발생하는 영업손실금 청구
																</td>
															</tr>
															<tr>
																<th>청구금액</th>
																<td colspan="2">(사고 건당 수리일) X (대여차량 1일 대여요금 50%
																	할인금액)</td>
															</tr>
														</tbody>
													</table>

													<!-- 201119 : 마크업수정 -->
													<ul class="lst dot">
														<li>자차손해 면책제도의 면책금 가입 종류에 따라 가입 요금이 다릅니다.</li>
													</ul>
												</div>

											</dd>
										</dl>
									</div>
								</section>

								<section
									class="section-explain etc-section layer-item item-step8"
									data-link="7">
									<div class="explain-header">
										<h2 class="tit-size-big">기타 안내</h2>
									</div>
									<div class="explain-cont">
										<ul class="grid-row type2">
											<li>
												<div class="img-item">
													<span class="circle icon etc-info01"></span>
												</div>
												<dl class="descri-box">
													<dt class="tit">교통 법규</dt>
													<dd>
														<ul class="lst dot">
															<li>임차인 및 운전자는 교통법규 위반 시 제반사항은 임차인 본인의 책임입니다.</li>
															<li>도로교통법 위반 시 보험보상의 일부 혜택을 받지 못할 수도 있습니다.</li>
														</ul>
													</dd>
												</dl>
											</li>
											<li>
												<div class="img-item">
													<span class="circle icon etc-info02"></span>
												</div>
												<dl class="descri-box">
													<dt class="tit">연료 및 주행거리</dt>
													<dd>
														<ul class="lst dot">
															<li>유류비는 임차인 본인의 부담입니다.</li>
															<li>모든 차량은 대여 시 Full-Tank 서비스를 제공중이기 때문에 출발시와 동일하게
																Full-Tank로 반납하여야 합니다.</li>
															<li>주행거리에는 제한이 없습니다.</li>
														</ul>
													</dd>
												</dl>
											</li>
											<li>
												<div class="img-item">
													<span class="circle icon etc-info03"></span>
												</div>
												<dl class="descri-box">
													<dt class="tit">계약 연장</dt>
													<dd>
														<ul class="lst dot">
															<li>대여 중 부득이하게 계약 연장 필요 시, 사전에 대여지점의 동의를 받아야 합니다 .</li>
															<li>연장 시, 초과요금은 임차인이 부담하여야 합니다.</li>
															<li>사전 동의 없이 연장 사용기간 중 발생한 차량손해에 대해서는 보험 및 보상의 혜택을
																받지 못할 수도 있습니다.</li>
														</ul>
													</dd>
												</dl>
											</li>
										</ul>
									</div>
								</section>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<jsp:include page="../inc/footer.jsp" />

</body>
</html>