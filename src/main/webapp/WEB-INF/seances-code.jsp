<%@include file="/WEB-INF/tagLib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/WEB-INF/link.jsp"%>
</head>
<body>

	<%@include file="/WEB-INF/menu.jsp"%>

	<div classe="container-fluid">

		<p>${msg}</p>


		<div class="row">
			<c:forEach items="${seanceList}" var="seance">
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title">Seance code : ${seance.lieu}</h5>
						<h6 class="card-subtitle mb-2 text-muted">${seance.date}</h6>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="card-link">Card link</a> <a href="#"
							class="card-link">Another link</a>
					</div>
				</div>
			</c:forEach>
		</div>

	</div>

	<%@include file="/WEB-INF/script.jsp"%>
</body>
</html>