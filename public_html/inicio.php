<?php
if(!isset($_SERVER['HTTP_REFERER'])){
    // redirect them to your desired location
    header('location:./main.php');
    exit;
}
	session_start();
	//include 'serv.php';
	if(isset($_SESSION['username'])) {
		$_loginSession = $_SESSION;
?>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Inicio</title>
    <link rel="stylesheet" type="text/css" href="css/style_inicio.css">
  </head>
  
  <body>    

    <header id="header">
      
    </header>
        
    <main>
      <div id="main_content" class="main_content">
        
        <img id="presenta" src="images/Presenta.png" alt="Imágen de Presentación" width="100%" height="100%">
      
      </div>
    </main>

    <nav id="nav">
      
    </nav>  
    
    <footer id="footer">
      
    </footer> 
      
  </body>
</html>

<?php
		$_SESSION = $_loginSession;
	} else {
		echo '<script>window.location="index.php"; </script>';
	}
?>