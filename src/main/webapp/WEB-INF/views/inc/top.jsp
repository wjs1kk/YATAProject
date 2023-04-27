<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/main.css">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	function rent1() {
		const regex = /[^0-9]/g;
		let time = $('#time').text();
		time = time.replace(regex, "");
		location.href = "rent1?res_place=${param.res_place }&rentalDatetime="+$('#demo').val()+"&time="+time;
	}
</script>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-white dc-none dc-lg-block border-bottom sticky-top header-pc" id="container_pc_navbar" style="display: flex;">
		<div class="container h-100">
			<a	href="./"
				class="js-btn-navbar-brand dc-flex align-items-center navbar-brand h-100 click-effect-press">YA-TA<img
				class="js-img-header-logo mh-100 opacity-0 animated-fadein"
				src=""></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav">
					<li class="nav-item js-container-pc-header-menu active">
						<a onclick="rent1()" class="nav-link js-pc-header-menu click-effect-press" data-mt="1">
							<div class="dc-flex justify-content-center align-items-center">
								예약하기
							</div>
						</a>
					</li>
					<li class="nav-item js-container-pc-header-menu">
						<a href="event" class="nav-link js-pc-header-menu click-effect-press" data-mt="5">
						<div class="dc-flex justify-content-center align-items-center">
							이벤트
						</div>
						</a>
					</li>
				</ul>
			<div class="mx-2">
				<div class="nav-divider"></div>
			</div>
				<ul class="navbar-nav mr-auto">
					<li class="nav-item js-container-pc-header-menu naver-dc-none">
						<a href="notice" class="nav-link js-pc-header-menu click-effect-press" data-mt="6">
							<div class="dc-flex justify-content-center align-items-center">
								공지사항
							</div>
						</a>
					</li>
					<li class="nav-item js-container-pc-header-menu">
						<a class="nav-link js-pc-header-menu click-effect-press" href="customer_service" data-mt="3">고객센터</a>
					</li>
				</ul>
				
				<c:choose>
					<c:when test="${empty sessionScope.member_email }">
						<a href = "join" class="js-btn-custom-cs-tel my-2 pl-2 pr-3 my-sm-0 " id="js_btn_customer_cs_for_normal" href="javascript:void(0)"
							style="display: flex;">
							<div class="dc-flex align-items-center color-primary-blue">
								<img class="mr-1" style="width: 1.25rem;" src="">
								<span class="js-txt-rent-type-cs-tel" style="font-size:16px;">회원가입</span> 							
							</div>
						</a>
						<div class="mx-2">
							<div class="nav-divider"></div>
						</div>
						<button onclick="window.location.href='login'"
							class="js-pc-header-btn-login btn color-blue my-2 my-sm-0 tmobi-dc-none"
							type="button" style ="font-size:16px;">로그인
						</button>
					</c:when>
					<c:otherwise>
						<a href = "mypage" class="js-btn-custom-cs-tel my-2 pl-2 pr-3 my-sm-0 " id="js_btn_customer_cs_for_normal" href="javascript:void(0)"
							style="display: flex;">
							<div class="dc-flex align-items-center color-primary-blue">
								<img class="mr-1" style="width: 1.25rem;" src="">
								<span class="js-txt-rent-type-cs-tel" style="font-size:16px;">마이페이지</span> 							
							</div>
						</a>
						<div class="mx-2">
							<div class="nav-divider"></div>
						</div>
						<button onclick="window.location.href='logout'"
							class="js-pc-header-btn-login btn color-blue my-2 my-sm-0 tmobi-dc-none"
							type="button" style ="font-size:16px;">로그아웃
						</button>

						<c:if test="${member_isadmin eq '1' }">
							<a href="admin"
								class="js-btn-custom-cs-tel my-2 pl-2 pr-3 my-sm-0 "
								id="js_btn_customer_cs_for_normal" href="javascript:void(0)"
								style="display: flex;">
								<div class="dc-flex align-items-center color-primary-blue">
									<img class="mr-1" style="width: 1.25rem;" src=""> <span
										class="js-txt-rent-type-cs-tel" style="font-size: 16px;">관리자
										페이지</span>
								</div>
							</a>
						</c:if>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</nav>
	

</body>
</html>