<?php
	session_start();
  	$servername = "localhost";
	$username = "id2235781_ipvr";
	$password = "Proyecto2017";
	$dbname = "id2235781_ipvr_data";

	$conn = new mysqli($servername, $username, $password, $dbname);
	if($conn->connect_error) {
		die("Conexión fallida: ". $conn->connect_error);
	}

	$action = $_POST['action'];
	if($action == 'query')
		call_querying($_POST['idx'], $_POST['genre'], $_POST['inst']);

	function querying($q) {
		global $conn;
		$query = $conn->query($q);
		$keys = array();
		$values = array();
		while ($row = $query->fetch_array()) {
			$keys[] = $row['k'];
		    $values[] = $row['v'];
		}
		return array($keys, $values);
	}

	function call_querying($idx, $genre, $id_inst) {
		$toQuery = ['g1'=>'p5', 'g2f'=>'p6', 'g2m'=>'p6', 'g3f'=>'p7', 'g3m'=>'p7',
								'g4f'=>'p8', 'g4m'=>'p8', 'g5f'=>'contrato', 'g5m'=>'contrato',
								'g6f'=>'p1', 'g6m'=>'p1', 'g7f'=>'p2', 'g7m'=>'p2',
								'g8f'=>'p3', 'g8m'=>'p3', 'g9f'=>'p4', 'g9m'=>'p4',
								'g10f'=>'p9', 'g10m'=>'p9', 'g11f'=>'p11', 'g11m'=>'p11',
								'g12f'=>'p10', 'g12m'=>'p10', 'g13f'=>'p13', 'g13m'=>'p13',
								'g14f'=>'p14', 'g14m'=>'p14', 'g15f'=>'p16', 'g15m'=>'p16',
								'g16f'=>'p12', 'g16m'=>'p12', 'g17f'=>'antiguedad', 'g17m'=>'antiguedad'];
		$q = "SELECT ".$toQuery[$idx]." AS k, COUNT(*) AS v FROM encuestas WHERE".
					($genre != '' ? " p5 = '".$genre."' AND" : "")." id_inst = ".$id_inst." GROUP BY ".$toQuery[$idx];
		$query = querying($q);
		echo json_encode($query);
	}
?>