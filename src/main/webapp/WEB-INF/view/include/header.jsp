<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta charset="UTF-8">
<title>밍글빙글</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.6.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/common.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/additional-methods.js"></script>
<script
	src="${pageContext.request.contextPath}/js/fileupload_validate.js"></script>
</head>
<body>
	<header class="headermain">
		<div class="container">
			<div
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<a href="/"
					class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
					<svg class="bi me-2" width="40" height="32" role="img"
						aria-label="Bootstrap">
                        <use xlink:href="#bootstrap" />
                    </svg>
				</a>

				<ul
					class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<li><a href="#" class="nav-link px-2 text-secondary"><img
							id="mainlogo" src="img/main_logo.jpg"></a></li>
					<li><a href="#" class="nav-link px-2 text-white" id="text1">밍카와
							함께하는 현금챌린지</a></li>
				</ul>

				<form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
					<input type="search" class="form-control" id="searchform"
						placeholder="검색어를 입력하세요" aria-label="Search">
				</form>
				<c:choose>
					<c:when test="${sessionScope.mvo==null}">
						<div class="text-end">
							<button class="btn btn-light rounded-pill px-3" type="button"
								onclick="location.href='member?cmd=login'" id="login"
								name="login">로그인</button>
							<button class="btn btn-light rounded-pill px-3" type="button"
								onclick="location.href='member?cmd=signup'" id="join"
								name="join">회원가입</button>
						</div>
					</c:when>
					<c:otherwise>
						<button type="button" id="logout" name="logout"
							onclick="location.href='member?cmd=logout'"
							class="btn btn-success">로그아웃</button>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</header>
	<div>
		<a href="#"><img class="mainlogo" src="img/main_logo.jpg"></a>
	</div>
</body>
</html>