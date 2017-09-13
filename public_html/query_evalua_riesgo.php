<?php
$servername = "localhost";
$username = "id2235781_ipvr";
$password = "Proyecto2017";
$dbname = "id2235781_ipvr_data";

$conn = new mysqli($servername, $username, $password, $dbname);
if($conn->connect_error) {
	die("Conexión fallida: ". $conn->connect_error);
}

$action = $_POST['action'];
if($action == 'load_table') {
	load_table($_POST['title'], $_POST['level']);
}
else if($action == 'count_si') {
	count_si($_POST['length'], $_POST['id_inst'], $_POST['id_sede'], $_POST['id_area'], $_POST['id_cargo']);
}
else if($action == 'load_sac') {
	load_sac($_POST['id_inst']);
}


function load_table($title, $level) {
	global $conn;
	$query = $conn->query("SELECT * FROM niveles WHERE id_nivel LIKE '".$level."%'");
	$result = "<table cols='25' border='1'><tr bgcolor='#33cc33'><td colspan='7' align='center'><b>".$title.
	            "</b></td><td colspan='18' align='center'><b>Significado</b></td></tr>";
	while ($row = $query->fetch_array()) {
		$result .= "<tr><td colspan='7'><input type='radio' name='".$level."' value='".$row['valor_nivel']."'>".$row['name_nivel'].
				   "</td><td colspan='18'>".$row['sign_nivel']."</td></tr>";
	}
	$result .= "</table>";

	echo $result;
}

function count_si($length, $id_inst, $id_sede, $id_area, $id_cargo) {
	global $conn;
	$totals = "";
	// SELECT id_inst, SUM(if(p17='si',1,0)), SUM(if(p54='si',1,0)), SUM(if(p70='si',1,0)), SUM(if(p104='si',1,0)), SUM(if(p106='si',1,0))  FROM encuestas GROUP BY id_inst;
	for ($i=17; $i < $length+17; $i++) { 
		$totals .= ", IFNULL(SUM(if(p".$i."='si',1,0)),0) AS p".$i;
	}
	$query_str = "SELECT id_inst".$totals." FROM encuestas 
					WHERE id_inst=".$id_inst." AND id_sede=".$id_sede." AND id_area=".$id_area." AND id_cargo=".$id_cargo;
	//echo $query_str;
	$query = $conn->query($query_str);
	$values = array();
	while ($row = $query->fetch_assoc()) {
	    $values[] = $row;
	}
	echo json_encode($values);
}

function load_sac($id_inst) {
	global $conn;
	$query_str = "SELECT DISTINCT e.id_sede AS ids, s.name_sede AS nms,
	                              e.id_area AS ida, a.name_area AS nma,
	                              e.id_cargo AS idc, c.name_cargo AS nmc
				  FROM encuestas AS e JOIN sedes AS s ON e.id_sede = s.id_sede
									  JOIN areas AS a ON e.id_area = a.id_area
									  JOIN cargos AS c ON e.id_cargo = c.id_cargo 
				  WHERE `id_inst`=".$id_inst;
	$query = $conn->query($query_str);
	$msg = "";
	while ($row = $query->fetch_assoc()) {
	    $msg .= "<option value='".$row['ids']." ".$row['ida']." ".$row['idc']."'>".
	    			$row['nms']." / ".$row['nma']." / ".$row['nmc'].
	    		"</option>";
	}
	echo $msg;
}

$conn->close();
?>