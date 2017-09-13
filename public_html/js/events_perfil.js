function dataTable(tableId, title, keys, values) {
	values = values.map(Number);
	var total = values.reduce((a,b)=>a+b,0);
	var htmlTag = "<table class='tabla'><caption>"+title+"</caption><tr><th>Grupos</th><th>No.</th><th>%</th></tr>";
	for (var i = 0; i < keys.length; i++)
		htmlTag += "<tr><td class='dato'>"+keys[i]+"</td><td class='dato'>"+values[i]+"</td><td class='dato'>"+(values[i]/total*100).toFixed(2)+"%</td></tr>";
	
	htmlTag +=	"<tr><td class='dato'><b>Total</b></td><td class='dato'>"+total+"</td><td class='dato'>100%</td></tr></table>";

	document.getElementById(tableId).innerHTML = htmlTag;
}


function graph(canvas, tableId, title, keys, values) {
	var back;
	var lastChar = tableId.slice(-1);
	if(lastChar == 'f') {
		back = ["rgba(255, 102, 255, 0.2)","rgba(255, 0, 255, 0.2)",
				 "rgba(204, 0, 204, 0.2)","rgba(102, 0, 102, 0.2)",
				 "rgba(153, 51, 153, 0.2)","rgba(153, 0, 153, 0.2)",
				 "rgba(255, 0, 102, 0.2)"];
	} else if(lastChar == 'm') {
		back = ["rgba(0, 0, 102, 0.2)","rgba(51, 51, 255, 0.2)",
				 "rgba(0, 0, 204, 0.2)","rgba(0, 153, 153, 0.2)",
				 "rgba(0, 102, 153, 0.2)","rgba(0, 51, 102, 0.2)",
				 "rgba(0, 102, 102, 0.2)"];
	} else {
		back = ["rgba(255, 102, 255, 0.2)", "rgba(0, 0, 102, 0.2)"];
	}
	var border = ["rgb(255, 99, 132)","rgb(255, 159, 64)","rgb(255, 205, 86)",
				  "rgb(75, 192, 192)","rgb(54, 162, 235)","rgb(153, 102, 255)",
				  "rgb(201, 203, 207)"];
	var ctx = document.getElementById(canvas).getContext('2d');
	if(keys.length == 0) {
		document.getElementById(canvas).parentNode.innerHTML = "<canvas id='"+canvas+"' width=100% height=100%></canvas><div id='"+tableId+"'></div>";
	} else {
	var myChart = new Chart(ctx, {
	   	type: 'bar',
	    data: {	    	
	        labels: keys,
			datasets: [{
	        	data: values,
	            label: title,
	            backgroundColor: back.slice(0,keys.length),
	            borderColor: border.slice(0,keys.length),
	            borderWidth: 1
	        }]
	    },
	    options: {
	        scales: {
	        	xAxes: [{
	               	ticks: {
	                   	display: false
	               	}
	           	}],
	            yAxes: [{
	                ticks: {
	                    beginAtZero:true
	                }
	            }]
	        }
	    }
	});
	dataTable(tableId, title, keys, values);
	}
}


function callGraph(canvas, tableId, title, group, inst) {
	jQuery.ajax({
	   	type: "POST",
	   	url: "query_perfil.php", 
	   	data: {'action':'query','idx':canvas,'genre':group,'inst':inst},
	   	success: function(query){
	   		query = eval(query);
	   		graph(canvas, tableId, title + group, query[0], query[1]);
	   	},
	   	error: function(msg){
	       	console.log(msg.statusText + " Este es un error");
	   	},
	});
}

function loadGraphs() {
	var list = document.getElementById('inst');
	if(list.length > 0) {
		var pos = list.selectedIndex;
		var inst = list.options[pos].value;
		//console.log(inst);
		var graphs = [["g1", "genero", "Género", "", inst],
					  ["g2f", "edadf", "Edad - ", "Femenino", inst], ["g2m", "edadm", "Edad - ", "Masculino", inst],
					  ["g3f", "estadof", "E. Civil - ","Femenino", inst], ["g3m", "estadom", "E. Civil - ", "Masculino", inst],
					  ["g4f", "personasf", "P. a cargo - ", "Femenino", inst], ["g4m", "personasm", "P. a cargo - ", "Masculino", inst],
					  ["g5f", "vinculof", "Vinculo - ", "Femenino", inst], ["g5m", "vinculom", "Vinculo - ", "Masculino", inst],
					  ["g6f", "epsf", "EPS - ", "Femenino", inst], ["g6m", "epsm", "EPS - ", "Masculino", inst],
					  ["g7f", "arlf", "ARL - ", "Femenino", inst], ["g7m", "arlm", "ARL - ", "Masculino", inst],
					  ["g8f", "afpf", "AFP - ", "Femenino", inst], ["g8m", "afpm", "AFP - ", "Masculino", inst],
					  ["g9f", "estratof", "Estrato - ", "Femenino", inst], ["g9m", "estratom", "Estrato - ", "Masculino", inst],
					  ["g10f", "nivelf", "Escolaridad - ", "Femenino", inst], ["g10m", "nivelm", "Escolaridad - ", "Masculino", inst],
					  ["g11f", "ingf", "Ingresos - ", "Femenino", inst], ["g11m", "ingm", "Ingresos - ", "Masculino", inst],
					  ["g12f", "vivf", "Vivienda - ", "Femenino", inst], ["g12m", "vivm", "Vivienda - ", "Masculino", inst],
					  ["g13f", "saludf", "Activ. Salud - ", "Femenino", inst], ["g13m", "saludm", "Activ. Salud - ", "Masculino", inst],
					  ["g14f", "enff", "Enfermedades - ", "Femenino", inst], ["g14m", "enfm", "Enfermedades - ", "Masculino", inst],
					  ["g15f", "fumaf", "Fuma - ", "Femenino", inst], ["g15m", "fumam", "Fuma - ", "Masculino", inst],
					  ["g16f", "libref", "T. Libre - ", "Femenino", inst], ["g16m", "librem", "T. Libre - ", "Masculino", inst],
					  ["g17f", "antf", "Antigüedad - ", "Femenino", inst], ["g17m", "antm", "Antigüedad - ", "Masculino", inst]];
		graphs.forEach(function(args) {
			callGraph.apply(this, args);
		});
	}
}


function beforePrint () {
  for (const id in Chart.instances) {
    Chart.instances[id].resize()
  }
}

if (window.matchMedia) {
  let mediaQueryList = window.matchMedia('print')
  mediaQueryList.addListener((mql) => {
    if (mql.matches) {
      beforePrint()
    }
  })
}

window.onbeforeprint = beforePrint