<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>
	<h1 class="container">
		<h2 class="text-center">Tabel List Mahasiswa</h2>
		<div class="w-50 mx-auto">
			<form>
				<div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">Person
						Nim</label> <input type="text" class="form-control"
						aria-describedby="emailHelp">
				</div>
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Person
						Nama</label> <input type="text" class="form-control">
				</div>
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Person
						alamat</label> <input type="text" class="form-control">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>

		<c:if test="${!empty listPersons}">
			<table class="table table-striped w-75 mx-auto mt-5">
				<thead>
					<tr>
						<th scope="col">No</th>
						<th scope="col">Person Id</th>
						<th scope="col">Person Nim</th>
						<th scope="col">Person Nama</th>
						<th scope="col">Person Alamat</th>
						<th scope="col">Edit</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>
				<tbody>
					<%
					int count = 1;
					%>
					<c:forEach items="${listPersons}" var="person">
						<tr>
							<%
							request.setAttribute("count", count);
							%>
							<td><c:out value="${count }" /></td>
							<td scope="row">${person.id}</td>
							<td>${person.nim}</td>
							<td>${person.nama}</td>
							<td>${person.alamat}</td>
							<td><a href="<c:url value='/edit/${person.id}' />">
									<button type="button" class="btn btn-primary">Edit</button>
							</a></td>
							<td><a href="<c:url value='/remove/${person.id}' />">
									<button type="button" class="btn btn-danger">Delete</button>
							</a></td>
						</tr>
						<%
						count++;
						%>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
	</h1>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>