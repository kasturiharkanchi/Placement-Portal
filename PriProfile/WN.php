
   
   <?php
 
 
 if(isset($_POST['submit'])){
    $subject = $_POST['Subject'];
  
      $message = $_POST['Message'];
  $connect = mysqli_connect('localhost','stone','stone','details') or die("couldn't connect");
   
   if($query = mysqli_query($connect,"INSERT into `notify`(`Subject`,`Message`) VALUES('$subject','$message')"))
     echo "<h1 style='color:white'>Message has been Posted</h1>";
   else
     echo "Message Posting Unsuccessfull! Try Again";
 }

 
 
  ?>
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <title>Document</title>
    
    
  </head>
  <body  background="images/sunset-big.jpg">
  <div class="d-grid gap-2">
  <a href="../../Homepage/index.php" class="btn btn-primary active" role="button" data-bs-toggle="button" aria-pressed="true">Go back to Home</a>
  
 
 
  </div>
    
  </body>
  </html>