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
			<title>Administrar Instituciones</title>
			<meta charset="utf-8">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
			<link rel="stylesheet" type="text/css" href="css/style.css">			
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
			<script type="text/javascript" src="js/events.js"></script>
		</head>
		<body>
			<div class="fondo">
				<h1>Administrar Instituciones</h1>
				<table border="1" cols="3">
					<tr>
						<td class="lista" id="inst" colspan="3">
							<b>Institución</b><br>
							<select id="sel_inst" onChange="loadTables('sel_inst', 'sel_sede', 'sel_area', 'sel_cargo')">
							</select>
							<input type="hidden" name="sel_inst" value="">
							<button name="add_inst" class="btn btn-primary btn-large btn-addRemove" onClick="addToList('sel_inst','Institución','instituciones', 'id_inst', 'name_inst', '')">&#10004;</button>
							<button name="del_inst" class="btn btn-primary btn-large btn-addRemove" onClick="removeFromList('sel_inst','Institución','instituciones','id_inst', '')">&#10008;</button>
						</td>
					</tr>
					<tr>
						<td class="lista">
							<b>Sedes</b><br>
							<select id="sel_sede" size="7">
							</select><br>
							<button name="add_sede" class="btn btn-primary btn-large btn-addRemove addDel" onClick="addToList('sel_sede','Sede','sedes', 'id_sede', 'name_sede', 'inst_sede')">&#10004;</button>
							<button name="del_sede" class="btn btn-primary btn-large btn-addRemove addDel" onClick="removeFromList('sel_sede','Sede','sedes','id_sede', 'inst_sede')">&#10008;</button>
						</td>
						<td class="lista">
							<b>Áreas</b><br>
							<select id="sel_area" size="7">
							</select><br>
							<button name="add_area" class="btn btn-primary btn-large btn-addRemove addDel" onClick="addToList('sel_area','Area','areas', 'id_area', 'name_area', 'inst_area')">&#10004;</button>
							<button name="del_area" class="btn btn-primary btn-large btn-addRemove addDel" onClick="removeFromList('sel_area','Area','areas','id_area', 'inst_area')">&#10008;</button>
						</td>
						<td class="lista">
							<b>Cargos</b><br>
							<select id="sel_cargo" size="7">
							</select><br>
							<button name="add_cargo" class="btn btn-primary btn-large btn-addRemove addDel" onClick="addToList('sel_cargo','Cargo','cargos', 'id_cargo', 'name_cargo', 'inst_cargo')">&#10004;</button>
							<button name="del_cargo" class="btn btn-primary btn-large btn-addRemove addDel" onClick="removeFromList('sel_cargo','Cargo','cargos','id_cargo', 'inst_cargo')">&#10008;</button>
						</td>
					</tr>	
				</table>
				<br>
				<a href=""><button class="btn btn-primary btn-large">Guardar</button></a>
			</div>
			<script type="text/javascript">loadInst('sel_inst', 'sel_sede', 'sel_area', 'sel_cargo')</script>
		</body>
		</html>
<?php
		$_SESSION = $_loginSession;
	} else {
		echo '<script>window.location="index.php"; </script>';
	}
?>