function hiddenInput(idDiv, idInput, visible, state) {
	visibleDiv(idDiv, visible);
	//disableInput(idInput, state);
}

function disableInput(id, state) {
	document.getElementById(id).disabled = state;
}

function visibleDiv(id, visible) {
	document.getElementById(id).style.visibility = visible;
	if(id == 'tiempoDeporte' && visible == 'hidden') {
		var e = document.getElementsByName('p15r');
   		for(var i=0;i<e.length;i++)
      		e[i].checked = false;
	}
}

function changeDiv(pos, total) {
	for (var i = 1; i <= total; i++) {
		var div = document.getElementById(i.toString());
		if(div.style.display === 'block') {
			div.style.display = 'none';
			var next = i + pos;
			if(next == 1) {
				document.getElementById("prev").disabled = true;
			} else if (next == total) {
				document.getElementById("next").disabled = true;
				document.getElementById("submitBtn").style.display = 'block';
			} else {
				document.getElementById("prev").disabled = false;
				document.getElementById("next").disabled = false;
				document.getElementById("submitBtn").style.display = 'none';
			}
			document.getElementById(next.toString()).style.display = 'block';
			document.getElementById('position').innerHTML = "Página " + next + " de " + total;
			break;
		}
	};
}

function antiguedad() {
	var list = document.getElementById("antiguedad");
	var option = document.createElement("option");
	option.text = "< 1";
	list.add(option);
	for (var i = 1; i <= 15; i++) {
		var option = document.createElement("option");
		option.text = i;
		list.add(option);
	};
	var option = document.createElement("option");
	option.text = "> 15";
	list.add(option);
	list.selectedIndex = 0;
}