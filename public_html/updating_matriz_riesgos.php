<?php
$servername = "localhost";
$username = "id2235781_ipvr";
$password = "Proyecto2017";
$dbname = "id2235781_ipvr_data";

$conn = new mysqli($servername, $username, $password, $dbname);
if($conn->connect_error) {
	die("Conexión fallida: ". $conn->connect_error);
}

foreach ($_POST as $key => $value) {
	if($key != 'id_inst') {
		$field = explode('|', $key);
		$query_str = "UPDATE matriz_riesgos SET ".$field[0]."='".$value."' WHERE id_inst=".$_POST['id_inst']." AND id_sede=".$field[1]." AND id_area=".$field[2]." AND id_cargo=".$field[3];
		if(count($field) == 5) {
			$query_str .= " AND pregunta=".$field[4];
		}
		$conn->query($query_str);
		//echo $query_str."<br>";
	}
}


echo "<h1>Actualizando la matriz de riesgos.</h1>";



$conn->close();
echo '<script> sleep(3000); </script><script>window.location="matriz_riesgos.php"; </script>';
?>