<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:include page="../includes/header.jsp"></jsp:include>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Board Register</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board Register Page</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<form role="form" action="/board/register" method="post">
					<div class="form-group">
						<label>Title</label><input type="text" class="form-control" name="title" value="sample">
					</div>
					<div class="form-group">
						<label>Text area</label>
						<textarea class="form-control" name="content" id="" cols="30" rows="3">test</textarea>
					</div>
					<div class="form-group">
						<label>Writer</label><input type="text" class="form-control" name="writer" value="user01">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
					<button type="reset" class="btn btn-default">Reset</button>
				</form>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../includes/footer.jsp"></jsp:include>