$(document).on("click", ".esSi", function() {
var id =$(this).data('id');
$(".modal-header #idQuestion").text( id );
});

function refreshInst(idInst, idSac) {
    var inst = document.getElementById(idInst);
    var id_inst = inst.options[inst.selectedIndex].value;
reloadDivs();
    jQuery.ajax({
        type: "POST",
        url: "query_evalua_riesgo.php",
        data: {'action':'load_sac', 'id_inst':id_inst},
        success: function(msg) {
            //console.log(msg);
            msg = "<option disabled selected value> -- Seleccione -- </option>" + msg;
            var sac = document.getElementById(idSac);
            sac.innerHTML = msg;
        },
        error: function(msg) {
            console.log(msg.statusText + " Este es un error");
        },
        async:false
    });
}

function findInst(inst, sac) {
    inst = document.getElementById(inst);
    var id_inst = inst.options[inst.selectedIndex].value;
    sac = document.getElementById(sac);
    var id_sac = sac.options[sac.selectedIndex].value.split(" ");
    //console.log(id_inst);
    countSi(sinona.length, id_inst, id_sac[0], id_sac[1], id_sac[2]);
}

function showModal(title, level) {
	jQuery.ajax({
    	type: "POST",
    	url: "query_evalua_riesgo.php", 
    	data: {'action':'load_table','title':title,'level':level},
    	success: function(msg){
    		document.getElementById("nivel"+level).innerHTML = msg;
    	},
    	error: function(msg){
        	console.log(msg.statusText + " Este es un error");
    	}
    	//async: true
 	});
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

            } else {
                document.getElementById("prev").disabled = false;
                document.getElementById("next").disabled = false;
            }
            document.getElementById(next.toString()).style.display = 'block';
            document.getElementById('position').innerHTML = "Página " + next + " de " + total;
            break;
        }
    };
}

function countSi(length, id_inst, id_sede, id_area, id_cargo) {
    jQuery.ajax({
        type: "POST",
        beforeSend: function(){
            $('.ajax-loader').css("visibility", "visible");
        },
        url: "query_evalua_riesgo.php",
        data: {'action':'count_si', 'length':length, 'id_inst':id_inst, 
                'id_sede':id_sede, 'id_area':id_area, 'id_cargo':id_cargo},
        success: function(msg) {
            evaluaEsSi(eval(msg));
        },
        error: function(msg) {
            console.log(msg.statusText + " Este es un error");
        },
        async:false,
        complete: function(){
            $('.ajax-loader').css("visibility", "hidden");
        }
    });
}

function reloadDivs() {
    var args = [[0, 0, 4, 1],[1, 5, 13, 1],[2, 14, 19, 1],
                [3, 20, 38, 1],[4, 39, 59, 1],[5, 60, 84, 1],
                [6, 85, 87, 1]];
    for (var i = 1; i <= 7; i++) {
        loadSiNoNA.apply(this, args[i-1]);
    };
}

var siLista;

function evaluaEsSi(siList) {
    siLista = siList;
    for (var i = 1; i < Object.keys(siList[0]).length; i++) {
        var esSi = parseInt(siList[0]['p'+(i+16)]);
        var d = document.getElementsByName("d"+i)[0];
        var e = document.getElementsByName("e"+i)[0];
        var c = document.getElementsByName("c"+i)[0];
        if(esSi>0) {
            d.parentNode.parentNode.style.display ="table-row";
            d.setAttribute("class", "esSi");
            d.disabled = false;
            e.setAttribute("class", "esSi");
            e.disabled = false;
            c.setAttribute("class", "esSi");
            c.disabled = false;
        } else {            
            d.parentNode.parentNode.style.display ="none";
            d.setAttribute("class", "esNo");
            d.disabled = true;
            e.setAttribute("class", "esNo");
            e.disabled = true;
            c.setAttribute("class", "esNo");
            c.disabled = true;
        }
    };
}

function dataToMatrix() {
    var inst = document.getElementById("inst");
    var id_inst = inst.options[inst.selectedIndex].value;
    var sac = document.getElementById("sac");
    var id_sac = sac.options[sac.selectedIndex].value.split(" ");
    var question = parseInt(document.getElementById("idQuestion").innerHTML);
    var current = "";
    var valor = -1;
    var nivel = '';
    var expuestos = siLista[0]['p'+(question+16)];
    ["modalD","modalE","modalC"].forEach(function(e){
        if(document.getElementById(e).style.display == "block") {
            current = e;
            nivel = current.slice(-1).toLowerCase();
            var checked = document.querySelector("input[name='"+nivel+"']:checked");
            if(checked != null)
                valor = checked.value;
        }
    });
    // console.log("Inst: " + id_inst);
    // console.log("Sede / Area / Cargo: " + id_sac);
    // console.log("Pregunta: " + question);
    // console.log("Nivel: " + nivel +" Valor: " + valor);
    // console.log("Expuestos: " + expuestos);
    if(valor >= 0) {
        storeDataToMatrix(id_inst, id_sac[0], id_sac[1], id_sac[2], question, nivel, valor, expuestos);
    } else {
        alert("Error: Debe seleccionar un valor de Nivel");
    }
}

function storeDataToMatrix(id_inst, id_sede, id_area, id_cargo, pregunta, nivel, valor, expuestos) {
    jQuery.ajax({
        type: "POST",
        url: "query_matriz_riesgos.php",
        data: {'action':'store_evaluation', 'id_inst':id_inst, 'id_sede':id_sede, 
        'id_area':id_area, 'id_cargo':id_cargo, 'pregunta':pregunta, 
        'nivel':nivel, 'valor':valor, 'expuestos':expuestos},
        success: function(msg) {
            //console.log(msg);
            alert("Guardado Satisfactoriamente!");
            document.getElementsByName(nivel+pregunta)[0].style.background='#0099ff';
        },
        error: function(msg) {
            console.log(msg.statusText + " Este es un error");
        },
        async:false
    });
}