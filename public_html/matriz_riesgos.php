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
		<title>MATRIZ DE RIESGOS</title>
		<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/style_matriz_riesgos.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>        
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/events.js"></script>
        <script type="text/javascript" src="js/events_matriz_riesgos.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
              $('.rotate').css('height', $('.rotate').width()*2);
            });
        </script>
	</head>
	<body>
        <div id="header">
            <button class="print" onClick="window.print();">Imprimir</button>
        </div>
        <hr>
        <div id="main">
    		<h2 align="center">MATRIZ DE RIESGOS </h2>
            <form method="POST" action="updating_matriz_riesgos.php">
                <table class="tabla_inst" cols="8" align="center">
                    <tr>
                        <td class="" colspan="1"><b>Nombre de la Institución:</b></td>
                        <td class="" colspan="7">
                            <select id="inst" class="txt" onChange="loadMatrix()"></select>
                            <input type="hidden" name="id_inst" value="">
                            <script type="text/javascript">loadElement('inst', 'instituciones', 'id_inst', 'name_inst', '');</script>
                        </td>
                    </tr>
                </table>
                <table class="tabla" cellpadding="0" cellspacing="0" align="center">
                  <thead>
                  <tr>
                    <th class="rotate" rowspan="2">Proceso</th>
                    <th class="rotate" rowspan="2">Zona/Lugar</th>
                    <th class="rotate" rowspan="2">Actividades</th>
                    <th class="rotate" rowspan="2">Tareas</th>
                    <th class="rotate" rowspan="2">Rutinario (Si o No)</th>
                    <th class="" colspan="2">Peligro</th>
                    <th class="rotate" rowspan="2">Efectos posibles</th>
                    <th class=""  colspan="3">Controles existentes</th>
                    <th class="" colspan="7">Evaluación del riesgo</th>
                    <th class="rotate">Valoración del riesgo</th>
                    <th class=""  colspan="3">Criterios para establecer controles</th>
                    <th class="" colspan="5">Medidas Intervención</th>
                  </tr>
                  <tr>
                    <th class="rotate">Descripción</th>
                    <th class="rotate">Clasificación</th>
                    <th class="rotate">Fuente</th>
                    <th class="rotate">Medio</th>
                    <th class="rotate">Individuo</th>
                    <th class="rotate">Nivel de Deficiencia</th>
                    <th class="rotate">Nivel de Exposición</th>
                    <th class="rotate">Nivel de Probabilidad (NDxNE)</th>
                    <th class="rotate">Interpretación del nivel de probabilidad</th>
                    <th class="rotate">Nivel de Consecuencia</th>
                    <th class="rotate">Nivel de Riesgo (NR) e intervención</th>
                    <th class="rotate">Interpretación del NR</th>
                    <th class="rotate">Aceptabilidad del riesgo</th>
                    <th class="rotate">Nro Expuestos</th>
                    <th class="rotate">Peor Consecuencia</th>
                    <th class="rotate">Existencia Requisito Legal_Específico Asociado (Si o No)</th>
                    <th class="rotate">Eliminación</th>
                    <th class="rotate">Sustitución</th>
                    <th class="rotate">Controles de Ingenieria</th>
                    <th class="rotate">Controles Administrativos, Señalización, Advertencia</th>
                    <th class="rotate">Equipos/elementos de Protección Personal</th>
                  </tr>
                  </thead>
                  <tbody class="tablebody">
                  </tbody>
                </table>
                <hr>
                <input class="btn btn-info" type="submit" value="Guardar">
            </form>
        </div>
	</body>
</html>

<?php
		$_SESSION = $_loginSession;
	} else {
		echo '<script>window.location="index.php"; </script>';
	}
?>