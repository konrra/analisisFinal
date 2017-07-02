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

	 <link rel="stylesheet" href="//cdn.jsdelivr.net/chartist.js/latest/chartist.min.css">
    <script src="//cdn.jsdelivr.net/chartist.js/latest/chartist.min.js"></script>

<script>

window.onload  = function() {

	new Chartist.Line('.ct-chart', {
		  labels: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'],
		  series: [
// 		    [12, 9, 7, 8, 5],
		    [2, 1, 3.5, 7, 3],
// 		    [1, 3, 4, 5, 6]
		  ]
		}, {
		  fullWidth: true,
		  showLine: false,
		  chartPadding: {
		    right: 40
		  }
		});
};

</script>
<title>Insert title here</title>
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
							de método</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<br>
	<br>

<div class="container">
      <div class="page-header">
        <h1 style="color:#003366">Método de Euler</h1>
      </div>
		<p class="lead" style="color:#5a5151;">Matemática y computación, el método de Euler,
			llamado así en honor a Leonhard Euler, es un procedimiento de
			integración numérica para resolver ecuaciones diferenciales
			ordinarias (EDO) a partir de un valor inicial dado. El método de
			Euler es el más simple de los métodos numéricos para resolver un
			problema de valor inicial, y el más simple de los Métodos de
			Runge-Kutta. El método de Euler es nombrado por Leonhard Euler, quien
			lo trató en su libro Institutionum calculi integralis (publicado en
			1768-1770).1 El método de Euler es un método de primer orden, lo que
			significa que el error local es proporcional al cuadrado del tamaño
			del paso, y el error global es proporcional al tamaño del paso. El
			método de Euler regularmente sirve como base para construir métodos
			más complejos.</p>
		<!--       <p>Back to <a href="../sticky-footer">the default sticky footer</a> minus the navbar.</p> -->
    </div>

<!-- 		<div style="margin-top: 20px; margin-left: 20px; margin-right: 20px" -->
<!-- 			class="panel panel-info"> -->
<!-- 			<div class="panel-heading"> -->
<!-- 				<h3 class="panel-title">Metodo de Euler</h3> -->
<!-- 			</div> -->
<!-- 			<hr> -->
<!-- 			<div> -->
<!-- 				<h3>Ingrese la función a evaluar</h3> -->
<!-- 				<table> -->
<!-- 					<tr> -->
<!-- 						<td>agregar f(x,y)</td> -->
<!-- 						<td><input type="text" name="funcion"></td> -->
<!-- 					</tr> -->


<!-- 				</table> -->
<!-- 			</div> -->

<!-- 			<div class="ct-chart ct-perfect-fourth"></div> -->

<!-- 			<hr> -->
<!-- 			<div class="panel-footer"> -->
<!-- 				<input class="btn btn-info" type="submit" value="resolver"> -->
<!-- 			</div> -->
<!-- 		</div> -->

</body>
</html>