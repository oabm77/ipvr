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
if($action == 'store_evaluation') {
	store_evaluation($_POST['id_inst'], $_POST['id_sede'], $_POST['id_area'], $_POST['id_cargo'], 
		$_POST['pregunta'], $_POST['nivel'], $_POST['valor'], $_POST['expuestos']);
} else if($action == 'load_matrix') {
	load_matrix($_POST['id_inst']);
}

function store_evaluation($id_inst, $id_sede, $id_area, $id_cargo, $pregunta, $nivel, $valor_nivel, $expuestos) {
	global $conn;
	$niveles = array('d' => 'deficiencia', 'e' => 'exposicion', 'c' => 'consecuencia');
	$query_str = "INSERT INTO matriz_riesgos(id_inst, id_sede, id_area, id_cargo, pregunta, ".$niveles[$nivel].",expuestos) VALUES
				  (".$id_inst.",".$id_sede.",".$id_area.",".$id_cargo.",".$pregunta.",".$valor_nivel.",".$expuestos.") 
				  ON DUPLICATE KEY UPDATE ".$niveles[$nivel]." = ".$valor_nivel.", expuestos = ".$expuestos;
	$query = $conn->query($query_str);
	echo $query_str;
}

function count_rows($id_inst, $id_sede, $id_area, $id_cargo) {
	global $conn;
	$query_str = "SELECT * 
				  FROM matriz_riesgos
				  WHERE id_inst=".$id_inst.
				  " AND id_sede=".$id_sede.
				  " AND id_area=".$id_area.
				  " AND id_cargo=".$id_cargo;
	$query = $conn->query($query_str);
	return $query->num_rows;
}

function make_query($id_inst) {
	$query_str = "SELECT m.id_area, a.name_area AS proceso, m.id_sede, s.name_sede AS zona, m.id_cargo, c.name_cargo AS actividad, 
						 rel.name_de AS descrip, rel.name_cl AS clasifica, rel.name_ef AS efecto, m.deficiencia, m.exposicion, 
						(m.deficiencia * m.exposicion) AS probable, 
						(SELECT nombre FROM probabilidad 
							WHERE (m.deficiencia * m.exposicion) BETWEEN minimo AND maximo) AS int_probable,
						m.consecuencia, (m.deficiencia * m.exposicion * m.consecuencia) AS riesgo,
						(SELECT CONCAT(nombre, '|', significado) FROM riesgo 
							WHERE (m.deficiencia * m.exposicion * m.consecuencia) BETWEEN minimo AND maximo) AS int_riesgo,
						(SELECT aceptabilidad FROM riesgo 
							WHERE (m.deficiencia * m.exposicion * m.consecuencia) BETWEEN minimo AND maximo) AS acepta_riesgo,
						m.expuestos, rel.name_pe AS peor, rel.name_ex AS existencia, rel.name_ci AS control_ing, 
						rel.name_ca AS control_admin, rel.name_eq AS equipos_elementos, m.pregunta,
						m.tareas, m.rutinario, m.fuente, m.medio, m.individuo, m.eliminacion, m.sustitucion
				FROM matriz_riesgos AS m JOIN areas AS a ON m.id_area = a.id_area
										JOIN sedes AS s ON m.id_sede = s.id_sede
										JOIN cargos AS c ON m.id_cargo = c.id_cargo
									    JOIN (SELECT rl.id_pregunta, cl.name_cl, de.name_de, ef.name_ef, pe.name_pe, 
									    			ex.name_ex, ci.name_ci, ca.name_ca, eq.name_eq
									          FROM relacion_peligros AS rl 
									          JOIN clasificacion AS cl ON rl.id_cl = cl.id_cl
									          JOIN descripcion AS de ON rl.id_de = de.id_de
                                              JOIN efectos AS ef ON rl.id_ef = ef.id_ef
									          JOIN peor_consecuencia AS pe ON rl.id_pe = pe.id_pe
                                              JOIN existencia AS ex ON rl.id_ex = ex.id_ex
                                              JOIN control_ing AS ci ON rl.id_ci = ci.id_ci
                                              JOIN control_admin AS ca ON rl.id_ca = ca.id_ca
                                              JOIN equipos_elementos AS eq ON rl.id_eq = eq.id_eq) AS rel ON m.pregunta = rel.id_pregunta
				WHERE id_inst=".$id_inst.
				" ORDER BY a.name_area, s.name_sede, c.name_cargo, int_riesgo";
	return $query_str;
}

