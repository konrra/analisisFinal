<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<%-- <script type="text/javascript" src="${ctx}/include/jqplot/jquery.js"></script> --%>
<%-- <script type="text/javascript" src="${ctx}/include/jqplot/jquery.jqplot.js"></script> --%>
<link rel="stylesheet" type="text/css"
	href="${ctx}/include/jqplot/jquery.jqplot.css" />

<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript"
	src="${ctx}/include/jqplot/plugins/jqplot.canvasTextRenderer.js"></script>
<script type="text/javascript"
	src="${ctx}/include/jqplot/plugins/jqplot.canvasAxisLabelRenderer.js"></script>

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<!-- <script language="javascript" type="text/javascript" src="jquery.jqplot.min.js"></script> -->
<script src="http://code.jquery.com/jquery-migrate-1.1.0.js"></script>
<!-- <link rel="stylesheet" type="text/css" href="jquery.jqplot.css" /> -->
<head>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bienvenido</title>
<!-- Bootstrap CSS -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<%-- <link rel="stylesheet" type="text/css" href="${ctx}/include/bootstrap/css/bootstrap.min.css" /> --%>

</head>
<body>
	<nav id="mainNav"
		class="navbar navbar-inverse navbar-custom navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> Menu <i
						class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand page-scroll" href="${ctx}/">Metodos
					Numericos</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-left">
					<li class="hidden"><a href="${ctx}/"></a></li>
					<li><a class="page-scroll" href="${ctx}/PrimerMetodo">Euler</a></li>
					<li><a class="page-scroll" href="${ctx}/MetodoKutta">Runge-Kutt</a></li>
					<li><a class="page-scroll" href="${ctx}/MetodoHeun">Haun(euler mejorado)</a></li>
					<li><a class="page-scroll" href="${ctx}/Calculo">Calculo
							de metodo</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container" >
		<div class="jumbotron" style="color:#01395e" >
			<h1 style="color:#01395e">Pierre de Fermat</h1>
			<p>Fermat fue junto con René Descartes uno de los principales
				matemáticos de la primera mitad del siglo XVII. Descubrió el cálculo
				diferencial antes que Newton y Leibniz, fue cofundador de la teoría
				de probabilidades junto a Blaise Pascal e independientemente de
				Descartes, descubrió el principio fundamental de la geometría
				analítica.</p>
		</div>
	</div>
	<div class="container marketing">

		<!-- START THE FEATURETTES -->
		<h2 class="featurette-heading" style="color: #01395e">
			Investigaciones Matematicas</h2> 
		<hr class="featurette-divider">
		<div class="row featurette">
			<div class="col-md-7">
				
				<p class="lead">Se le atribuye la creación de la Geometría
					analítica (aplicación del álgebra simbólica a la geometría) quien
					escribió sobre estos temas antes que Descartes hubiera publicado su
					obra sobre el tema perdiendo la prioridad.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					data-src="holder.js/500x500/auto" alt="500x500"
					src="https://upload.wikimedia.org/wikipedia/commons/f/f3/Pierre_de_Fermat.jpg"
					data-holder-rendered="true">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7 col-md-push-5">
<!-- 				<h2 class="featurette-heading"><span class="text-muted">Investigaciones Matematicas</span> -->
<!-- 				</h2> -->
				<p class="lead">Las primeras aportaciones de Pierre de Fermat
					datan de 1629, cuando abordó la tarea de reconstruir algunas de las
					demostraciones perdidas del matemático griego Apolonio de Perga
					relativas a los lugares geométricos; a tal efecto desarrollaría,
					contemporánea e independientemente de René Descartes, un método
					algebraico para tratar cuestiones de geometría por medio de un
					sistema de coordenadas, de capital importancia para la constitución
					de la geometría analítica. Sirviéndose de los símbolos de François
					Viète, trató ampliamente la ecuación de la recta, y las de la
					hipérbola, la parábola y la circunferencia.</p>
			</div>
			<div class="col-md-5 col-md-pull-7">
<!-- 				<img class="featurette-image img-responsive center-block" -->
<!-- 					 alt="500x500" src="pierre.jpg" -->
<!-- 					data-holder-rendered="true"> -->
					
					<img  class="img-thumbnail" src="http://lh3.googleusercontent.com/-Mepddpx7H7c/VdKF6Oi47bI/AAAAAAAAp34/cnmWXVVFCnQ/clip_image009_thumb.png?imgmax=800" width="500" height="500">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
<!-- 				<h2 class="featurette-heading"> -->
<!-- 					And lastly, this one. <span class="text-muted">Checkmate.</span> -->
<!-- 				</h2> -->
				<p class="lead">En el ámbito de la óptica geométrica, tras
					asumir correctamente que cuando la luz se desplaza en un medio más
					denso su velocidad disminuye, demostró que el camino de un rayo
					luminoso entre dos puntos es siempre aquel que menos tiempo le
					cuesta recorrer; de dicho principio, denominado principio de
					Fermat, se deducen las leyes de la reflexión y la refracción. En
					1654, y como resultado de una larga correspondencia, desarrolló con
					Blaise Pascal los principios de la teoría de la probabilidad.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					data-src="holder.js/500x500/auto" alt="500x500"
					src="https://media1.britannica.com/eb-media/50/66650-004-4FF38AA7.jpg"
					data-holder-rendered="true">
			</div>
		</div>
		<strong>Integrantes</strong>

		<hr class="featurette-divider">
		<!-- /END THE FEATURETTES -->

		<div class="row">
			<div class="col-sm-3">
				<img class="img-circle"
					src="data:image/png;base64,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"
					alt="Generic placeholder image" width="140" height="140">
				<h2>Ingrid Landa</h2>
				<p>Ingrid Estefany Landa Rodríguez carnet 00053012</p>
			</div>

			<div class="col-sm-3">
				<img class="img-circle"
					src="data:image/png;base64,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"
					alt="Generic placeholder image" width="140" height="140">
				<h2>Luis Artiga</h2>
				<p>Luis Antonio Artiga Sanchez carnet 00061212</p>
			</div>
			<div class="col-sm-3">
				<img class="img-circle"
					src="data:image/png;base64,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"
					alt="Generic placeholder image" width="140" height="140">
				<h2>Susana Flores</h2>
				<p>Susana Stephanie Flores Vásquez carnet 00033112</p>
			</div>
			<div class="col-sm-3">
				<img class="img-circle"
					src="data:image/png;base64,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"
					alt="Generic placeholder image" width="140" height="140">
				<h2>Saul Ramos</h2>
				<p>Saul Antonio Ramos Canizales 00025613.</p>
			</div>
		</div>

		<!-- FOOTER -->
		<footer>
			<p class="pull-right">
				<a href="#">Back to top</a>
			</p>
			<!--         <p>© 2016 Company, Inc. · </p> -->
		</footer>

	</div>

</body>
</html>