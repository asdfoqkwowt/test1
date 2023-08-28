<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<html>
<meta charset="UTF-8">
<title>로 그 인</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/header.css">
<!-- <link rel="stylesheet" href="css/main.css"> -->
<link rel="stylesheet" type="text/css" href="css/login1.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/main.css">
<style>
main {
	background-color: white;
}
</style>
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
			<form action="member?cmd=login" method="post">
				<div class="login-wrap">
					<div class="login-html">
						<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
							for="tab-1" class="tab">Sign In</label> <input id="tab-2"
							type="radio" name="tab" class="sign-up"><label
							for="tab-2" class="tab">Sign Up</label>
						<div class="login-form">
							<div class="sign-in-htm">
								<div class="group">
									<label for="user" class="label">Id</label> <input id="user"
										type="text" class="input" name="userid" required
										placeholder="아이디 입력" maxlength='20'>
								</div>
								<div class="group">
									<label for="pass" class="label">Password</label> <input
										id="pass" type="password" class="input" data-type="password"
										name="pwd" required>
								</div>
								<div class="group">
									<input type="submit" class="button" value="Sign In">
								</div>
								<div class="hr"></div> v  
								<div class="foot-lnk">
									<a href="#forgot">Forgot Password?</a>
								</div>
							</div>							
			</form>
			<form action="member?cmd=signup" method="post">
				<div class="sign-up-htm">
					<div class="group">
						<label for="user" class="label">ID</label> <input type="text"
							id="uid" name="uid" class="input" autofocus
							placeholder="4자~16자 입력" required maxlength='20'>
							<input type="button" id="idck" name="idck" onclick="checkId()" value="중복 확인" >
							
					</div>
					<div class="group">
						<label for="pass" class="label">Password</label> <input
							type="password" class="input" id="pwd" name="pwd" required
							maxlength='20' placeholder="문자와숫자, 특수 기호 포함">
					</div>
					<div class="group">
						<label for="pass" class="label">Repeat Password</label> <input
							type="password" class="input" id="pass" name="pwd" required
							maxlength='20' placeholder="문자와숫자, 특수 기호 포함">
					</div>
					<div class="group">
						<label for="pass" class="label">Name</label> <input type="text"
							id="pass" name="name" class="input" required>
					</div>
					<div class="group">
						<label for="pass" class="label">Age</label> <input type="text"
							id="pass" name="age" class="input" required maxlength='5'
							required>
					</div>
					<div class="group">
						<label for="pass" class="label">Email Address</label> <input
							type="email" class="input" id="pass" name="umail" required>
					</div>
					<div class="group">
						<label for="pass" class="label">Address</label> <input type="text"
							id="pass" name="addr" class="input" required>
					</div>
					<div class="group">
						<label for="pass" class="label">Mobile</label> <input type="text"
							class="input" id="pass" name="phone" maxlength='11'
							placeholder="-제외">
					</div>
					<div class="group">
						<input type="submit" class="button" value="Sign Up">
					</div>
					<div class="hr"></div>
				</div>
			</form>
		</div>
	</div>
	</div>

	<div>
		
	</div>
	</div>
	<br><br> <br> <br> <br>
	<br> <br> <br> <br><br> <br> <br> <br>
	<%-- <%@ include file="../include/footer.jsp" %> --%>
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
				<br>
				<br>
				<p class="copyright">
					&copy; <span class="this-year"></span> MingleBingle Company. All
					Rights Reseved.
				</p>
			</div>
		</div>
	</footer>
	</div>
</body>
<script type="text/javascript">


//아이디 체크여부 확인 (아이디 중복일 경우 = 0 , 중복이 아닐경우 = 1 )
var idck = 0;
$(function() {
    //idck 버튼을 클릭했을 때 
    $("#idck").click(function() {
        
        //uid 를 param.
        var uid =  $("#uid").val(); 
        
        $.ajax({
            async: true,
            type : 'POST',
            data : uid,
            url : "idcheck.do",
            dataType : "json",
            contentType: "application/json; charset=UTF-8",
            success : function(data) {
                if (data.cnt > 0) {
                    
                    alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
                    //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
                    $("#divInputId").addClass("has-error")
                    $("#divInputId").removeClass("has-success")
                    $("#uid").focus();
                    
                
                } else {
                    alert("사용가능한 아이디입니다.");
                    //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
                    $("#divInputId").addClass("has-success")
                    $("#divInputId").removeClass("has-error")
                    $("#userpwd").focus();
                    //아이디가 중복하지 않으면  idck = 1 
                    idck = 1;
                    
                }
            },
            error : function(error) {
                
                alert("error : " + error);
            }
        });
    });
});
 
 
</script>

</html>