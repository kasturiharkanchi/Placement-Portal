<?php
	session_start();
	
	$USN1 = $_POST['USN'];
	$password = $_POST['PASSWORD'];
	$confirm = $_POST['repassword'];
	$USN2 = ($_SESSION['reset']);
	
	$connect = mysqli_connect("localhost", "stone", "stone","details") or die($connect->error);// Establishing Connection with Server
	
			if($USN1 && $password && $confirm ){
	
	if($password == $confirm) {
		
		if($USN2 == $USN1){
		if(mysqli_query($connect,"UPDATE `details`.`slogin` SET `PASSWORD` ='$password' WHERE `slogin`.`USN` = '$USN1'"))
		          echo "<center><h1>Password Reset Complete</h1></center>";
		           session_unset();
		     }
		} else {
			echo("something prob1");
			session_unset();
			die("Enter Your USN only");		
			
			} 
	} else
	{
	echo "Update Failed";
	session_unset();
	}
	
	else
	{
	echo "Field cannot be left blank";
	session_unset();
	}
	echo("complete");
?>