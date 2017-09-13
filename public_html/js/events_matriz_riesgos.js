function loadMatrix() {
    var inst = document.getElementById('inst');
    var id_inst = inst.options[inst.selectedIndex].value;
    document.getElementsByName('id_inst')[0].value = id_inst;
	jQuery.ajax({
        type: "POST",
        url: "query_matriz_riesgos.php",
        data: {'action':'load_matrix', 'id_inst':id_inst},
        success: function(msg) {
            //console.log(msg);
            var tbody = document.getElementsByClassName('tablebody');
            tbody[0].innerHTML = msg;
        },
        error: function(msg) {
            console.log(msg.statusText + " Este es un error");
        },
        async:false
    });
}