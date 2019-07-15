<%@include file="/WEB-INF/tagLib.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Accueil</title>
	<%@include file="/WEB-INF/link.jsp" %>
</head>
<body>

	<%@include file="/WEB-INF/menu.jsp" %>

	<div class="container-fluid">
		<div class="row">
			<h1 class="col-sm-12 col-lg-6">Hello World!</h1>
		</div>
		<p>${msg}</p>
		<div class="row">
			<c:forEach items="${list}" var="eleve">
				<p class="col-3">${eleve.nom} ${eleve.prenom}</p>
			</c:forEach>
		</div>
	</div>
	<%@include file="/WEB-INF/script.jsp" %>
</body>
</html>
