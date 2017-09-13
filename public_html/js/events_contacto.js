function submit_form(){
    console.log("message");
    var nombre = document.getElementById("nombre").value;
    var correo = document.getElementById("correo").value;
    var comentario = document.getElementById("comentario").value;
           jQuery.ajax({
        type: "POST",
        url: "query_contacto.php",
        data: {'nombre':nombre, 'correo':correo, 'comentario':comentario},
        success: function(msg) {
            console.log("message1");
            $("#message").html(msg);
            $("#response_modal").modal("show");
        },
        error: function(msg) {
            console.log(msg.statusText + " Este es un error");
        },
        async: false
    });
             console.log("message2");
         }



