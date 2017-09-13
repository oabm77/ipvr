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
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Acerca de Nosotros</title>
		<link rel="stylesheet" type="text/css" href="css/style_acerca.css">
  		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script type="text/javascript" src="js/events_main.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	
	<body>		
		<div class="container">

        <!-- Introduction Row -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Acerca de nosotros
                    <small>Es un gusto entrar en contácto con usted!</small>
                </h1>
                <p>Somos un equipo de Especialistas en Gerencia en Riesgos Laborales, Seguridad y Salud en el Trabajo, con capacidad para liderar, intervenir o asesorar programas de promoción, prevención y rehabilitación tanto en el trabajador como en su ambiente laboral. Altamente capacitados en realizar diagnósticos de la situación de salud de los trabajadores de una empresa, para formular propuestas de intervención de realización factible, orientadas a solucionar problemas existentes de Salud Ocupacional, partiendo del análisis del grado de desarrollo o del porcentaje de cumplimiento de la legislación vigente.  De ese modo, se contribuye a mejorar la calidad de vida de los trabajadores y a elevar la productividad de las empresas.</p>
            </div>
        </div>

        <!-- Team Members Row -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Nuestro equipo</h2>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="/images/Angela Rocio.png" alt="Angela Rocio Rodriguez Rubio">
                <h3>Angela Rocio Rodriguez Rubio
                    <small>Enfermera</small>
                </h3>
                <p>Profesional en Enfermería, Especialista en Gerencia en Riesgos Laborales, Seguridad y Salud en el Trabajo, con experiencia de 6 años áreas asistenciales, promoción y prevención en salud y salud pública.</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="/images/Juliana.jpg" alt="Juliana Rodriguez Suarez">
                <h3>Juliana Rodriguez Suarez
                    <small>Psicologa</small>
                </h3>
                <p>Profesional en Psicología, Especialista en Gerencia en Riesgos Laborales, Seguridad y Salud en el Trabajo, con 7 años de experiencia en el área organizacional enfatizada en empresa de servicios temporales.</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="/images/Luis Carlos.jpg" alt="Luis Carlos Bautista Jaime">
                <h3>Luis Carlos Bautista Jaime
                    <small>Ingeniero</small>
                </h3>
                <p>Ingeniero Industrial Especialista en Gerencia en Riesgos Laborales, Seguridad y Salud en el Trabajo, auditor interno ISO 9001, con 18 años de experiencia en sistemas de producción y logística entre los cuales se ha diseñado, desarrollado y auditado el Sistema de Gestión de Calidad ISO 9001 y 2 años de experiencia en diseño e implementación del Sistema de Gestión de la Seguridad y Salud en el Trabajo SG-SST.</p>
            </div>
        </div>

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; IPVR.host22.com 2017</p>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->
	</body>
</html>
<?php
		$_SESSION = $_loginSession;
	} else {
		echo '<script>window.location="index.php"; </script>';
	}
?>