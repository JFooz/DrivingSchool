	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="<c:url value="/accueil" />">Driving School</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="<c:url value="/accueil" />"> Accueil<span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/seances-code" />">Calendrier</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/inscription" />">Inscription</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/Logout" />"><button type="button" id="logout" class="btn btn-danger">Logout</button></a></li>
			</ul>
		</div>
	</nav>