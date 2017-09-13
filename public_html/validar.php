<?php
	session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>Validando...</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
</head>
<body>
<?php
	$servername = "localhost";
	$username = "id2235781_ipvr";
	$password = "Proyecto2017";
	$dbname = "id2235781_ipvr_data";

	$conn = new mysqli($servername, $username, $password, $dbname);
	if($conn->connect_error) {
		die("Conexión fallida: ". $conn->connect_error);
	}
	
		if(isset($_POST['login'])) {
			$user = $_POST['user'];
			$pass = $_POST['pass'];
			$log = $conn->query("SELECT * FROM main_login WHERE username='$user' AND password='$pass'");
			if($log->num_rows>0) {
				$row = $log->fetch_array();
				$_SESSION["username"] = $row['username'];
				echo 'Iniciando sesion para '.$_SESSION['username'].' <p>';
				echo '<script> window.location="main.php"; </script>';
			}
			else {
				echo '<script> alert("Usuario o contraseña incorrectos."); </script>';
				echo '<script> window.location="index.php"; </script>';
			}
		}
	?>
</body>
</html>