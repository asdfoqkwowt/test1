<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>


<head>
<meta charset="UTF-8">
<title>밍글빙글</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"	rel="stylesheet">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/footer.css">
<script type="text/javascript">
    var wnd = window.open("","info", "width=500, height=300");
    wnd.document.write(
        "<h2>배송안내</h2>",
        "<hr>",        
        "<p>안녕하세요 밍글빙글입니다</p>",
        "<p>주문전 꼭 확인부탁드립니다.!</p>",
        "<p>상품발송은!</p>",
        "<p>상품 설명에도 안내드렸듯이 전부 수작업이기 때문에 </p>", 
        "<p>영업일기준(평일) 7일~10일​로 안내드리고 있습니다.</p> </p>",        
        "<p>꼭!!! 발송기간 확인 후 주문부탁드립니다.</p>"
    )
</script>

<body> 
<div id="body-wrapper">
    <div id="body-content">
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
    <section class="product_title">
        <h2>전체상품</h2>
    </section>
    <!-- 그리드 컬럼 4개씩 나누기-->
    <section id="product">    
    <div class="row" >
        <div class="col"><div class="card" style="width: 17rem;">
            <a href="main?cmd=detail&pno=1"><img src="img/product/product-1.jpg" class="card-img-top" alt=""></a>
            <div class="card-body">
              <h5 class="card-title">현금챌린지 바인더</h5>
              <p class="card-text">2000원</p>
              <a href="main?cmd=detail&pno=1" class="btn btn-primary" id="selectButton">보러가기</a>                     
            </div>
          </div></div>
       <div class="col"> <div class="card" style="width: 17rem;">
        <a href="main?cmd=detail&pno=2"><img src="img/product/product-2.jpg" class="card-img-top" alt=""></a>
        <div class="card-body">
          <h5 class="card-title">현금챌린지 바인더</h5>
          <p class="card-text">6000원</p>
          <a href="main?cmd=detail&pno=2" class="btn btn-primary" id="selectButton">보러가기</a>            
        </div>
      </div></div>
       <div class="col"> <div class="card" style="width: 17rem;">
        <a href="main?cmd=detail&pno=3"><img src="img/product/product-3.jpg" class="card-img-top" alt=""></a>
        <div class="card-body">
          <h5 class="card-title">현금챌린지 바인더</h5>
          <p class="card-text">3600원</p>
          <a href="main?cmd=detail&pno=3" class="btn btn-primary" id="selectButton">보러가기</a>            
        </div>
      </div></div>
       <div class="col"> <div class="card" style="width: 17rem;">
        <a href="main?cmd=detail&pno=4"><img src="img/product/4.jpg" class="card-img-top" alt=""></a>
        <div class="card-body">
          <h5 class="card-title">현금챌린지 바인더</h5>
          <p class="card-text">5400원</p>
          <a href="main?cmd=detail&pno=4" class="btn btn-primary" id="selectButton">보러가기</a>            
        </div>
      </div></div>
    </div>
    <div class="row" >
        <div class="col"><div class="card" style="width: 17rem;">
            <a href="main?cmd=detail&pno=5"><img src="img/product/5.jpg" class="card-img-top" alt=""></a>
            <div class="card-body">
              <h5 class="card-title">벌어짐 방지 클립 북마크</h5>
              <p class="card-text">8000원</p>
              <a href="main?cmd=detail&pno=5" class="btn btn-primary" id="selectButton">보러가기</a>            
            </div>
          </div></div>
       <div class="col"> <div class="card" style="width: 17rem;">
        <a href="main?cmd=detail&pno=6"><img src="img/product/6.jpg" class="card-img-top" alt=""></a>
        <div class="card-body">
          <h5 class="card-title">소삭작가님과 콜라보 진행된 현금챌린지</h5>
          <p class="card-text">6000원</p>
          <a href="main?cmd=detail&pno=6" class="btn btn-primary" id="selectButton">보러가기</a>            
        </div>
      </div></div>
       <div class="col"> <div class="card" style="width: 17rem;">
        <a href="main?cmd=detail&pno=7"><img src="img/product/7.jpg" class="card-img-top" alt=""></a>
        <div class="card-body">
          <h5 class="card-title">현금챌린지 바인더 밍카 요일별</h5>
          <p class="card-text">15000원</p>
          <a href="main?cmd=detail&pno=7" class="btn btn-primary" id="selectButton">보러가기</a>            
        </div>
      </div></div>
       <div class="col"> <div class="card" style="width: 17rem;">
        <a href="main?cmd=detail&pno=8"><img src="img/product/8.jpg" class="card-img-top" alt=""></a>
        <div class="card-body">
          <h5 class="card-title">현금챌린지 바인더 밍카 주차별</h5>
          <p class="card-text">10000원</p>
          <a href="8" class="btn btn-primary" id="selectButton">보러가기</a>            
        </div>
      </div></div>
    </div>
    <div class="row" >
        <div class="col"><div class="card" style="width: 17rem;">
            <a href="main?cmd=detail&pno=9"><img src="img/product/9.jpg" class="card-img-top" alt=""></a>
            <div class="card-body">
              <h5 class="card-title">현금챌린지 바인더 지폐 키링(오만원)</h5>
              <p class="card-text">9900원</p>
              <a href="main?cmd=detail&pno=9" class="btn btn-primary" id="selectButton">보러가기</a>            
            </div>
          </div></div>
       <div class="col"> <div class="card" style="width: 17rem;">
        <a href="main?cmd=detail&pno=10"><img src="img/product/10.jpg" class="card-img-top" alt=""></a>
        <div class="card-body">
          <h5 class="card-title">밍카 그립톡 스마트톡 얼굴버전/전체버전</h5>
          <p class="card-text">11000원</p>
          <a href="main?cmd=detail&pno=10" class="btn btn-primary" id="selectButton">보러가기</a>            
        </div>
      </div></div>
       <div class="col"> <div class="card" style="width: 17rem;">
        <a href="main?cmd=detail&pno=11"><img src="img/product/11.jpg" class="card-img-top" alt=""></a>
        <div class="card-body">
          <h5 class="card-title">현금챌린지 바인더 지폐 키링(만원)</h5>
          <p class="card-text">9900원</p>
          <a href="main?cmd=detail&pno=11" class="btn btn-primary" id="selectButton">보러가기</a>            
        </div>
      </div></div>
       <div class="col"> <div class="card" style="width: 17rem;">
        <a href="main?cmd=detail&pno=12"><img src="img/product/12.jpg" class="card-img-top" alt=""></a>
        <div class="card-body">
          <h5 class="card-title">NEW 현금	바인더 현금챌린지 밍카도사</h5>
          <p class="card-text">24,700원</p>
          <a href="main?cmd=detail&pno=12" class="btn btn-primary" id="selectButton">보러가기</a>            
        </div>
      </div></div>
    </div>
    <div class="row" >
        <div class="col"><div class="card" style="width: 17rem;">
            <a href="main?cmd=detail&pno=13"><img src="img/product/13.jpg" class="card-img-top" alt=""></a>
            <div class="card-body">
              <h5 class="card-title">현금챌린지 바인더 속지 포켓 저축</h5>
              <p class="card-text">1800원</p>
              <a href="main?cmd=detail&pno=13" class="btn btn-primary" id="selectButton">보러가기</a>            
            </div>
          </div></div>
       <div class="col"> <div class="card" style="width: 17rem;">
        <a href="#"><img src="img/mainlogo.PNG" class="card-img-top" alt=""></a>
        <div class="card-body">
          <h5 class="card-title">상품</h5>
          <p class="card-text">준비중</p>
          <a href="#" class="btn btn-primary" id="selectButton">보러가기</a>            
        </div>
      </div></div>
       <div class="col"> <div class="card" style="width: 17rem;">
        <a href="#"><img src="img/mainlogo.PNG" class="card-img-top" alt=""></a>
        <div class="card-body">
          <h5 class="card-title">상품</h5>
          <p class="card-text">준비중</p>
          <a href="#" class="btn btn-primary" id="selectButton">보러가기</a>            
        </div>
      </div></div>
       <div class="col"> <div class="card" style="width: 17rem;">
        <a href="#"><img src="img/mainlogo.PNG" class="card-img-top" alt=""></a>
        <div class="card-body">
          <h5 class="card-title">상품</h5>
          <p class="card-text">준비중</p>
          <a href="#" class="btn btn-primary" id="selectButton">보러가기</a>            
        </div>
      </div></div>
    </div>      
    </section>
    </div>
    <div>
    <br>
    <br>
    <br>
    <br>
    </div>
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
    			<br><br>
                <p class="copyright">
                    &copy; <span class="this-year"></span> MingleBingle Company. All
                    Rights Reseved.
                </p>
            </div>
        </div>
        </footer>
        </div>        
</body>


