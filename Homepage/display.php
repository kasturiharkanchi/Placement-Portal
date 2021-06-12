<?php
  session_start();
  if($_SESSION["username"]){
    
  }
   else {
	   header("location: index.php");
  }
?>
<!DOCTYPE html>
<html lang="en">
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Student Profile Home</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <!--favicon-->
        <link rel="shortcut icon" href="favicon.ico" type="image/icon">
        <link rel="icon" href="favicon.ico" type="image/icon">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body>
    <!-- Left column -->
    <div class="templatemo-flex-row">
      <div class="templatemo-sidebar">
        <header class="templatemo-site-header">
          <div class="square"></div>
		  <?php
		  $Welcome = "Welcome";
          echo "<h1>" . $Welcome . "<br>". $_SESSION['username']. "</h1>";
		  ?>
        </header>
        
       
       
        <div class="mobile-menu-icon">
          <i class="fa fa-bars"></i>
        </div>
        <nav class="templatemo-left-nav">
          <ul>
            <li>
              <a href="../Profilers/SProfile/index.php" class="active"><i class="fa fa-home fa-fw"></i>student signin</a>
            </li>
            <li>
              <a href="../Profilers/HODProfile/index.php"><i class="fa fa-bar-chart fa-fw"></i>HOD signin</a>
            </li>
            <li>
              <a href="../Profilers/PProfile/index.php"><i class="fa fa-sliders fa-fw"></i>principal login</a>
            </li>
            <li>
              <a href="home.php"><i class="fa fa-eject fa-fw"></i>Home</a>
            </li>
          </ul>
        </nav>
      </div>
      <!-- Main content -->
      
        <div class="templatemo-content-container">
        <?php
  $connect = mysqli_connect('localhost','stone','stone','details') or die("couldn't connect");
		
  if($query = mysqli_query($connect,"select * from `notify` ORDER BY `id` DESC")){

       if(mysqli_num_rows($query) > 0) {
// output data of each row
     while($row = mysqli_fetch_assoc($query)) {
          echo "<table border=1  cellpadding=1 style='width: 100%'>"."<tr>"."<td>"."<h3>" ."<marquee behavior='scroll' direction='left'>".$row['Subject']."</marquee>"."</h3>"."</td>" ."</tr>";
              echo "<tr>"."<td>"."<h3>".$row['Message']."</h3>"."</td>"."</tr>"."</table>"."<br/>" ;
           }
       }
       

}
 
  
	
?>

        
          
          
          </div>
          <!-- Second row ends -->
          <footer class="text-right">
            		<p>Copyright &copy; CVR COLLEGE OF ENGINEERING  <br>
			  </p>
          </footer>
        </div>
      
    
    <!-- JS -->
    <script src="js/jquery-1.11.2.min.js"></script>
    <!-- jQuery -->
    <script src="js/jquery-migrate-1.2.1.min.js"></script>
    <!-- jQuery Migrate Plugin -->
    <script type="text/javascript" src="js/templatemo-script.js"></script>
    <!-- Templatemo Script -->
  </body>

</html>
  











































































