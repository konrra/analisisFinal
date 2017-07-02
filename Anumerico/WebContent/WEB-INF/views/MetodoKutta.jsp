<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<!--     <link rel="stylesheet" href="webjars/bootstrap/4.00.0-alpha.6/css/bootstrap.min.css"> -->
<title>Insert title here</title>
</head>
<body>
	<div style="margin-top: 1%">

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
	</div>
	<br>
	<br>
	<div class="container">
      <div class="page-header">
        <h1 style="color:#003366">Método Runge Kutta</h1>
      </div>
		<p class="lead" style="color: #5a5151;">Los métodos de Taylor
			tienen la propiedad de un error local de truncamiento de orden
			superior, pero la desventaja de requerir el cálculo y la evaluación
			de las derivadas de f(t, y).Esto resulta algo lento y complicado, en
			la mayoría de los problemas, razón por la cual, en la práctica casi
			no se utilizan. El método de Euler, lamentablemente requiere de un
			paso muy pequeño para una precisión razonable. Los métodos de Runge
			kutta tienen el error local de truncamiento del mismo orden que los
			métodos de Taylor, pero prescinden del cálculo y evaluación de las
			derivadas de la función f(t, y).</p>
		<!--       <p>Back to <a href="../sticky-footer">the default sticky footer</a> minus the navbar.</p> -->
    </div>
<!--     <div class="row" style="margin-left:380px;"> -->
<!-- 	<img data-src="holder.js/500x500/auto" alt="500x500" data-holder-rendered="true" src="http://www.monografias.com/trabajos82/rutina-c-resolver-ecuaciones-diferenciales/image003.jpg"> -->
<!-- 	</div>	 -->
</body>
</html>