<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/detailview.css">

</head>
<body>
	<main>
		<hr>
		<div class="main-menu">
			<ul class="main-list">
				<a href="#">
					<li>베스트</li>
				</a>
				<a href="#">
					<li>현금챌린지</li>
				</a>
				<a href="#">
					<li>세이빙챌린지</li>
				</a>
				<a href="#">
					<li>키링</li>
				</a>
				<a href="#">
					<li>밍카 굿즈</li>
				</a>
				<a href="#">
					<li>전체상품</li>
				</a>
				<a href="#" class="qna">
					<li>묻고 답하기</li>
				</a>
				<a href="#" class="qna">
					<li>공지사항</li>
				</a>
				<a href="#" class="qna">
					<li>리뷰이벤트</li>
				</a>
				<a href="#" class="qna">
					<li>쇼핑스토리</li>
				</a>
				<a href="#" class="qna">
					<li>판매자 정보</li>
				</a>
			</ul>
		</div>
		<hr>
	</main>
	<div id="body-wrapper">
		<div id="body-content">
			<div class="contain">
				<div class="wrapper">
					<div class="contacts">
						<img src="${vo.savepath }">
					</div>
					<div class="form">
						<h3>Detail View</h3>						
						<form action="">
							<ul>
								<li><label for="pname">제품명</label></li>
								<li><input type="text" size="100" value="${vo.pname }" readonly></li>
								<li>가격</li>
								<li>
								<li>
								<input type="text" value="<fmt:formatNumber type="currency" value="${vo.price }" />" readonly>
								</li>								
								<li>상세 설명</li>
								<li>
								<textarea cols="80" rows="10" readonly>${vo.content }</textarea>
								</li>			
							</ul>
						</form>
					</div>
				</div>
			</div>
		</div>
		<footer class="footer">
			<div id="all">
				<div class="wrap">
					<ul class="menu">
						<li><a href="#">개인정보처리방침</a></li>
						<li><a href="#">전자금융거래 이용약관</a></li>
						<li><a href="#">홈페이지 이용약관</a></li>
						<li><a href="#">위치정보 이용약관</a></li>
						<li><a href="#">안전거래 가이드</a></li>
					</ul>

					<div class="info">
						<span>사업자등록번호 211-11-22222</span> <span>(주)밍글빙글 대표이사 이젠</span> <span>TEL
							: 02) 3015-1100 / FAX : 02) 3015-1106</span> <span>개인정보 책임자 : 이젠</span>
					</div>
					<br> <br>
					<p class="copyright">
						&copy; <span class="this-year"></span> MingleBingle Company. All
						Rights Reseved.
					</p>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>