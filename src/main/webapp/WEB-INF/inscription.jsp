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
	<div class="container-fluid">
	
		<form method="post" action="inscription" class="col-6">
           <div class="form-group">
				<label for="nom">Nom : </label>
           		<input type="text" class="form-control" placeholder="Entrer nom" name="nom" id="nom"  />
           		<p id ="nom-helper"></p>
           </div>
           <div class="form-group">
           		<label for="prenom">Prenom : </label>
           		<input type="text" class="form-control" placeholder="Entrer prénom" name="prenom" id="prenom" />
           		<p id ="prenom-helper"></p>
           </div>
           <div class="form-group">
           		<label for="age">Age : </label>
           		<input type="text" class="form-control" placeholder="Entrer âge" name="age" id="age" />
           		<p id ="age-helper"></p>
           </div>
           
           <button type="submit" class="btn btn-primary">Submit</button>
		</form>
	
	</div>
	<%@include file="/WEB-INF/script.jsp" %>
	<script src="asset/js/formVerif.js"></script>
</body>
</html>