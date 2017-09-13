<?php
if(!isset($_SERVER['HTTP_REFERER'])){
    // redirect them to your desired location
    header('location:./main.php');
    exit;
}
	session_start();
	//include 'serv.php';
	if(isset($_SESSION['username'])) {
		$_loginSession = $_SESSION;
?>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Perfil Sociodemográfico</title>
  <link rel="stylesheet" type="text/css" href="css/style_perfil.css">
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script type="text/javascript" src="js/Chart.js"></script>
  <script type="text/javascript" src="js/events_perfil.js"></script>
  <script type="text/javascript" src="js/events.js"></script>
</head>

<body>
	<div id="header">
    	<button class="print" onClick="window.print();">Imprimir</button>
    </div>
    <hr>
  <div>
	<center><h1>Perfil Sociodemográfico</h1></center>
	<table class="tabla" cols="8">
		<tr>
			<td class="dato" colspan="1"><b>Nombre de la Institución:</b></td>
			<td class="dato" colspan="7">
				<select id="inst" class="txt" onChange="loadGraphs()"></select>
				<script type="text/javascript">loadElement('inst', 'instituciones', 'id_inst', 'name_inst', '');</script>
			</td>
		</tr>
		<tr>
			<th class="dato" colspan="8">CARACTERÍSTICAS PERSONALES</th>
		</tr>
		<tr>
			<th class="dato" colspan="2">Género</th>
			<th class="dato" colspan="6">Edad</th>
		</tr>
	</table>
	<table class="tabla" cols="8">
		<tr>
			<td colspan="2">
				<canvas id="g1" width=100% height=100%></canvas>
				<div id="genero"></div>
			</td>
			<td class="dato" colspan="3">
				<canvas id="g2f" width=100% height=100%></canvas>
				<div id="edadf"></div>
	    	</td>
	    	<td colspan="3">
				<canvas id="g2m" width=100% height=100%></canvas>
				<div id="edadm"></div>
			</td>
		</tr>
	</table>
	<table class="tabla" cols="8">
		<tr>
			<th class="dato" colspan="4">Estado Civil</th>
			<th class="dato" colspan="4">Personas a cargo</th>
		</tr>
	</table>
	<table class="tabla" cols="8">
		<tr>
			<td colspan="2">
				<canvas id="g3f" width=100% height=100%></canvas>
				<div id="estadof"></div>
	    	</td>
	    	<td colspan="2">
				<canvas id="g3m" width=100% height=100%></canvas>
				<div id="estadom"></div>
			</td>
			<td class="dato" colspan="2">
				<canvas id="g4f" width=100% height=100%></canvas>
				<div id="personasf"></div>
	    	</td>
	    	<td colspan="2">
				<canvas id="g4m" width=100% height=100%></canvas>
				<div id="personasm"></div>
			</td>
		</tr>
	</table>
	<br>
	<br>
	<table class="tabla" cols="8">
		<tr>
			<th class="dato" colspan="8">CARACTERISTICAS LABORALES</th>
		</tr>
		<tr>
			<th class="dato" colspan="4">Tipo de Vinculo</th>
			<th class="dato" colspan="4">EPS</th>
		</tr>
	</table>
	<table class="tabla" cols="8">
		<tr>
			<td colspan="2">
				<canvas id="g5f" width=100% height=100%></canvas>
				<div id="vinculof"></div>
	    	</td>
	    	<td colspan="2">
				<canvas id="g5m" width=100% height=100%></canvas>
				<div id="vinculom"></div>
			</td>
			<td class="dato" colspan="2">
				<canvas id="g6f" width=100% height=100%></canvas>
				<div id="epsf"></div>
	    	</td>
	    	<td colspan="2">
				<canvas id="g6m" width=100% height=100%></canvas>
				<div id="epsm"></div>
			</td>
		</tr>
	</table>
	<table class="tabla" cols="8">
		<tr>
			<th class="dato" colspan="4">ARL</th>
			<th class="dato" colspan="4">AFP</th>
		</tr>
	</table>
	<table class="tabla" cols="8">
		<tr>
			<td colspan="2">
				<canvas id="g7f" width=100% height=100%></canvas>
				<div id="arlf"></div>
	    	</td>
	    	<td colspan="2">
				<canvas id="g7m" width=100% height=100%></canvas>
				<div id="arlm"></div>
			</td>
			<td class="dato" colspan="2">
				<canvas id="g8f" width=100% height=100%></canvas>
				<div id="afpf"></div>
	    	</td>
	    	<td colspan="2">
				<canvas id="g8m" width=100% height=100%></canvas>
				<div id="afpm"></div>
			</td>
		</tr>
	</table>
	<table class="tabla" cols="8">
		<tr>
			<th class="dato" colspan="4">Antigüedad en la Institución</th>
			<th class="dato" colspan="4"></th>
		</tr>
	</table>
	<table class="tabla" cols="8">
		<tr>
			<td colspan="2">
				<canvas id="g17f" width=100% height=100%></canvas>
				<div id="antf"></div>
	    	</td>
	    	<td colspan="2">
				<canvas id="g17m" width=100% height=100%></canvas>
				<div id="antm"></div>
			</td>
			<td colspan="2">
	    	</td>
	    	<td colspan="2">
			</td>
		</tr>
	</table>
	<br>
	<br>
	<table class="tabla" cols="8">
		<tr>
			<th class="dato" colspan="8">NIVEL SOCIOCULTURAL</th>
		</tr>
		<tr>
			<th class="dato" colspan="4">Estrato Social</th>
			<th class="dato" colspan="4">Nivel de Escolaridad</th>
		</tr>
	</table>
	<table class="tabla" cols="8">
		<tr>
			<td colspan="2">
				<canvas id="g9f" width=100% height=100%></canvas>
				<div id="estratof"></div>
	    	</td>
	    	<td colspan="2">
				<canvas id="g9m" width=100% height=100%></canvas>
				<div id="estratom"></div>
			</td>
			<td class="dato" colspan="2">
				<canvas id="g10f" width=100% height=100%></canvas>
				<div id="nivelf"></div>
	    	</td>
	    	<td colspan="2">
				<canvas id="g10m" width=100% height=100%></canvas>
				<div id="nivelm"></div>
			</td>
		</tr>
	</table>

	<table class="tabla" cols="8">
		<tr>
			<th class="dato" colspan="4">Promedio de Ingresos</th>
			<th class="dato" colspan="4">Tenencia de Vivienda</th>
		</tr>
	</table>
	<table class="tabla" cols="8">
		<tr>
			<td colspan="2">
				<canvas id="g11f" width=100% height=100%></canvas>
				<div id="ingf"></div>
	    	</td>
	    	<td colspan="2">
				<canvas id="g11m" width=100% height=100%></canvas>
				<div id="ingm"></div>
			</td>
			<td class="dato" colspan="2">
				<canvas id="g12f" width=100% height=100%></canvas>
				<div id="vivf"></div>
	    	</td>
	    	<td colspan="2">
				<canvas id="g12m" width=100% height=100%></canvas>
				<div id="vivm"></div>
			</td>
		</tr>
	</table>
	<br>
	<br>
	<table class="tabla" cols="8">
		<tr>
			<th class="dato" colspan="8">CARACTERISITICAS DE SEGURIDAD Y SALUD</th>
		</tr>
		<tr>
			<th class="dato" colspan="4">Participación en Actividades de Salud en la Institución</th>
			<th class="dato" colspan="4">Enfermedades Diagnosticadas</th>
		</tr>
	</table>
	<table class="tabla" cols="8">
		<tr>
			<td colspan="2">
				<canvas id="g13f" width=100% height=100%></canvas>
				<div id="saludf"></div>
	    	</td>
	    	<td colspan="2">
				<canvas id="g13m" width=100% height=100%></canvas>
				<div id="saludm"></div>
			</td>
			<td class="dato" colspan="2">
				<canvas id="g14f" width=100% height=100%></canvas>
				<div id="enff"></div>
	    	</td>
	    	<td colspan="2">
				<canvas id="g14m" width=100% height=100%></canvas>
				<div id="enfm"></div>
			</td>
		</tr>
	</table>
	<table class="tabla" cols="8">
		<tr>
			<th class="dato" colspan="4">Fuma</th>
			<th class="dato" colspan="4">Uso de Tiempo Libre</th>
		</tr>
	</table>
	<table class="tabla" cols="8">
		<tr>
			<td colspan="2">
				<canvas id="g15f" width=100% height=100%></canvas>
				<div id="fumaf"></div>
	    	</td>
	    	<td colspan="2">
				<canvas id="g15m" width=100% height=100%></canvas>
				<div id="fumam"></div>
			</td>
			<td class="dato" colspan="2">
				<canvas id="g16f" width=100% height=100%></canvas>
				<div id="libref"></div>
	    	</td>
	    	<td colspan="2">
				<canvas id="g16m" width=100% height=100%></canvas>
				<div id="librem"></div>
			</td>
		</tr>
	</table>
	<script type="text/javascript">loadGraphs()</script>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="http://arrow.scrolltotop.com/arrow53.js"></script>
<noscript>Not seeing a <a href="http://www.scrolltotop.com/">Scroll to Top Button</a>? Go to our FAQ page for more info.</noscript>

</body>
</html>
<?php
		$_SESSION = $_loginSession;
	} else {
		echo '<script>window.location="index.php"; </script>';
	}
?>