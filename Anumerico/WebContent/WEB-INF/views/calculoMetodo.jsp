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

window.onload = function(){
var data = {
		  labels: [${val_x} ],
		  series: [
		    [${val_y}],
		  ]
		};
var data1 = {
		  labels: [${heu_x} ],
		  series: [
		    [${heu_y}],
		  ]
		};
var data2 = {
		  labels: [${kut_x} ],
		  series: [
		    [${kut_y}],
		  ]
		};
		
	var options = {
			showLine: false,
			  width: '400px',
			  height: '300px'
			};
	
	new Chartist.Line('#charEuler', data, options);
	new Chartist.Line('#charHeun', data1, options);
	new Chartist.Line('#charKutta', data2, options);
		
		
	
	
};

function seleccionados(){ 
	
	  var metodo1;
	  var metodo2;
	  var metodo3;
	  if (document.getElementById('check1').checked){
	    metodo1=true;
	  }else{
		metodo1=false;
		  } ;
	  if (document.getElementById('check2').checked){
		  metodo2=true;
	  }else{
		metodo2=false;
		  };
	  if (document.getElementById('check3').checked){
		  metodo3=true;
	  	}else{
			metodo3=false;
		  } ; 
	  var Sele=metodo1+","+metodo2+","+metodo3;
	  console.log("valores de los datos")

	  document.getElementById("selec").value=Sele;
	  
	};
	
</script>
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
				<a class="navbar-brand page-scroll" href="${ctx}/">Métodos
					Numericos</a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-left">
					<li class="hidden"><a href="${ctx}/inicio"></a></li>
					<li><a class="page-scroll" href="${ctx}/PrimerMetodo">Euler</a></li>
					<li><a class="page-scroll" href="${ctx}/MetodoKutta">Runge-Kutt</a></li>
					<li><a class="page-scroll" href="${ctx}/MetodoHeun">Haun(euler mejorado)</a></li>
					<li><a class="page-scroll" href="${ctx}/Calculo">Calculo
							de metodo</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		</nav>
	</div>
	<br>
	<br>
	<form action="${ctx}/ImplementacionDeMetodos" method="post">
	<input type="hidden" name="selecionado" id="selec" value="N">
		<br>
		<div class="panel panel-success"
			style="float: none; margin-left: 5%; margin-right: 5%;">
			<div class="panel-heading">
				<strong>Ingreso de datos</strong>
			</div>
			<div class="panel-body form-horizontal">
				<div class="alert alert-info">Los campos con asterisco (*)
					son obligatorios</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" >
												* Metodo a utilizar </label>
												
											<div class="col-sm-7 form-inline">
												<div class="checkbox">
													<label> <input type="checkbox" id="check1" name="Euler" value="euler" > Euler
													</label> &nbsp;
												</div>
												<div class="checkbox">
													<label> <input type="checkbox" id="check2"  name="Heun" value="heun">Heung
													</label> &nbsp;
												</div>
												<div class="checkbox">
													<label> <input type="checkbox" id="check3" name="Rangekutta" value="range" > Kutta
													</label> &nbsp;
												</div>
											</div>
										</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">* Agregar f(x,y) :</label>
					<div class="col-sm-7 form-inline">
						<input class="form-control" type="text" name="funcion" value="${fun }">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">* Agregar Xo :</label>
					<div class="col-sm-7 form-inline">
						<input class="form-control" type="text" name="paso1" value="${pas1 }">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">* Agregar Yo(Xo):</label>
					<div class="col-sm-7 form-inline">
						<input class="form-control" type="text" name="paso2" value="${pas2 }">
					</div>
				</div>
				<div class="form-group" 	>
					<label class="col-sm-2 control-label">* Agregar Xn :</label>
					<div class="col-sm-7 form-inline">
						<input class="form-control" type="text" name="paso3" value="${pas3 }">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">* Agregar h :</label>
					<div class="col-sm-7 form-inline">
						<input class="form-control" type="text" name="pasoh" value="${pash }">
					</div>
				</div>
				<div class="row" >
				<c:if test="${valEuler != null}">
				
					<hr style="border-top: 3px solid #01395e; 
   border-bottom: 2px dashed #01395e; 
   border-left:none; 
   border-right:none; 
   height: 6px; ">
   <strong>Metodo Euler</strong>
					<br>
					<div class="form-group">
					<div class="col-md-4">
						<div class="table ">
							<table id="crudTable" width="100%"
								class="table table-condensed table-bordered table-striped">
								<thead>
									<tr>
										<th>Valores (X)</th>
										<th>Valores (Y)</th>
										<th>Valores F(X)</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${valEuler}" var="dto">
										<tr>
											<td><c:out value="${dto.rEuler1}"></c:out></td>
											<td><c:out value="${dto.rEuler2}"></c:out></td>
											<td><c:out value="0"></c:out></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						
<!-- 						<div class="row" > -->
							<div id="charEuler" class="ct-chart ct-perfect-fourth"></div>
<!-- 						</divx> -->
					</div>
					</div>
				</c:if>
				<c:if test="${valKuta != null}">
				
					<hr style="border-top: 3px solid #01395e; 
   border-bottom: 2px dashed #01395e; 
   border-left:none; 
   border-right:none; 
   height: 6px; ">
   <strong>Metodo Range-Kutta</strong>
					<br>
					<div class="form-group">
					<div class="col-md-4">
						<div class="table table-condensedx">
							<table id="crudTable" width="100%"
								class="table table-condensed table-bordered table-striped">
								<thead>
									<tr>
										<th>Valores (X)</th>
										<th>Valores (Y)</th>
										<th>Valores F(X)</th>
										<th>K1</th>
										<th>K2</th>
										<th>K3</th>
										<th>K4</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${valKuta}" var="dto">
										<tr>
											<td><c:out value="${dto.rKutta1}"></c:out></td>
											<td><c:out value="${dto.rKutta2}"></c:out></td>
											<td><c:out value="0"></c:out></td>
											<td><c:out value="${dto.respKutta1}"></c:out></td>
											<td><c:out value="${dto.respKutta2}"></c:out></td>
											<td><c:out value="${dto.respKutta3}"></c:out></td>
											<td><c:out value="${dto.respKutta4}"></c:out></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
						<div class="col-md-4" >
							<div id="charKutta" class="ct-chart ct-perfect-fourth" style="margin-top: 240px;" ></div>
						</div>
						
					</div>
				</c:if>
				<c:if test="${valHeung != null}">
				
					<hr style="border-top: 3px solid #01395e; 
   border-bottom: 2px dashed #01395e; 
   border-left:none; 
   border-right:none; 
   height: 6px; ">
   <strong>Metodo Heun(Euler mejorado)</strong>
					<br>
<!-- 					<div class="form-group"> -->
					<div class="col-md-4">
						<div class="table table-condensed">
							<table id="crudTable" width="100%"
								class="table table-condensed table-bordered table-striped">
								<thead>
									<tr>
										<th>Valores (X)</th>
										<th>Valores (Y)</th>
										<th>Valores F(X)</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${valHeung}" var="dto">
										<tr>
											<td><c:out value="${dto.rHeun1}"></c:out></td>
											<td><c:out value="${dto.rHeun2}"></c:out></td>
											<td><c:out value="0"></c:out></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-md-8">
					<div id="charHeun" class="ct-chart ct-golden-section"></div>
					</div>
<!-- 					</div> -->
				</c:if>
				</div>
			</div>
			<div class="panel-footer">
				<input class="btn btn-success" type="submit" onclick="seleccionados()" value="Calcular">
			</div>
		</div>
	</form>
</body>
</html>