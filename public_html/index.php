<?php
  session_start();
  include 'serv.php';
  if(isset($_SESSION['user'])) {
    echo '<script>window.location="main.php"; </script>';
  }
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Acceso Administración</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel="stylesheet" type="text/css" href="css/style.css">

  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

<body>
  <div class="login">
	<h1>Acceso Administración</h1>
    <form action="validar.php" method="post">
    	<input class="inputTxt" type="text" name="user" placeholder="Nombre de Usuario" id="user" autocomplete="off" required />
        <input class="inputTxt" type="password" name="pass" placeholder="Clave de Acceso" id="pass" autocomplete="off" required />
        <button type="submit" name="login" class="btn btn-primary btn-block btn-large">Ingresar.</button>
    </form>
</div>
</body>
</html>
