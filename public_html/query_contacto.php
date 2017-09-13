<?php
$servername = "localhost";
$username = "id2235781_ipvr";
$password = "Proyecto2017";
$dbname = "id2235781_ipvr_data";

$conn = new mysqli($servername, $username, $password, $dbname);
if($conn->connect_error) {
	die("Conexión fallida: ". $conn->connect_error);
}

$query_str = "INSERT INTO comentarios (nombre, correo, comentario) 
				VALUES ('".$_POST['nombre']."', '".$_POST['correo']."', '".$_POST['comentario']."')";
$conn->query($query_str);
echo "¡Gracias por su comentario!";
$conn->close();
?>	