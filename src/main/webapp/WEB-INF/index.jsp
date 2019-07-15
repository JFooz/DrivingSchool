<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accueil</title>
</head>
<body>
	<h1>Hello World!</h1>
	<p>${msg}</p>
	<c:forEach items= "${list}" var= "eleve">
		<p>${eleve.nom} ${eleve.prenom}</p>
	</c:forEach>
</body>
</html>
