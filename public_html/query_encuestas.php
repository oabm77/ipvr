<?php
$servername = "localhost";
$username = "id2235781_ipvr";
$password = "Proyecto2017";
$dbname = "id2235781_ipvr_data";

$conn = new mysqli($servername, $username, $password, $dbname);
if($conn->connect_error) {
	die("Conexión fallida: ". $conn->connect_error);
}
		

function create_table() {
	global $conn;
	$sql = "CREATE TABLE IF NOT EXISTS encuestas (
	id_inst INT(11), id_sede INT(11), id_area INT(11), id_cargo INT(11),
	fecha DATE, contrato VARCHAR(20), cual_contrato VARCHAR(20),
	mano VARCHAR(15), antiguedad VARCHAR (15), 
	p14t VARCHAR(20), p15r VARCHAR(10), p16t VARCHAR(3)";

	for ($i=1; $i <= 104 ; $i++) { 
		$len = strlen($_POST['p'.$i]);
		$sql .= ", p".$i." VARCHAR(".$len.")";
	}
	$sql .= ")";
	echo $sql;
	if ($conn->query($sql) === TRUE) {
		echo "Tabla creada!!";
	} else {
		echo "Error creando la tabla ".$conn->error;
	}
}

function store_data() {
	global $conn;
	$_POST['fecha'] = date("Y-m-d", strtotime($_POST['fecha']));
	$columns = implode(", ", array_keys($_POST));
	$escaped_values = array_map(array($conn, 'real_escape_string'), array_values($_POST));
	$values = implode("', '", $escaped_values);
	$sql = "INSERT INTO encuestas ($columns) VALUES ('$values')";
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Encuesta</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel="stylesheet" type="text/css" href="style.css">

  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

<body>
  <div class="login">
<?php 
	if ($conn->query($sql) === TRUE) {
		echo "<h1>Gracias por su colaboración!!</h1>";
	} else {
		echo '<h3>Error insertando datos ".$conn->error<h3>';
	}
}

//create_table();
store_data();

$conn->close();
?>	
</div>
<script> sleep(3000); </script>
</body>
</html>
<?php
	echo '<script>window.location="encuesta.php"; </script>';
?>