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
				<form role="form" action="/board/modify" method="post">
					<div class="form-group">
						<label>Bno</label><input type="text" class="form-control" name="bno"
							value='<c:out value="${board.bno }" />' readonly>
					</div>
					<div class="form-group">
						<label>Title</label><input type="text" class="form-control" name="title"
							value='<c:out value="${board.title }" />' >
					</div>
					<div class="form-group">
						<label>Text area</label>
						<textarea class="form-control" cols="30" rows="3" name="content"
							><c:out value="${board.content }" /></textarea>
					</div>
					<div class="form-group">
						<label>Writer</label><input type="text" class="form-control" name="writer" readonly
							value='<c:out value="${board.writer }" />' >
					</div>
					<div class="form-group">
						<label>RegDate</label>
						<input type="text" class="form-control" readonly
							value="<fmt:formatDate pattern='yyyy-MM-dd' value='${board.regdate}' />">
					</div>
					<button type="submit" data-oper="modify" class="btn btn-default">Modify</button>
					<button type="submit" data-oper="remove" class="btn btn-danger">Remove</button>
					<button data-oper="list" class="btn btn-info">List</button>
				</form>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	console.log('before state : ', history.state);
	$(document).ready(function () {
		var formObj = $('form');
		$('button').on('click', function (e) {
			var operation = $(this).data('oper');
			if (operation == 'remove') {
				formObj.attr('action', '/board/remove');
			} else if (operation == 'list') {
				self.location = '/board/list';
				return;
			}
			formObj.submit();
		})
	});
</script>
<jsp:include page="../includes/footer.jsp"></jsp:include>