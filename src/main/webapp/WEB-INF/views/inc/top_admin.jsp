<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/main.css">
</head>
<body>
	<nav
		class="navbar navbar-expand-lg navbar-light bg-white dc-none dc-lg-block border-bottom sticky-top header-pc"
		id="container_pc_navbar" style="display: flex;">
		<div class="container h-100">
			<a href="./"
				class="js-btn-navbar-brand dc-flex align-items-center navbar-brand h-100 click-effect-press"
				style="font-size: initial;">YA-TA<img
				class="js-img-header-logo mh-100 opacity-0 animated-fadein" src=""></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav">
					<li class="nav-item js-container-pc-header-menu active"><a
						class="nav-link js-pc-header-menu click-effect-press"
						href="admin">관리자 홈</a></li>
						
					<li class="nav-item js-container-pc-header-menu active"><a
						class="nav-link js-pc-header-menu click-effect-press"
						href="AdminMemberList.ad">회원 목록 조회</a></li>
						
					<li class="nav-item js-container-pc-header-menu active"><a
						class="nav-link js-pc-header-menu click-effect-press"
						href="AdminCarList.ad">자동차 목록 조회</a></li>
						
					<li class="nav-item js-container-pc-header-menu active"><a
						class="nav-link js-pc-header-menu click-effect-press"
						href="AdminCarRegist.ad">신규 차량 등록</a></li>
				</ul>

				<ul class="navbar-nav mr-auto">

				</ul>
			
				<!-- 2023-04-28 김동욱 관리자 top 마이페이지 삭제 및  로그인 ,회원가입 삭제 -->
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
				<div class="mx-2">
					<div class="nav-divider"></div>
				</div>
				<button onclick="window.location.href='logout'"
					class="js-pc-header-btn-login btn color-blue my-2 my-sm-0 tmobi-dc-none"
					type="button" style="font-size: 16px;">로그아웃</button>
					
			</div>
		</div>
	</nav>


</body>
</html>