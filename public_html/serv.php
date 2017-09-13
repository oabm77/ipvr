<?php
	$servername = "localhost";
	$username = "id2235781_ipvr";
	$password = "Proyecto2017";
	$dbname = "id2235781_ipvr_data";
	$conn = new mysqli($servername, $username, $password, $dbname);
	if($conn->connect_error) {
		die("Conexión fallida: ". $conn->connect_error);
	}
?>