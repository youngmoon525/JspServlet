<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<%@ include file="/include/header.jsp"%>
<!-- Section: Design Block -->
<section class="background-radial-gradient overflow-hidden">
  <style>
    .background-radial-gradient {
      background-color: hsl(218, 41%, 15%);
      background-image: radial-gradient(650px circle at 0% 0%,
          hsl(218, 41%, 35%) 15%,
          hsl(218, 41%, 30%) 35%,
          hsl(218, 41%, 20%) 75%,
          hsl(218, 41%, 19%) 80%,
          transparent 100%),
        radial-gradient(1250px circle at 100% 100%,
          hsl(218, 41%, 45%) 15%,
          hsl(218, 41%, 30%) 35%,
          hsl(218, 41%, 20%) 75%,
          hsl(218, 41%, 19%) 80%,
          transparent 100%);
    }

    #radius-shape-1 {
      height: 220px;
      width: 220px;
      top: -60px;
      left: -130px;
      background: radial-gradient(#44006b, #ad1fff);
      overflow: hidden;
    }

    #radius-shape-2 {
      border-radius: 38% 62% 63% 37% / 70% 33% 67% 30%;
      bottom: -60px;
      right: -110px;
      width: 300px;
      height: 300px;
      background: radial-gradient(#44006b, #ad1fff);
      overflow: hidden;
    }

    .bg-glass {
      background-color: hsla(0, 0%, 100%, 0.9) !important;
      backdrop-filter: saturate(200%) blur(25px);
    }
  </style>

  <div class="container px-4 py-5 px-md-5 text-center text-lg-start my-5">
    <div class="row gx-lg-5 align-items-center mb-5">
      <div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
        <h1 class="my-5 display-5 fw-bold ls-tight" style="color: hsl(218, 81%, 95%)">
          The best offer <br />
          <span style="color: hsl(218, 81%, 75%)">for your business</span>
        </h1>
        <p class="mb-4 opacity-70" style="color: hsl(218, 81%, 85%)">
          Lorem ipsum dolor, sit amet consectetur adipisicing elit.
          Temporibus, expedita iusto veniam atque, magni tempora mollitia
          dolorum consequatur nulla, neque debitis eos reprehenderit quasi
          ab ipsum nisi dolorem modi. Quos?
        </p>
      </div>

      <div class="col-lg-6 mb-5 mb-lg-0 position-relative">
        <div id="radius-shape-1" class="position-absolute rounded-circle shadow-5-strong"></div>
        <div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>

        <div class="card bg-glass">
          <div class="card-body px-4 py-5 px-md-5">
            <form method="post">
           
              <div class="form-outline mb-4">
                <input type="text" id="user_id" name="user_id" class="form-control" placeholder="아이디 입력" />
                <label class="form-label" for="user_id">아이디</label>
              </div>

              <div class="form-outline mb-4">
                <input type="password" id="user_pw" name="user_pw" class="form-control" placeholder="비밀번호 입력"
                	onkeypress=" if( event.keyCode==13 ) login() "
                  />
                <label class="form-label" for="user_pw">패스워드</label>
              </div>

           
              <a class="btn btn-primary btn-block mb-4" onclick="login();">
                로그인
              </a>

             </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<script type="text/javascript">
	function login() {
		if( $('#user_id').val() == ''){
			alert('아이디를 입력하세요.');
			$('#user_id').focus();//커서
			return;
		}else if( $('#user_pw').val() == ''){
			alert('비밀번호를 입력하세요.');
			$('#user_pw').focus();//커서
			return;
		}
		//페이지를 새로 요청x -> Controller나 다른 API에 데이터만 따로 요청을 하는 형태 -> 비동기 통신
		//XMLHttpRequest객체 , Http객체 : 코드가 조금 복잡함.
		//Jquery: Ajax
		//type: json..
		//method:post
		//url:어디에 요청할껀지.
		//data:어떤것을 전송할껀지.
		//success:실행되는 펑션
		//error:실행되는 펑션
		
		$.ajax({
			method:'post',
			url: 'login.me',
			data: { user_id:$('#user_id').val()  , user_pw:$('#user_pw').val()  },
			success: function ( res ) {
				if(res == '1'){
					//1.reload(x) , 로그인 페이지가 다시 나옴. -> session에 정보가 있다면 홈
					//2.href = '/mvc'
					//3.href = 'c:url value="/"'
					//    / <- 루트임
					location.href='/mvc';
				}else{
					alert('로그인 실패 ');
					$('#user_id').focus();
				}
			},
			error: function (req , text) {		
				alert(req.status + ' 오류! 다시 로그인 시도를 해주세요.');
			}
		});
		
			
			
		
		
	}

</script>

<%@ include file="/include/footer.jsp"%>
</html>