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
		load_table();
	} elseif ($action == 'remove_value') {
		remove_from_table();
	} elseif ($action == 'add_value') {
		add_value();
	}

	function load_table() {
		global $conn;
		$table = $_POST['table'];
		$id = $_POST['id'];
		$name = $_POST['name'];
		$joinQ = $_POST['joinQuery'];
		$query = $conn->query("SELECT * FROM ".$table." AS T1".$joinQ);
		$elements = "";
		while ($row = $query->fetch_array()) {
			//$elements = $elements.utf8_decode("<option value='".$row[$id]."'>".$row[$name]."</option>");
			$elements .= "<option value='".$row[$id]."'>".$row[$name]."</option>";
		}
		echo $elements;
	}

	function remove_from_table() {
		$table = $_POST['table'];
		$id = $_POST['id'];
		$value = $_POST['value'];
		$idx = $_POST['idx'];
		$rel_table = $_POST['rel_table'];
		if($table == 'instituciones') {
			remove_value($table, $id, $value, '');
			remove_value('inst_sede', $id, $value, '');
			remove_value('inst_area', $id, $value, '');
			remove_value('inst_cargo', $id, $value, '');
		} else {
			remove_value($rel_table, $id, $value, " AND id_inst = ".$idx);
		}
		echo "Elemento Eliminado";
	}

	function remove_value($table, $id, $value, $where_and) {
		global $conn;
		
		$query = $conn->query("DELETE FROM ".$table." WHERE ".$id." = ".$value.$where_and);
	}

	function add_value() {
		global $conn;
		$table = $_POST['table'];
		$id = $_POST['id'];
		$name = $_POST['name'];
		//$value = utf8_decode($_POST['value']);
		$value = $conn->real_escape_string($_POST['value']);
		$index = $_POST['index'];
		$rel_table = $_POST['rel_table'];
		$idx = 0;
		$query = $conn->query("SELECT * FROM ".$table." WHERE ".$name." = '".$value."'");
		if($query->num_rows == 0) {
			$query = $conn->query("INSERT INTO ".$table." (".$id.", ".$name.")"
								."VALUES (NULL, '".$value."')");
			$idx = $conn->insert_id;
		} else {
			while ($row = $query->fetch_array()) {
				$idx = $row[$id];
			}
		}
		
		if($table != 'instituciones') {
			$query = $conn->query("INSERT INTO ".$rel_table." (id_inst, ".$id.")"
								."VALUES (".$index.", ".$idx.")");
		}
		echo $idx;
	}

	$conn->close();
?>