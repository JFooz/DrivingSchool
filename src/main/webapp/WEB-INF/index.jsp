<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accueil</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="asset/css/style.css" rel= "stylesheet" />
</head>
<body>
	<div class = "container-fluid">
		<div class="row">
			<h1 class= "col-sm-12 col-lg-6">Hello World!</h1>
			<h1 class= "col-sm-12 col-lg-6">Autre titre</h1>
			<h1 class= "col-sm-12 col-lg-6">Encore un</h1>
		</div>
		<p>${msg}</p>
		<div class="row">
			<c:forEach items= "${list}" var= "eleve">
			<p class="col-3">${eleve.nom} ${eleve.prenom}</p>
		</c:forEach>
		</div>
	</div>
</body>
</html>
