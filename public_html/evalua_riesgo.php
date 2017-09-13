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
		<title>Evaluación de los riesgos</title>
		<meta charset="utf-8">

<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

		<link rel="stylesheet" type="text/css" href="css/style_evalua_riesgo.css">
    <link rel="stylesheet" type="text/css" href="css/style_encuesta.css">
    
		<script type="text/javascript" src="js/events_evalua_riesgo.js"></script>
    <script type="text/javascript" src="js/load_questions.js"></script>
    <script type="text/javascript" src="js/events.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body>
		<h2 align="center">EVALUACIÓN DE LOS RIESGOS</h2>
		<form id="evalua" name="evalua" method="POST" action="">
			<table class="tabla" cols="12">
				<tr><td class="dato" colspan="12"><b>PREGUNTAS DE IDENTIFICACIÓN DE PELIGROS</b></td></tr>
				<tr><td class="dato" colspan="4"><b>Nombre de la Institución:</b></td>
					<td id="conInst" class="dato" colspan="8">
						<select id="inst" class="txt" onChange="refreshInst('inst', 'sac');"></select>
						<input type="hidden" name="inst" value="">
					</td>
				</tr>
        <tr>
          <td id="conSAC" class="dato" colspan="12">
            <b>Sede / Área / Cargo</b>
            <select id="sac" class="txt" onChange="findInst('inst', 'sac');">
              <option disabled selected value> -- Seleccione -- </option>
            </select>
            <input type="hidden" name="sac" value="">
          </td>
        </tr>
			</table>
      <script type="text/javascript">loadElement('inst', 'instituciones', 'id_inst', 'name_inst', '');</script>
      <div class="ajax-loader">
        <img src="images/Spinner.gif" alt="loading..." class="img-responsive"/>
      </div>
      <div id="divs">
  			<div id="1" style="display:block;"><script type="text/javascript">loadSiNoNA(0, 0, 4, 1);</script></div>
  			<div id="2" style="display:none;"><script type="text/javascript">loadSiNoNA(1, 5, 13, 1);</script></div>
  			<div id="3" style="display:none;"><script type="text/javascript">loadSiNoNA(2, 14, 19, 1);</script></div>
  			<div id="4" style="display:none;"><script type="text/javascript">loadSiNoNA(3, 20, 38, 1);</script></div>
  			<div id="5" style="display:none;"><script type="text/javascript">loadSiNoNA(4, 39, 59, 1);</script></div>
  			<div id="6" style="display:none;"><script type="text/javascript">loadSiNoNA(5, 60, 84, 1);</script></div>
  			<div id="7" style="display:none;"><script type="text/javascript">loadSiNoNA(6, 85, 87, 1);</script></div>
      </div>
			<table>
				<tr><td><div align="left"><input type="button" id="prev" class="btn btn-primary btn-large btn-addRemove addDel" value="&larr; Anterior" onClick="changeDiv(-1,7)" disabled></div></td>
          <td>
            <div align="center">
              <div class="contenedor">
                <p id="position">Página 1 de 7</p>
              </div>
            </div>
          </td>
					<td><div align="right"><input type="button" id="next" class="btn btn-primary btn-large btn-addRemove addDel" value="Siguiente &rarr;" onClick="changeDiv(1,7)"></div></td></tr>
			</table>
		</form>

		<script type="text/javascript" src="http://arrow.scrolltotop.com/arrow53.js"></script>

  <!-- Modal -->
  <div class="modal fade" id="modalD" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 id="modalD-title" class="modal-title">Nivel de Deficiencia - Pregunta #<span id="idQuestion"></span></h4>
        </div>
        <div class="modal-body">
          <form id="niveld">
          	
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" id="btnG" onClick="dataToMatrix();">Guardar</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>
  </div>
  <script type="text/javascript">showModal("Nivel de Deficiencia","d")</script>


  <div class="modal fade" id="modalE" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 id="modalE-title" class="modal-title">Nivel de Exposición - Pregunta #<span id="idQuestion"></span></h4>
        </div>
        <div class="modal-body">
          <form id="nivele">
            
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" id="btnG" onClick="dataToMatrix();">Guardar</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>
  </div>
  <script type="text/javascript">showModal("Nivel de Exposición","e")</script>


  <div class="modal fade" id="modalC" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 id="modalC-title" class="modal-title">Nivel de Consecuencia - Pregunta #<span id="idQuestion"></span></h4>
        </div>
        <div class="modal-body">
          <form id="nivelc">
            
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" id="btnG" onClick="dataToMatrix();">Guardar</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>
  </div>
  <script type="text/javascript">showModal("Nivel de Consecuencia","c")</script>

	</body>
</html>

<?php
		$_SESSION = $_loginSession;
	} else {
		echo '<script>window.location="index.php"; </script>';
	}
?>