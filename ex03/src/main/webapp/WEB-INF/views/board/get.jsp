<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="../includes/header.jsp"></jsp:include>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Read</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board Read Page</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<form id="operForm" role="form" action="/board/modify" method="get">
					<div class="form-group">
						<label>Bno</label><input type="text" class="form-control" name="bno"
							value='<c:out value="${board.bno }" />' readonly>
					</div>
					<div class="form-group">
						<label>Title</label><input type="text" class="form-control"
							value='<c:out value="${board.title }" />' readonly>
					</div>
					<div class="form-group">
						<label>Text area</label>
						<textarea class="form-control" cols="30" rows="3"
							readonly><c:out value="${board.content }" /></textarea>
					</div>
					<div class="form-group">
						<label>Writer</label><input type="text" class="form-control"
							value='<c:out value="${board.writer }" />' readonly>
					</div>
					<button data-oper="modify" class="btn btn-default">Modify</button>
					<button data-oper="list" class="btn btn-default">List</button>
				</form>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	console.log('before state : ', history.state);
	$(document).ready(function () {
		var operForm = $('form');
		$('button[data-oper="modify"]').on('click', function (e) {
			operForm.attr('action', '/board/modify').submit();
		})

		$('button[data-oper="list"]').on('click', function () {
			operForm.find('#bno').remove(); // 파라미터로 값을 넘기는 걸 안보이도록 한다.
			operForm.attr('action', '/board/list');
			operForm.submit();
		})
	})
</script>
<jsp:include page="../includes/footer.jsp"></jsp:include>
