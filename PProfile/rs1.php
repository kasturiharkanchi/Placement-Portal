<?php
	session_start();
	
	$USN1 = $_POST['USN'];
	$password = $_POST['PASSWORD'];
	$confirm = $_POST['repassword'];
	
	$connect = mysql_connect("localhost", "stone", "stone","details"); // Establishing Connection with Server
	
	if($password == $confirm) {
		if($sql = mysqli_query($connect,"UPDATE `details`.`plogin` SET `Password` ='$password' WHERE `plogin`.`Username` = '$USN1'"));
		echo "<center>Password Reset Complete</center>";
		session_unset();
	} else
	echo "Update Failed";
?>