<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/register.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"	rel="stylesheet">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<h1>회원가입</h1>
	<form action="member?cmd=signup" method="post">
		<fieldset>			
			<ul>
				<li><label for="uid">아이디</label> <input type="text" id="uid" name="uid"
					autofocus placeholder="4자~20자 입력" required maxlength='20'></li>
				<li><label for="pwd1">비밀번호</label> <input type="password"
					id="pwd" name="pwd" required maxlength='20' placeholder="문자와숫자, 특수 기호 포함">
				</li>
				<li><label for="pwd2">비밀번호 확인</label> <input type="password"
					id="pwd1" name="pwd1" required maxlength='20'></li>
				<li><label for="name">이름</label> <input type="text" id="name" name="name"
					required></li>
				<li><label for="age">나이</label> <input type="text" id="age" name="age"
					required maxlength='5' required></li>
				<li><label for="umail">이메일</label> <input type="email"
					id="umail" name="umail" required></li>
				<li><label for="add">주소</label> <input type="text" id="addr" name="addr"
					required></li>
				<li><label for="phone">전화번호</label> <input type="text"
					id="phone" name="phone" maxlength='11' placeholder="-제외"></li>
			</ul>
		</fieldset>
		<div class="button">
			<input type="submit" id="signup" value="가입하기"> <input
				type="reset" id="cancel" onclick="history.back()" value="취소">
		</div>
		<div style="height: 20px"></div>
		<div>${message}</div>
	</form>
</body>
</html>