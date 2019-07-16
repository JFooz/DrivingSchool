<%@include file="/WEB-INF/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accueil</title>
<%@include file="/WEB-INF/link.jsp"%>
</head>
<body>

	<%@include file="/WEB-INF/menu.jsp"%>

	<div class="container-fluid">

		<c:if test="${eleve != null}">
			<div class="jumbotron jumbotron-fluid">
				<div class="container">
					<h1 class="display-4">
						Bienvenue
						<c:out value="${eleve.prenom}" />
					</h1>
					<p class="lead">This is a modified jumbotron that occupies the
						entire horizontal space of its parent.</p>
				</div>
			</div>
		</c:if>


		<div class="row-4">
			<div class="row justify-content-center">
			
			
			<c:forEach items="${list}" var="eleve" varStatus="i">
				<div class="card" style="width: 18rem;">
					<img src="https://i.pravatar.cc/200?img=${i.count}" class="card-img-top" alt="...">
					<div class="card-body">
						<p class="card-text"><c:out value="${eleve.nom} ${eleve.prenom}" /></p>
					</div>
				</div>
			</c:forEach>
			</div>
		</div>

	
	<%@include file="/WEB-INF/script.jsp"%>
</body>
</html>
