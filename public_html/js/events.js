function loadInst(inst, sede, area, cargo) {
	loadElement(inst, 'instituciones', 'id_inst', 'name_inst', '');
	loadTables(inst, sede, area, cargo);
}

function loadTables(inst, sede, area, cargo) {
	var list = document.getElementById(inst);
	if(list.length > 0) {
		var pos = list.selectedIndex;
		var value = list.options[pos].value;
   		document.getElementsByName(inst)[0].value = value;
		clearLists(sede, area, cargo);
		loadElement(sede, 'inst_sede', 'id_sede', 'name_sede', 
			' INNER JOIN sedes AS T2 ON T1.id_sede = T2.id_sede WHERE T1.id_inst = ' + value);
		loadElement(area, 'inst_area', 'id_area', 'name_area', 
			' INNER JOIN areas AS T2 ON T1.id_area = T2.id_area WHERE T1.id_inst = ' + value);
		loadElement(cargo, 'inst_cargo', 'id_cargo', 'name_cargo', 
			' INNER JOIN cargos AS T2 ON T1.id_cargo = T2.id_cargo WHERE T1.id_inst = ' + value);
		
		disableButtons(false);
	} else {
		disableButtons(true);
	}
}

function disableButtons(state) {
	var buttons = document.getElementsByClassName("addDel");
	for (var i = 0; i < buttons.length; i++) {
		buttons[i].disabled = state;
	};
}

function clearLists(sede, area, cargo) {
	document.getElementById(sede).options.length = 0;
	document.getElementById(area).options.length = 0;
	document.getElementById(cargo).options.length = 0;
}

function changeValueElementName(idList) {
	var list = document.getElementById(idList);
	var element = document.getElementsByName(idList)[0];
    if(element != undefined) {
    	element.value = null;
    	element.value = list.options[list.selectedIndex].value;
    }
}

function loadElement(idList, table_name, id, name, joinQuery) {
	jQuery.ajax({
    	type: "POST",
    	url: "query_data.php", 
    	data: {'action':'load_table','table':table_name,'id':id,'name':name, 'joinQuery':joinQuery},
    	success: function(msg){
      		//list.innerHTML = msg;
      		//if(['sel_inst', 'id_inst', 'inst'].indexOf(idList) > -1)
      			msg = "<option disabled selected value> -- Seleccione -- </option>" + msg;
      		$('#'+idList).html(msg);
      		//document.getElementsByName(id)[0].value = list.options[list.selectedIndex].value;
      		//console.log(list.options[list.selectedIndex].value);
			changeValueElementName(idList);
    	},
    	error: function(msg){
        	console.log(msg.statusText + " Este es un error");
    	},
    	async: true
 	});
}

function addToList(idList, field, tableName, id, name, relTable) {
	var texto= prompt("Añadir " + field + ":");
	if(texto == null || texto.trim() == "") {
		alert("Valor invalido!");
	} else {

		var idx;
		var listInst = document.getElementById('sel_inst');

		if(listInst.length > 0)
			idx = listInst.options[listInst.selectedIndex].value;
		else
			disableButtons(false);

		if(idList == 'sel_inst') {
			clearLists('sel_sede','sel_area','sel_cargo');
		}
		jQuery.ajax({
	    	type: "POST",
	    	url: "query_data.php", 
	    	data: {'action':'add_value','table':tableName,'id':id,'name':name,'value':texto, 'index':idx, 'rel_table':relTable},
	    	success: function(msg){

	    		var option = document.createElement("option");
				option.text = texto;
				option.value = msg;
				var list = document.getElementById(idList);
				list.add(option);
				list.selectedIndex = list.length - 1;
				alert("Elemento Añadido");
	    	},
	    	error: function(msg){
	        	console.log(msg.statusText + " Este es un error");
	    	}
	 	});
	}		
}

function removeFromList(idList, field, table_name, id, relTable) {
	var list = document.getElementById(idList);
	if(list.length > 0) {
		if (confirm("Desea eliminar " + field + "?") == true) {
			var pos = list.selectedIndex;
			var value = list.options[pos].value;
			var idx = '';
			if(idList != 'sel_inst') {
				var selList = document.getElementById('sel_inst');
				pos = selList.selectedIndex;
				idx = selList.options[pos].value;
			}

			jQuery.ajax({
		    	type: "POST",
		    	url: "query_data.php", 
		    	data: {'action':'remove_value','table':table_name,'id':id, 'value':value, 'idx':idx, 'rel_table':relTable},
		    	success: function(msg){
		      		list.remove(pos);
		      		if(idList == 'sel_inst' && list.length == 0) {
		      			disableButtons(true);
		      			clearLists('sel_sede','sel_area','sel_cargo');
		      		} else {
		      			loadTables('sel_inst','sel_sede','sel_area','sel_cargo');
		      		}
					alert(msg);
		    	},
		    	error: function(msg){
		        	console.log(msg.statusText + " Este es un error");
		    	}
		 	});
		} 		
	}
}

function showValue(idList) {
	var element = document.getElementById(idList);
	console.log(element.options[element.selectedIndex].value);
}