<?php
if(!isset($_SERVER['HTTP_REFERER'])){
    // redirect them to your desired location
    header('location:./main.php');
    exit;
}
	session_start();
	if(isset($_SESSION['username'])) {
		$_loginSession = $_SESSION;
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Encuesta</title>
		<meta charset="utf-8">
		<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" type="text/css" href="css/style_encuesta.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	  	<script>
	  		$( function() {
	    	$( "#fecha" ).datepicker({ dateFormat: 'dd-mm-yy'});
	  		} );
	  	</script>
	</head>
	<body>
		<script type="text/javascript" src="js/events_encuesta.js"></script>
		<script type="text/javascript" src="js/load_questions.js"></script>
		<script type="text/javascript" src="js/events.js"></script>
		<h3 align="center">ENCUESTA SOCIODEMOGRÁFICA Y DE IDENTIFICACIÓN DE PELIGROS EN LOS PUESTOS DE TRABAJO</h3>
		<form id="encuesta" name="encuesta" method="POST" action="query_encuestas.php">
			<div id="1" style="display:block;">
			<table class="tabla" cols="36">
				<tr><td class="dato" colspan="36"><b>Perfil Sociodemográfico</b></td></tr>
				<tr><td class="dato" colspan="36"><b>Diligencie la siguiente información de manera completa, marque con una X su respuesta.</b></td></tr>
				<tr><td class="dato" colspan="10"><b>Nombre de la Institución:</b></td>
					<td class="dato" colspan="26">
						<select id="id_inst" class="txt" onChange="loadTables('id_inst', 'id_sede', 'id_area', 'id_cargo')" required>
						</select></td></tr>
						<input type="hidden" name="id_inst" value="">
				<tr><td class="dato" colspan="5"><b>Sede:</b></td>
					<td class="dato" colspan="10">
						<select id="id_sede" class="txt" onChange="changeValueElementName('id_sede');" required>
						</select></td>
						<input type="hidden" name="id_sede" value="">
					<td class="dato" colspan="5"><b>Área:</b></td>
					<td class="dato" colspan="16">
						<select id="id_area" class="txt" onChange="changeValueElementName('id_area');" required>
						</select></td></tr>
						<input type="hidden" name="id_area" value="">
				<tr><td class="dato" colspan="5"><b>Cargo:</b></td>
					<td class="dato" colspan="20">
						<select id="id_cargo" class="txt" onChange="changeValueElementName('id_cargo');" required>
						</select></td>
						<input type="hidden" name="id_cargo" value="">
					<td class="dato" colspan="5"><b>Fecha:</b></td><td class="dato" colspan="6"><input id="fecha" class="txt" name="fecha" type="txt" placeholder="dd-mm-AA" required></td></tr>
				<tr><td class="dato" colspan="7"><b>Tipo de Contratación:</b></td>
					<td class="dato" colspan="5"><b>Dependiente</b></td><td><input type="radio" name="contrato" value="dependiente" onClick="disableInput('cual_contrato', true)" required></td>
					<td class="dato" colspan="5"><b>Contratista</b></td><td><input type="radio" name="contrato" value="contratista" onClick="disableInput('cual_contrato', true)"></td>
					<td class="dato" colspan="3"><b>Otro</b></td><td><input type="radio" name="contrato" value="otro" onClick="disableInput('cual_contrato', false)"></td>
					<td class="dato" colspan="13"><b>Cual:</b><input id="cual_contrato" class="txt" name="cual_contrato" disabled></td></tr>
				<tr><td class="dato" colspan="7"><b>Dominancia Manual:</b></td>
					<td class="dato" colspan="5"><b>Derecho</b></td><td><input type="radio" name="mano" value="derecho" required></td>
					<td class="dato" colspan="5"><b>Izquierdo</b></td><td><input type="radio" name="mano" value="izquierdo"></td>
					<td class="dato" colspan="5"><b>Ambidiestro</b></td><td><input type="radio" name="mano" value="Ambidiestro"></td>
					<td class="dato" colspan="6"><b>Antigüedad en el Cargo (Años)</b></td><td class="dato" colspan="5">
					<select id="antiguedad" name="antiguedad">
						<option>˂ 1 año</option>
						<option>de 1 a 5 años</option>
						<option>de 6 a 10 años</option>
						<option>de 11 a 15 años</option>
					</select></td></tr>
				<tr>
					<td class="dato" colspan="18"><b>1. ¿Está afiliado a EPS (Entidad Prestadora de Salud)?</b><br>
						a. Si<input type="radio" name="p1" value="Si" required><br>
						b. No<input type="radio" name="p1" value="No">
					</td>
					<td class="dato" colspan="18"><b>2. ¿Está afiliado a una ARL (Aseguradora de Riesgos Laborales)?</b><br>
						a. Si<input type="radio" name="p2" value="Si" required><br>
						b. No<input type="radio" name="p2" value="No">
					</td>
				</tr>
				<tr>
					<td class="dato" colspan="18"><b>3. ¿Está afiliado a una AFP (Administradora de Fondos de Pensiones)?</b><br>
						a. Si<input type="radio" name="p3" value="Si" required><br>
						b. No<input type="radio" name="p3" value="No">
					</td>
					<td class="dato" colspan="18"><b>4. Estrato Social</b><br>
						<table>
							<tr>
								<td>a. 1<input type="radio" name="p4" value="1" required></td>
								<td>c. 3<input type="radio" name="p4" value="3"></td>
								<td>e. 5<input type="radio" name="p4" value="5"></td>
							</tr>
							<tr>
								<td>b. 2<input type="radio" name="p4" value="2"></td>
								<td>d. 4<input type="radio" name="p4" value="4"></td>
								<td>f. 6<input type="radio" name="p4" value="6"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="dato" colspan="18"><b>5. Genero</b><br>
						a. Masculino<input type="radio" name="p5" value="Masculino" required><br>
						b. Femenino<input type="radio" name="p5" value="Femenino">
					</td>
					<td class="dato" colspan="18"><b>6. Edad</b><br>
						a. Menor de 18 años<input type="radio" name="p6" value="Menor de 18 años" required><br>
						b. 18 a 27 años<input type="radio" name="p6" value="18 a 27 años"><br>
						c. 28 a 37 años<input type="radio" name="p6" value="28 a 37 años"><br>
						d. 38 a 47 años<input type="radio" name="p6" value="38 a 47 años"><br>
						e. 48 años o más<input type="radio" name="p6" value="48 años o más">
					</td>
				</tr>
				<tr>
					<td class="dato" colspan="18"><b>7. Estado Civil</b><br>
						a. Casado (a) / Unión Libre<input type="radio" name="p7" value="Casado (a) / Unión Libre" required><br>
						b. Soltero (a)<input type="radio" name="p7" value="Soltero (a)"><br>
						c. Separado (a) / Divorciado (a)<input type="radio" name="p7" value="Separado (a) / Divorciado (a)"><br>
						d. Viudo (a)<input type="radio" name="p7" value="Viudo (a)">
					</td>
					<td class="dato" colspan="18"><b>8. Número de personas a cargo</b><br>
						a. Ninguna<input type="radio" name="p8" value="Ninguna" required><br>
						b. 1 a 3<input type="radio" name="p8" value="1 a 3"><br>
						c. 4 a 6<input type="radio" name="p8" value="4 a 6"><br>
						d. 7 o más personas<input type="radio" name="p8" value="7 o más personas">
					</td>
				</tr>
				<tr>
					<td class="dato" colspan="18"><b>9. Nivel de escolaridad</b><br>
						a. Primaria<input type="radio" name="p9" value="Primaria" required><br>
						b. Secundaria<input type="radio" name="p9" value="Secundaria"><br>
						c. Técnico / Tecnólogo<input type="radio" name="p9" value="Técnico / Tecnólogo"><br>
						d. Universitario<input type="radio" name="p9" value="Universitario"><br>
						e. Especialista / Maestría<input type="radio" name="p9" value="Especialista / Maestría"><br>
						f. Doctorado<input type="radio" name="p9" value="Doctorado">
					</td>
					<td class="dato" colspan="18"><b>10. Tenencia de vivienda</b><br>
						a. Propia<input type="radio" name="p10" value="Propia" required><br>
						b. Arrendada<input type="radio" name="p10" value="Arrendada"><br>
						c. Familiar<input type="radio" name="p10" value="Familiar">
					</td>
				</tr>
				<tr>
					<td class="dato" colspan="18"><b>11. Promedio de ingresos (S.M.L.V.) Salarios Mínimos Legales Vigentes.</b><br>
						a. Mínimo Legal Vigente<input type="radio" name="p11" value="Mínimo Legal Vigente" required><br>
						b. Entre 1 a 3 S.M.L.V.<input type="radio" name="p11" value="Entre 1 a 3 S.M.L.V."><br>
						c. Entre 3 a 5 S.M.L.V.<input type="radio" name="p11" value="Entre 3 a 5 S.M.L.V."><br>
						d. Entre 5 a 7 S.M.L.V.<input type="radio" name="p11" value="Entre 5 a 7 S.M.L.V."><br>
						e. Más de 7 S.M.L.V.<input type="radio" name="p11" value="Más de 7 S.M.L.V.">
					</td>
					<td class="dato" colspan="18"><b>12. Uso de tiempo libre</b><br>
						a. Otro trabajo<input type="radio" name="p12" value="Otro trabajo" required><br>
						b. Labores domésticas<input type="radio" name="p12" value="Labores domésticas"><br>
						c. Recreación y deporte<input type="radio" name="p12" value="Recreación y deporte"><br>
						d. Estudio<input type="radio" name="p12" value="Estudio"><br>
						e. Ninguno<input type="radio" name="p12" value="Ninguno">
					</td>
				</tr>
				<tr>
					<td class="dato" colspan="18"><b>13. ¿Ha participado en actividades de salud realizadas por la organización?</b><br>
						a. Vacunación<input type="radio" name="p13" value="Vacunación" required><br>
						b. Salud oral<input type="radio" name="p13" value="Salud oral"><br>
						c. Exámenes periódicos<input type="radio" name="p13" value="Exámenes periódicos"><br>
						d. Capacitaciones en Seguridad y Salud en el Trabajo<input type="radio" name="p13" value="Capacitaciones en Seguridad y Salud en el Trabajo"><br>
						e. Spa (Relajación)<input type="radio" name="p13" value="Spa (Relajación)"><br>
						f. Ninguna<input type="radio" name="p13" value="Ninguna">
					</td>
					<td class="dato" colspan="18"><b>14. ¿Le han diagnosticado alguna enfermedad?</b><br>
						a. Si<input type="radio" name="p14" value="Si" onClick="disableInput('p14t', false)" required><br>
						b. No<input type="radio" name="p14" value="No" onClick="disableInput('p14t', true)"><br>
						Cuál<br>
						<input id="p14t" class="txt" name="p14t" disabled>
					</td>
				</tr>
				<tr>
					<td class="dato" colspan="18"><b>15. ¿Practica algún deporte?</b><br>
						a. Si<input type="radio" name="p15" value="Si" onClick="hiddenInput('tiempoDeporte', 'p15r', 'visible', false)" required><br>
						b. No<input type="radio" name="p15" value="No" onClick="hiddenInput('tiempoDeporte', 'p15r', 'hidden', true)"><br><br>
						<div id="tiempoDeporte">
							Semanal<input type="radio" name="p15r" value="Semanal"><br>
							Quincenal<input type="radio" name="p15r" value="Quincenal"><br>
							Mensual<input type="radio" name="p15r" value="Mensual"><br>
							Ocasional<input type="radio" name="p15r" value="Ocasional">
						</div>
						<script type="text/javascript">hiddenInput('tiempoDeporte', 'p15r', 'hidden', true)</script>
					</td>
					<td class="dato" colspan="18"><b>16. ¿Fuma?</b><br>
						a. Si<input type="radio" name="p16" value="Si" onClick="disableInput('p16t', false)" required><br>
						b. No<input type="radio" name="p16" value="No" onClick="disableInput('p16t', true)"><br><br>
						Promedio diario	<input id="p16t" name="p16t" disabled>
					</td>
				</tr>
			</table>
			</div>
			<div id="2" style="display:none;"><script type="text/javascript">loadSiNoNA(0, 0, 4, 17);</script></div>
			<div id="3" style="display:none;"><script type="text/javascript">loadSiNoNA(1, 5, 13, 17);</script></div>
			<div id="4" style="display:none;"><script type="text/javascript">loadSiNoNA(2, 14, 19, 17);</script></div>
			<div id="5" style="display:none;"><script type="text/javascript">loadSiNoNA(3, 20, 38, 17);</script></div>
			<div id="6" style="display:none;"><script type="text/javascript">loadSiNoNA(4, 39, 59, 17);</script></div>
			<div id="7" style="display:none;"><script type="text/javascript">loadSiNoNA(5, 60, 84, 17);</script></div>
			<div id="8" style="display:none;"><script type="text/javascript">loadSiNoNA(6, 85, 87, 17);</script></div>
			<table>
				<tr><td><div align="left"><input type="button" id="prev" class="btn" value="&larr; Anterior" onClick="changeDiv(-1,8)" disabled></div></td>
					<td>
						<div align="center">
							<div class="container">
								<p id="position">Página 1 de 8</p>
							</div>
							<input type="submit" id="submitBtn" class="btn" value="Enviar" style="display:none;">
						</div>
					</td>
					<td><div align="right"><input type="button" id="next" class="btn" value="Siguiente &rarr;" onClick="changeDiv(1,8)"></div></td></tr>
			</table>
		</form>
		<script>document.getElementById("encuesta").reset(); </script>
		<script type="text/javascript">loadInst('id_inst', 'id_sede', 'id_area', 'id_cargo')</script>

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