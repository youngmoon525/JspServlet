<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%@ include file="/include/header.jsp"%>

<section class="h-100 h-custom" style="background-color: #212121;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-8 col-xl-6">
        <div class="card rounded-3">
          <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp"
            class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
            alt="Sample photo">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">회원가입</h3>

            <form class="px-md-2" action="join.me" method="post" autocomplete="off">

              <div class="form-outline mb-4">
                <input type="text" id="user_id" name="user_id" class="form-control" />
                <label class="form-label" for="user_id">아이디</label>
              </div>

              <div class="row mb-4 pb-2 pb-md-0 mb-md-3">
                <div class="col-md-6">
                  <div class="form-outline">
                    <input type="password" id="user_pw" name="user_pw"  class="form-control" />
                    <label class="form-label" for="user_pw">비밀번호</label>
                  </div>
                </div>
                  <div class="col-md-6">
                  <div class="form-outline">
                    <input type="password" id="user_pwchk" class="form-control" />
                    <label class="form-label" for="user_pwchk">비밀번호 확인</label>
                  </div>
                </div>
              </div>


  		 <div class="row mb-4 pb-2 pb-md-0 mb-md-3">
                <div class="col-md-6">
                  <div class="form-outline">
                    <input type="text" id="name" name="name" class="form-control" />
                    <label class="form-label" for="name">이름</label>
                  </div>
                </div>
              </div>
  		 <div class="row mb-4 pb-2 pb-md-0 mb-md-3">
      <div class="col-md-6">

                  <div class="form-outline">
                    <input type="email" id="email" name="email" class="form-control" />
                    <label class="form-label" for="email">이메일</label>
                  </div>

                </div>
</div>

			 <div class="row mb-4 pb-2 pb-md-0 mb-md-5">
			      <div class="col-md-12 mb-3">
			      	<a class="btn btn-primary" id="btn_post">주소 찾기</a>
			      </div>
                <div class="col-md-6">
                  <div class="form-outline">
                    <input type="text" id="address" name="address" class="form-control" />
                    <label class="form-label" for="form3Example1w">주소</label>
                  </div>

                </div>
                  <div class="col-md-6">

                  <div class="form-outline">
                    <input type="text" id="post" name="post" class="form-control" />
                    <label class="form-label" for="form3Example1w">주소2</label>
                  </div>

                </div>
              </div>
              <a class="btn btn-success btn-lg mb-1" id="btn_join">회원가입</a>

            </form>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	$('#btn_post').click(function () {
		    new daum.Postcode({
		        oncomplete: function(data) {
		            //data를 이용하여 address와 post에 데이터를 표시하기.
		            let address = data.userSelectedType=='R' ? data.roadAddress : data.jibunAddress;
		            
		            
		            $('#address').val(address);
		            $('#post').val(data.zonecode);
		        }
		    }).open();
	});
	
	$('#btn_join').click(function () {
		console.log('유효성 검사가 올바르게 진행되었는지??');
		$('form').submit();
	});
	
</script>


<%@ include file="/include/footer.jsp"%>
</html>