<?php
	session_start();
	//include 'serv.php';
	if(isset($_SESSION['username'])) {
		$_loginSession = $_SESSION;
?>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Principal</title>
		<link rel="stylesheet" type="text/css" href="css/style_main.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script type="text/javascript" src="js/events_main.js"></script>
	</head>
	
	<body>		

		<header id="header">
			<div class="innertube">
				<h3>IDENTIFICACIÓN DE LOS PELIGROS Y LA VALORACIÓN DE LOS RIESGOS</h3>
			</div>
		</header>
				
		<main>
			<div class="main_content">
				
				<!-- <object data="http://idrd.gov.co/sitio/idrd/sites/default/files/imagenes/gtc450.pdf" height="100%" width="100%"></object> -->
				<!-- <iframe src="http://idrd.gov.co/sitio/idrd/sites/default/files/imagenes/gtc450.pdf" height="100%" width="100%"></iframe> -->
				<img id="presenta" src="images/Presenta.png" alt="Imágen de Presentación" width="100%" height="100%">
				<iframe src="" height="100%" width="100%" style="display: none;"></iframe>				
			</div>
		</main>

		<nav id="nav">
			<div class="innertube">
				<h3>Opciones</h3>
				<ul id="menu">
					<li><a href="inicio.php">Inicio</a></li>
					<li><a href="http://idrd.gov.co/sitio/idrd/sites/default/files/imagenes/gtc450.pdf">GTC 45</a></li>
					<li><a href="panel.php">Administración</a></li>
					<li><a href="encuesta.php">Encuesta</a></li>
					<li><a href="perfil.php">Perfil Sociodemográfico</a></li>
					<li><a href="evalua_riesgo.php">Evaluación de los Riesgos</a></li>
					<li><a href="matriz_riesgos.php">Matriz de Riesgos</a></li>
					<li><a href="acerca.php">Acerca de Nosotros</a></li>
					<li><a href="contacto.php">Contáctenos</a></li>
					<li><a href="logout.php">Cerrar Sesión</a></li>
				</ul>
			</div>
		</nav>	
		
		<footer id="footer">
			<div class="innertube" align="right">
				<p>Bogotá, Colombia 2017</p>
			</div>
		</footer>	
			
	</body>
</html>
<?php
		$_SESSION = $_loginSession;
	} else {
		echo '<script>window.location="index.php"; </script>';
	}
?>