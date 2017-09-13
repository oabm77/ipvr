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
		<title>Contáctenos</title>
		<link rel="stylesheet" type="text/css" href="css/style_main.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script type="text/javascript" src="js/events_main.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/events_contacto.js"></script>
	</head>
	
	<body>	
<div class="container">
<form method="POST" id="comments_form" class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Contáctenos</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="nombre">Nombre</label>  
  <div class="col-md-4">
  <input id="nombre" name="nombre" type="text" placeholder="Su nombre aquí" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="correo">Correo Electrónico</label>  
  <div class="col-md-4">
  <input id="correo" name="correo" type="text" placeholder="correo@dominio.com" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="comentario">Preguntas y comentarios</label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="comentario" name="comentario">Su comentario aquí.</textarea>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="enviar">Enviar Comentario</label>
  <div class="col-md-4">
    <button id="enviar" class="btn btn-primary" name="enviar" onClick="submit_form()">Enviar</button>
  </div>
</div>

</fieldset>
</form>		
</div>

<!-- Modal -->
<div id="response_modal" class="modal fade bs-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content" id="dialog-response">
            <br/><br/><h4>Mensaje</h4>
            <hr/>
            <p id="message"> </p>
            <br/>
        </div>
     </div>
</div>

	</body>
</html>
<?php
		$_SESSION = $_loginSession;
	} else {
		echo '<script>window.location="index.php"; </script>';
	}
?>