function load_matrix($id_inst) {
	global $conn;
	$query_str = make_query($id_inst);
	$query = $conn->query($query_str);
	$html_tag = "";
	$sede = -1;
	$area = -1;
	$cargo = -1;
	while ($row = $query->fetch_array()) {
		$html_tag .= "<tr>";
		//print($sede." ".$area." ".$cargo."\n");
		//print($row['id_sede']." ".$row['id_area']." ".$row['id_cargo']."\n");
		if($row['id_sede'] != $sede || $row['id_area'] != $area || $row['id_cargo'] != $cargo) {
			$sede = $row['id_sede']; 
 			$area = $row['id_area']; 
 			$cargo = $row['id_cargo'];
 			$id_sac = $sede.'|'.$area.'|'.$cargo;
 			$int_riesgo = explode('|', $row['int_riesgo']); 
 			$r_si = '';
 			$r_no = '';
 			if($row['rutinario']=='si') $r_si = ' selected';
 			if($row['rutinario']=='no') $r_no = ' selected';
 			$rows = count_rows($id_inst, $sede, $area, $cargo);
 			$html_tag .=   '<td class="rotate dato" rowspan="'.$rows.'">'.$row['proceso'].'</td>
				            <td class="rotate dato" rowspan="'.$rows.'">'.$row['zona'].'</td>
				            <td class="rotate dato" rowspan="'.$rows.'">'.$row['actividad'].'</td>
				            <td class="texto" rowspan="'.$rows.'"><textarea name="tareas|'.$id_sac.'" rows="5" cols="4">'.$row['tareas'].'</textarea></td>
				            <td class="rotate dato" rowspan="'.$rows.'">
				            <select name="rutinario|'.$id_sac.'">
  								<option value="si"'.$r_si.'>Si</option>
  								<option value="no"'.$r_no.'>No</option>
							</select></td>';
		}
		$id_q = $id_sac.'|'.$row['pregunta'];
		$html_tag .=   '<td class="dato"><div>'.$row['descrip'].'</div></td>
			            <td class="dato"><div>'.$row['clasifica'].'</div></td>
			            <td class="dato"><div>'.$row['efecto'].'</div></td>
			            <td class="texto"><textarea name="fuente|'.$id_q.'" rows="5" cols="4">'.$row['fuente'].'</textarea></td>
			            <td class="texto"><textarea name="medio|'.$id_q.'" rows="5" cols="4">'.$row['medio'].'</textarea></td>
			            <td class="texto"><textarea name="individuo|'.$id_q.'" rows="5" cols="4">'.$row['individuo'].'</textarea></td>
			            <td class="dato"><div>'.$row['deficiencia'].'</div></td>
			            <td class="dato"><div>'.$row['exposicion'].'</div></td>
			            <td class="dato"><div>'.$row['probable'].'</div></td>
			            <td class="dato"><div>'.$row['int_probable'].'</div></td>
			            <td class="dato"><div>'.$row['consecuencia'].'</div></td>
			            <td class="dato"><div>'.$row['riesgo'].'</div></td>
			            <td class="dato"><div onClick="alert(\''.$int_riesgo[1].'\');">'.$int_riesgo[0].'</div></td>
			            <td class="dato"><div>'.$row['acepta_riesgo'].'</div></td>
			            <td class="dato"><div>'.$row['expuestos'].'</div></td>
			            <td class="dato"><div>'.$row['peor'].'</div></td>
			            <td class="dato"><div>'.$row['existencia'].'</div></td>
			            <td class="texto"><textarea name="eliminacion|'.$id_q.'" rows="5" cols="4">'.$row['eliminacion'].'</textarea></td>
			            <td class="texto"><textarea name="sustitucion|'.$id_q.'" rows="5" cols="4">'.$row['sustitucion'].'</textarea></td>
			            <td class="dato"><div>'.$row['control_ing'].'</div></td>
			            <td class="dato"><div>'.$row['control_admin'].'</div></td>
			            <td class="dato"><div>'.$row['equipos_elementos'].'</div></td>
			          </tr>';
	}
	echo $html_tag;
}

$conn->close();
?>	