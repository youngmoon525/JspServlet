<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<%@ include file="/include/header.jsp"%>

 <section class="page-section">
 	<div class="container">
 	
 	<!-- foreach , mapper  , join ,   -->
 	 
 	 	<button type="button" class="btn btn-dark align-middle" id="insertModalBtn">신규 추가</button>
 	 
 		<table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col">순번</th>
		      <th scope="col">이름</th>
		      <th scope="col">성별</th>
		      <th scope="col">이메일</th>
		      <th scope="col">연락처</th>
		      <th scope="col">수정</th>
		      <th scope="col">삭제</th>
		    </tr>
		  </thead>
		  <tbody>
		  <!-- c:if , c:choose  ..
		  	when: test = 조건1
		  	when: test = 조건2
		  	otherwise: = else
		  	
		  	empty:리스트가 비어있거나 null인지
		  -->
		
		  <c:choose>
		  	<c:when test="${empty list}">
		  		<tr>
		  			<td colspan="6" class="text-center"> 데이터가 없습니다. </td>
		  		</tr>
		  	</c:when>
		  	<c:otherwise>
			  	<c:forEach items="${list}" var="vo" varStatus="i">
			      <tr>
			      <th scope="row">${i.index+1}</th>
			      <td>${vo.name }</td>
			      <td>${vo.gender }</td>
			      <td>${vo.email }</td>
			      <td>${vo.phone }</td>
			      <td><a onclick="updateCus(${i.index+1},${vo.customer_id});" class="btn btn-secondary">수정</a></td>
			      <td><a onclick="deleteCus(${vo.customer_id});" class="btn btn-danger">삭제</a></td>
			    </tr>
			  </c:forEach>
		  	</c:otherwise>
		  </c:choose>
		  
		  </tbody>
		</table>

 	</div>
 </section>
<!-- Modal -->
<div class="modal fade" id="insertModal" tabindex="-1" aria-labelledby="insertModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="insertModalLabel">고객 추가</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
    <form action="insert.cu" method="get">
      <div class="modal-body">
		  <div class="form-group">
		    <label for="name">이름</label>
		    <input type="text" class="form-control" id="name" name="name" placeholder="이름 입력">
		  </div>
		  <div class="form-group">
		    <label for="email">email</label>
		    <input type="email" class="form-control" id="email" name="email"  placeholder="email">
		  </div>
		  <div class="form-group">
		    <label for="phone">PHONE</label>
		    <input type="tel" class="form-control" id="phone" name="phone"  placeholder="phone">
		  </div>
		  <div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="남">
		  <label class="form-check-label" for="inlineRadio1">남</label>
		  </div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="여">
			  <label class="form-check-label" for="inlineRadio2">여</label>
			</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <input type="submit" class="btn btn-primary" value="추가"/>
      </div>
    </form>
      
    </div>
  </div>
</div>
	
<!-- updateModal -->
<div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="updateModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="updateModalLabel">고객 정보 수정</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
    <form action="update.cu" method="get">
      <input type="hidden" name="customer_id">
      <div class="modal-body">
		  <div class="form-group">
		    <label for="name">이름</label>
		    <input type="text" class="form-control" id="name" name="name" placeholder="이름 입력">
		  </div>
		  <div class="form-group">
		    <label for="email">email</label>
		    <input type="email" class="form-control" id="email" name="email"  placeholder="email">
		  </div>
		  <div class="form-group">
		    <label for="phone">PHONE</label>
		    <input type="tel" class="form-control" id="phone" name="phone"  placeholder="phone">
		  </div>
		  <div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="남">
		  <label class="form-check-label" for="inlineRadio1">남</label>
		  </div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="여">
			  <label class="form-check-label" for="inlineRadio2">여</label>
			</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <input type="submit" class="btn btn-primary" value="수정"/>
      </div>
    </form>
      
    </div>
  </div>
</div>
		
	

<script type="text/javascript">
	function updateCus(idx , customer_id) {
		console.log(idx + " : " + customer_id);
		var name = $('table tr:eq('+ idx+') td:eq(0)').text();
		var gender = $('table tr:eq('+ idx+') td:eq(1)').text();
		var email = $('table tr:eq('+ idx+') td:eq(2)').text();
		var phone = $('table tr:eq('+ idx+') td:eq(3)').text();
		console.log(name + " " + gender + " " + email + " " + phone );
		$('#updateModal input[name=customer_id]').val(customer_id);
		$('#updateModal input[name=name]').val(name);
		$('#updateModal input[name=email]').val(email);
		$('#updateModal input[name=phone]').val(phone);
		$('#updateModal input[name=gender][value=' + gender +']').click();
		$('#updateModal').modal('show');
		
	}

	function deleteCus(customer_id) {
		if(confirm('정말 삭제 하시겠습니까?')){
			location.href='delete.cu?customer_id=' + customer_id;
		}
	}
	
	$('#insertModalBtn').on("click", function () {
		//$('#insertModal').toggle();
		$('#insertModal').modal('show'); //<- 위에 코드가 오류라면 이걸로 대처
		
	});

</script>

<%@ include file="/include/footer.jsp"%>
</html>