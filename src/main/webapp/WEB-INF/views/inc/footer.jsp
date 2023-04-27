<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/main.css">
</head>
<body>

	<footer class="dc-none dc-lg-block mt-auto" id="global_footer">
		<div class="bg-white">
			<div class="container space-2">
				<div class="global-footer-section-web-only row tmobi-dc-none">
					<div class="col-sm-8">
						<ul class="nav mx-n15px">
							<li class="nav-item"><a
								class="nav-link text-secondary text-12 click-effect-press"
								href="http://teamo2.kr/" target="_blank">YATA 회사소개</a></li>
							<li class="nav-item"><a
								class="pc-footer-btn-privacy-policy nav-link text-secondary text-12 click-effect-press">개인정보처리방침</a></li>
							<li class="nav-item"><a
								class="pc-footer-btn-use-policy nav-link text-secondary text-12 click-effect-press">이용약관</a></li>
							<li class="nav-item"><a
								class="nav-link text-secondary text-12 click-effect-press js-btn-go-help"
								href="javascript:void(0)">자주묻는질문</a></li>
						</ul>
					</div>
					<div class="col-sm-4">
						<ul class="nav justify-content-end">
							<li class="nav-item"><a class="nav-link px-1"
								href="https://www.instagram.com/carmore_official"
								target="_blank"><img
									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNiIgaGVpZ2h0PSIyNiIgdmlld0JveD0iMCAwIDI2IDI2Ij4KICA8cGF0aCBmaWxsPSIjRDRENEQ0IiBkPSJNNCwxMiBMNCwyMiBMMjIsMjIgTDIyLDEyIEwxOC45MTcwNDE2LDEyIEMxOC45NzE2MDEyLDEyLjMyNTIwODUgMTksMTIuNjU5Mjg3OCAxOSwxMyBDMTksMTYuMzEzNzA4NSAxNi4zMTM3MDg1LDE5IDEzLDE5IEM5LjY4NjI5MTUsMTkgNywxNi4zMTM3MDg1IDcsMTMgQzcsMTIuNjU5Mjg3OCA3LjAyODM5ODgsMTIuMzI1MjA4NSA3LjA4Mjk1ODQ0LDEyIEw0LDEyIFogTTMsMiBMMjMsMiBDMjMuNTUyMjg0NywyIDI0LDIuNDQ3NzE1MjUgMjQsMyBMMjQsMjMgQzI0LDIzLjU1MjI4NDcgMjMuNTUyMjg0NywyNCAyMywyNCBMMywyNCBDMi40NDc3MTUyNSwyNCAyLDIzLjU1MjI4NDcgMiwyMyBMMiwzIEMyLDIuNDQ3NzE1MjUgMi40NDc3MTUyNSwyIDMsMiBaIE0xOCw1IEMxNy40NDc3MTUzLDUgMTcsNS40NDc3MTUyNSAxNyw2IEwxNyw4IEMxNyw4LjU1MjI4NDc1IDE3LjQ0NzcxNTMsOSAxOCw5IEwyMCw5IEMyMC41NTIyODQ3LDkgMjEsOC41NTIyODQ3NSAyMSw4IEwyMSw2IEMyMSw1LjQ0NzcxNTI1IDIwLjU1MjI4NDcsNSAyMCw1IEwxOCw1IFogTTEzLDE3IEMxNS4yMDkxMzksMTcgMTcsMTUuMjA5MTM5IDE3LDEzIEMxNywxMC43OTA4NjEgMTUuMjA5MTM5LDkgMTMsOSBDMTAuNzkwODYxLDkgOSwxMC43OTA4NjEgOSwxMyBDOSwxNS4yMDkxMzkgMTAuNzkwODYxLDE3IDEzLDE3IFoiLz4KPC9zdmc+Cg=="></a></li>
							<li class="nav-item"><a class="nav-link px-1"
								href="https://www.facebook.com/carmore.co" target="_blank"><img
									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNiIgaGVpZ2h0PSIyNiIgdmlld0JveD0iMCAwIDI2IDI2Ij4KICA8cGF0aCBmaWxsPSIjRDRENEQ0IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMC4yNDA1Mjc3LDIgTDUuNzU5NjMzMzQsMiBDMy42ODMwNjQ1MSwyIDIsMy42ODMwNjQ1MSAyLDUuNzU5NjMzMzQgTDIsMjAuMjQwMzY2NyBDMiwyMi4zMTY3NzQ0IDMuNjgzMDY0NTEsMjQgNS43NTk2MzMzNCwyNCBMMTMuNjk1NTk5LDI0IEwxMy42OTU1OTksMTUuNTUzNTkwMSBMMTAuODUzNjA1NSwxNS41NTM1OTAxIEwxMC44NTM2MDU1LDEyLjI2MTcxNjMgTDEzLjY5NTU5OSwxMi4yNjE3MTYzIEwxMy42OTU1OTksOS44MzQxNjY3NyBDMTMuNjk1NTk5LDcuMDE2OTc4NjkgMTUuNDE2NTE2LDUuNDgyOTA3ODMgMTcuOTI5MTEyNyw1LjQ4MjkwNzgzIEMxOS4xMzM0NjQ2LDUuNDgyOTA3ODMgMjAuMTY3ODgzMyw1LjU3MjQ2NTA5IDIwLjQ2OTU3NTMsNS42MTI1NzI1NyBMMjAuNDY5NTc1Myw4LjU1NjY4NzE0IEwxOC43MjY0MzAxLDguNTU3NDkyNTEgQzE3LjM1OTU1NDMsOC41NTc0OTI1MSAxNy4wOTUyMzE1LDkuMjA2OTQzNzYgMTcuMDk1MjMxNSwxMC4xNTk2OTc4IEwxNy4wOTUyMzE1LDEyLjI2MTcxNjMgTDIwLjM1NDg5MDQsMTIuMjYxNzE2MyBMMTkuOTMwMjk4OCwxNS41NTM1OTAxIEwxNy4wOTUyMzE1LDE1LjU1MzU5MDEgTDE3LjA5NTIzMTUsMjQgTDIwLjI0MDUyNzcsMjQgQzIyLjMxNjkzNTUsMjQgMjQsMjIuMzE2Nzc0NCAyNCwyMC4yNDAzNjY3IEwyNCw1Ljc1OTYzMzM0IEMyNCwzLjY4MzA2NDUxIDIyLjMxNjkzNTUsMiAyMC4yNDA1Mjc3LDIiLz4KPC9zdmc+Cg=="></a></li>
							<li class="nav-item"><a class="nav-link px-1"
								href="https://blog.naver.com/teamo2co" target="_blank"><img
									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNiIgaGVpZ2h0PSIyNiIgdmlld0JveD0iMCAwIDI2IDI2Ij4KICA8cGF0aCBmaWxsPSIjRDRENEQ0IiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMy4zNDc1MjMyLDE0LjI4NTYyMjkgTDIzLjM0NzUyMzIsNi44ODAyMTQ4MSBDMjMuMzQ3NTIzMiw1LjE1NjE4Mzc2IDIxLjk1NDQ3MjksMy43NTg1ODcwMiAyMC4yMzY4Njc3LDMuNzU4NTg3MDIgTDYuNzYyOTg3MzksMy43NTg1ODcwMiBDNS4wNDQ4MDI2OCwzLjc1ODU4NzAyIDMuNjUyNDA0NCw1LjE1NjE4Mzc2IDMuNjUyNDA0NCw2Ljg4MDIxNDgxIEwzLjY1MjQwNDQsMTQuMjg1NjIyOSBDMy42NTI0MDQ0LDE2LjAwOTcyNjQgNS4wNDQ4MDI2OCwxNy40MDczMjMyIDYuNzYyOTg3MzksMTcuNDA3MzIzMiBMMTEuNDA0MDQ5NCwxNy40MDczMjMyIEwxMi45ODgxMzc5LDE5Ljk4NjE5NzggQzEyLjk4ODEzNzksMTkuOTg2MTk3OCAxMy4wMDUwOTAxLDIwLjAxNjc2OTMgMTMuMDM5NjQ2NSwyMC4wNTk1MTE1IEMxMy4xMzIxNTkxLDIwLjIxODE2NDYgMTMuMzAyOTEyNiwyMC4zMjYzMjQxIDEzLjQ5OTYwMTYsMjAuMzI2MzI0MSBDMTMuNjk1NzEwOSwyMC4zMjYzMjQxIDEzLjg2NTE2MDQsMjAuMjE5NzU4NCAxMy45NTgzMjUxLDIwLjA2Mjc3MTUgQzEzLjk5ODA5NzUsMjAuMDE2MTg5NyAxNC4wMTE3ODk3LDE5Ljk4NTkwOCAxNC4wMTE3ODk3LDE5Ljk4NTkwOCBMMTUuNTk1NzMzMywxNy40MDczMjMyIEwyMC4yMzY4Njc3LDE3LjQwNzMyMzIgQzIxLjk1NDQ3MjksMTcuNDA3MzIzMiAyMy4zNDc1MjMyLDE2LjAwOTcyNjQgMjMuMzQ3NTIzMiwxNC4yODU2MjI5IFogTTIwLjM5OTIxNzYsMiBDMjIuOTQxMDMyNywyIDI1LDQuMDU5NjY1ODEgMjUsNi42MDA0MzQ2NyBMMjUsMjAuNDAwNTc5NiBDMjUsMjIuOTQwNDA2NiAyMi45NDEwMzI3LDI1IDIwLjM5OTIxNzYsMjUgTDYuNTk5NDc4MzksMjUgQzQuMDU5NjE5MzIsMjUgMiwyMi45NDA0MDY2IDIsMjAuNDAwNTc5NiBMMiw2LjYwMDQzNDY3IEMyLDQuMDU5NjY1ODEgNC4wNTk2MTkzMiwyIDYuNTk5NDc4MzksMiBMMjAuMzk5MjE3NiwyIFogTTguMDAwMjk0OTIsMTEuOTcwMjU3MiBDOC40MzU2NzA1NywxMS45NzAyNTcyIDguNzg4NzYzNTUsMTEuNjMzMjkzOSA4Ljc4ODc2MzU1LDExLjIxNzY4MjUgQzguNzg4NzYzNTUsMTAuODAyMjExNyA4LjQzNTY3MDU3LDEwLjQ2NTMxODggOC4wMDAyOTQ5MiwxMC40NjUzMTg4IEM3LjU2NDk5MywxMC40NjUzMTg4IDcuMjExNTMxMzcsMTAuODAyMjExNyA3LjIxMTUzMTM3LDExLjIxNzY4MjUgQzcuMjExNTMxMzcsMTEuNjMzMjkzOSA3LjU2NDk5MywxMS45NzAyNTcyIDguMDAwMjk0OTIsMTEuOTcwMjU3MiBaIE04LjI3MDUxNTM3LDkuMzk1NzU5NDcgQzkuOTM2Mjk3MjgsOS4zOTU3NTk0NyAxMCwxMS4xNzk2OTUgMTAsMTEuMTc5Njk1IEMxMCwxMi45MzkyMiA4LjI3MDUxNTM3LDEzIDguMjcwNTE1MzcsMTMgQzcuNTMyNDc4MDcsMTMgNy4yMzk5OTExNSwxMi40OTYwMzI0IDcuMjM5OTkxMTUsMTIuNDk2MDMyNCBMNy4yMzk5OTExNSwxMi44NzgxNTg2IEw2LDEyLjg3ODE1ODYgTDYsOCBMNy4yMjc0NTcwNSw4IEw3LjIyNzQ1NzA1LDkuODU2Njc0NTUgQzcuNzIzNDM4NzcsOS4zOTU3NTk0NyA4LjI3MDUxNTM3LDkuMzk1NzU5NDcgOC4yNzA1MTUzNyw5LjM5NTc1OTQ3IFogTTEwLDggQzEyLjA1Nzk1ODIsOCAxMS45OTk4MzM4LDkuODM3MjY4NjggMTEuOTk5ODMzOCw5LjgzNzI2ODY4IEwxMS45OTk4MzM4LDEzIEwxMC42NDI1ODMyLDEzIEwxMC42NDI1ODMyLDEwLjEwNDk4NDggQzEwLjY0MjU4MzIsOS4xMDcxODUxNyAxMCw5LjEzMTU4NzExIDEwLDkuMTMxNTg3MTEgTDEwLDggWiBNMTQuOTc3NTI5LDExLjg1MjM0OTEgQzE1LjQwMTk3NywxMS44NTIzNDkxIDE1Ljc0NjMzNzcsMTEuNDc2ODAyOCAxNS43NDYzMzc3LDExLjAxMzYwMjggQzE1Ljc0NjMzNzcsMTAuNTUwNTU5NiAxNS40MDE5NzcsMTAuMTc1MDkxNiAxNC45Nzc1MjksMTAuMTc1MDkxNiBDMTQuNTUzMDA5MiwxMC4xNzUwOTE2IDE0LjIwODQzMjgsMTAuNTUwNTU5NiAxNC4yMDg0MzI4LDExLjAxMzYwMjggQzE0LjIwODQzMjgsMTEuNDc2ODAyOCAxNC41NTMwMDkyLDExLjg1MjM0OTEgMTQuOTc3NTI5LDExLjg1MjM0OTEgWiBNMTQuOTc3MTY5Niw5IEMxNy4wNjU2OTIxLDkgMTYuOTk5NzY3NSwxMS4wMTM2MDI4IDE2Ljk5OTc2NzUsMTEuMDEzNjAyOCBDMTYuOTk5NzY3NSwxMi45OTY3ODU1IDE0Ljk3NzE2OTYsMTMgMTQuOTc3MTY5NiwxMyBDMTIuOTM2MjM5MiwxMyAxMy4wMDAyMjI3LDExLjAxMzYwMjggMTMuMDAwMjIyNywxMS4wMTM2MDI4IEMxMy4wMDAyMjI3LDkuMDAwMzEzNjEgMTQuOTc3MTY5Niw5IDE0Ljk3NzE2OTYsOSBaIE0xOS4wNTM5MTE2LDExLjQzNzA2NTIgQzE5LjQ5MzgxLDExLjQzNzA2NTIgMTkuODUwNzA1OSwxMS4xMTYyMzg3IDE5Ljg1MDcwNTksMTAuNzIwNTMwMyBDMTkuODUwNzA1OSwxMC4zMjQ5NTU5IDE5LjQ5MzgxLDEwLjAwNDE5NjQgMTkuMDUzOTExNiwxMC4wMDQxOTY0IEMxOC42MTM3MTUyLDEwLjAwNDE5NjQgMTguMjU3MTkxOSwxMC4zMjQ5NTU5IDE4LjI1NzE5MTksMTAuNzIwNTMwMyBDMTguMjU3MTkxOSwxMS4xMTYyMzg3IDE4LjYxMzcxNTIsMTEuNDM3MDY1MiAxOS4wNTM5MTE2LDExLjQzNzA2NTIgWiBNMTkuNzk1MDQ4LDkuMTEyOTgxODUgTDIxLDkuMTEyOTgxODUgTDIxLDEyLjI1ODQyMTIgQzIxLDE0LjAxNzQwNzggMTkuMTg3OTUyNSwxMy45OTk5OTM0IDE5LjE4Nzk1MjUsMTMuOTk5OTkzNCBMMTguNzA2MTA1OCwxMy45OTk5OTM0IEwxOC43MDYxMDU4LDEzLjAxMjM5NyBMMTkuMDA0NzM2LDEzLjAxMjM5NyBDMTkuODgyMjIzLDEzLjAxMjM5NyAxOS43OTUwNDgsMTIuMTk3ODcyNyAxOS43OTUwNDgsMTIuMTk3ODcyNyBMMTkuNzk1MDQ4LDExLjkzNzY2MTcgQzE5LjQwOTc2NDQsMTIuMzg4MjI1MyAxOC43MDYxMDU4LDEyLjM2MjMwNDcgMTguNzA2MTA1OCwxMi4zNjIzMDQ3IEMxNi45ODA1NjI3LDEyLjM2MjMwNDcgMTcuMDAwMDA5NCwxMC43MDg3NDIxIDE3LjAwMDAwOTQsMTAuNzA4NzQyMSBDMTcuMDAwMDA5NCw4LjkzMzc0NzY3IDE4Ljc1NDM4NzMsOS4wMDAzMjQxOSAxOC43NTQzODczLDkuMDAwMzI0MTkgQzE5LjQzODU5OTIsOS4wMDAzMjQxOSAxOS43OTUwNDgsOS40MjQ2OTkzIDE5Ljc5NTA0OCw5LjQyNDY5OTMgTDE5Ljc5NTA0OCw5LjExMjk4MTg1IFoiLz4KPC9zdmc+Cg=="></a></li>
							<li class="nav-item"><a class="nav-link px-1"
								href="https://post.naver.com/my.nhn?memberNo=31892661"
								target="_blank"><img
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjYiIGhlaWdodD0iMjYiIHZpZXdCb3g9IjAgMCAyNiAyNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTYgMlYxNS42Mjk4SDE5LjYyOThWMkg2Wk0xNS43Mjk4IDExLjM5NDhIMTMuNzg2NUwxMS44Mjk5IDkuMTI5ODVWMTEuMzk0OEg5Ljg4NjU3VjYuMjIxNjJIMTIuMDQ0M0wxMy43NzMxIDguNDk5OTZWNi4yMjE2MkgxNS43Mjk4VjExLjM5NDhaIiBmaWxsPSIjRDRENEQ0Ii8+CjxwYXRoIGQ9Ik02IDE2LjgwOTFIMTkuNjI5OEwxNi4zODY1IDIwLjQ2NzlIOS4xODk2N0w2IDE2LjgwOTFaIiBmaWxsPSIjRDRENEQ0Ii8+CjxwYXRoIGQ9Ik0xMi42NjA4IDI0LjY2MjdMOS45NDAxOSAyMS43Njc5SDE1LjY3NjJMMTIuODA4MiAyNC42NjI3SDEyLjY2MDhaIiBmaWxsPSIjRDRENEQ0Ii8+Cjwvc3ZnPgo="></a></li>
							<li class="nav-item"><a class="nav-link px-1"
								href="https://www.youtube.com/channel/UCBXQEsRcvMuBsmyBBMemdhg"
								target="_blank"><img
									src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjYiIGhlaWdodD0iMjYiIHZpZXdCb3g9IjAgMCAyNiAyNiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0yMi4zNzY0IDUuNTA0NTVDMjMuNDA4NiA1Ljc4MjczIDI0LjIyMjcgNi42MDA5MSAyNC40OTgyIDcuNjRDMjUgOS41MjQ1NSAyNSAxMy40NTQ1IDI1IDEzLjQ1NDVDMjUgMTMuNDU0NSAyNSAxNy4zODQ1IDI0LjQ5ODIgMTkuMjY5MUMyNC4yMjI3IDIwLjMwODIgMjMuNDA4NiAyMS4xMjY0IDIyLjM3NjQgMjEuNDA0NUMyMC41MDU1IDIxLjkwOTEgMTMgMjEuOTA5MSAxMyAyMS45MDkxQzEzIDIxLjkwOTEgNS40OTQ1NSAyMS45MDkxIDMuNjIzNjQgMjEuNDA0NUMyLjU5MTM2IDIxLjEyNjQgMS43NzcyNyAyMC4zMDgyIDEuNTAxODIgMTkuMjY5MUMxIDE3LjM4NDUgMSAxMy40NTQ1IDEgMTMuNDU0NUMxIDEzLjQ1NDUgMSA5LjUyNDU1IDEuNTAxODIgNy42NEMxLjc3NzI3IDYuNjAwOTEgMi41OTEzNiA1Ljc4MjczIDMuNjIzNjQgNS41MDQ1NUM1LjQ5NDU1IDUgMTMgNSAxMyA1QzEzIDUgMjAuNTA1NSA1IDIyLjM3NjQgNS41MDQ1NVpNMTYuODE4MSAxMy40NTQ1TDEwLjU0NTQgMTcuMDIzMlY5Ljg4NTkxTDE2LjgxODEgMTMuNDU0NVoiIGZpbGw9IiNENEQ0RDQiLz4KPC9zdmc+Cg=="></a></li>
						</ul>
					</div>
				</div>
				<hr class="mt-1 mb-5 tmobi-dc-none">
				<div class="row">
					<div class="col-lg-8">
						<a href="./"
							class="js-btn-navbar-brand dc-flex align-items-center navbar-brand h-100 click-effect-press">YA-TA
						</a>
						<p class="mb-0 small text-muted">
							주식회사 ITwillbs | 대표자: 전창용 | 사업자등록번호: 000-00-00000 <a
								class="js-global-footer-business-license-link tmobi-dc-none"
								href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2868800238&amp;apv_perm_no="
								target="_blank">사업자정보확인</a><br>주소: 부산광역시 부산진구 부전동 112-3
							삼한골든게이트 7층 |<br>통신판매업신고: 제2019-서울강남-00000호 | 개인정보보호책임자: 전창용
						</p>
						<p class="small text-muted">Copyright TeamO2 Co., Ltd. All
							rights reserved.</p>
						<p class="small text-muted mt-4 mb-0 tmobi-dc-none">주식회사
							ITwillbs는 통신판매중개자로서 YATA의 거래당사자가 아니며 상품정보, 거래조건 및 거래에 관련한 의무와 책임은
							각 판매자에게 있습니다.</p>
						<p class="small text-muted mt-4 mb-0 dc-none tmobi-dc-block">TMAP
							렌터카 운영사인 주식회사 ITwillbs는 YATA과 파트너십을 맺고 있습니다.</p>
						<p class="small text-muted mt-3 mb-0 dc-none tmobi-dc-block">주식회사
							ITwillbs는 통신판매중개자로서 YATA 렌터카의 거래당사자가 아니며 상품정보, 거래조건 및 거래에 관련한 의무와
							책임은 각 판매자에게 있습니다.</p>
					</div>
					<div class="col-lg-3 offset-lg-1">
						<div class="text-14 text-muted mt-5 mt-lg-0">고객센터</div>
						<h4
							class="js-global-footer-btn-custom-cs-tel js-txt-custom-cs-tel dc-inline-block color-blue font-weight-bold my-3"
							role="button">1588-8282</h4>
						<div class="small text-muted">
							매일(공휴일 포함) 오전 9시 ~ 오후 6시<br>점심시간 오후 12시30분 ~ 1시30분 (1시간)
						</div>
						<div class="small text-muted">국내문의:yata@yata.kr</div>
						<div class="small text-muted">해외문의:yata@yata.kr</div>
					</div>
				</div>
			</div>
		</div>
	</footer>


</body>
</html>