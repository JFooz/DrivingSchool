<%@include file="/WEB-INF/tagLib.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@include file="/WEB-INF/link.jsp" %>
</head>
<body>
	
	<%@include file="/WEB-INF/menu.jsp" %>
	
	<div classe="container-fluid">
		<p>hello</p>
		<div class="row">
		<c:forEach items="${seanceList}" var="seance">
			<p class="col-3">${seance.date} ${seance.lieu}</p>
		</c:forEach>
	</div>
	
	</div>

	<%@include file="/WEB-INF/script.jsp" %>
</body>
</html>