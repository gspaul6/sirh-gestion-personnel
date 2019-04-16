<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-4.3.1-
dist/css/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SGP-App</title>
</head>


<body>
	<!-- Bootstrap nav bar -->
	<nav class="navbar navbar-expand-lg navbar-light "
		style="background-color: #e3f2fd;"> <a class="navbar-brand"
		href="#"> <img
		src="https://cdn.wallpaperjam.com/static/images/m/17/3d/173d110db45babd35e1b245f2dae0b3945f88a85.png"
		width="40" height="30" alt="">
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		<div class="navbar-nav">
			<a class="nav-item nav-link active" href="#">Collaborateurs <span
				class="sr-only">(current)</span></a> <a class="nav-item nav-link"
				href="#">Statistiques</a> <a class="nav-item nav-link" href="#">Activities</a>

		</div>
	</div>
	</nav>
	<!-- pub saying Nouveau collab -->
	<main> <section> <br>
	<br>
	<div class="row">
		<div class="col float-left">
			<h1 class="font-weight-bold ">Nouveau collaborateur:</h1>
		</div>
	</div>
	<br>
	<br>
	<br>
	<form action="http://localhost:8080/sgp/collaborateurs/nouveau"  method="post" class=" container-fluid was-validated ">
		<div class="form-group">
			<label for="uname">NOM:</label> <input type="text"
				class="form-control" id="uname" placeholder="Nom" name="uname"
				required>
			<div class="valid-feedback">Valid.</div>
			<div class="invalid-feedback">Please fill out this field.</div>
		</div>
		<div class="form-group">
			<label for="uname">PRENOM:</label> <input type="text"
				class="form-control" id="uname" placeholder="Prénom" name="uname"
				required>
			<div class="valid-feedback">Valid.</div>
			<div class="invalid-feedback">Please fill out this field.</div>
		</div>
		<div class="form-group">
			<label for="uname">Date de Naissence:</label> <input type="date"
				class="form-control" id="uname" placeholder="Date de Naissence"
				name="uname" required>
			<div class="valid-feedback">Valid.</div>
			<div class="invalid-feedback">Please fill out this field.</div>
		</div>
		<div class="form-group">
			<label for="uname">Addresse:</label> <input type="textarea"
				class="form-control" id="uname" placeholder="addresse" name="uname"
				required>
			<div class="valid-feedback">Valid.</div>
			<div class="invalid-feedback">Please fill out this field.</div>
		</div>

		<div class="form-group">
			<label for="pwd">Numero de securite social:</label> <input
				type="text" class="form-control" id="pwd" placeholder="number"
				name="pswd" required>
			<div class="valid-feedback">Valid.</div>
			<div class="invalid-feedback">Please fill out this field.</div>
		</div>



		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
	</section> </main>

</body>
</html>