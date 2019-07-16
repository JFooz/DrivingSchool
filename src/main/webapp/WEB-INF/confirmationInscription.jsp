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
		<h1>Bonjour ${eleve.nom} ${eleve.prenom}. Votre inscription a bien été prise en compte.</h1>
	</div>
	<%@include file="/WEB-INF/script.jsp" %>
</body>
</html>
