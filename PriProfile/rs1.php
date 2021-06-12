<?php
	session_start();
	
	$USN1 = $_POST['USN'];
	$password = $_POST['PASSWORD'];
	$confirm = $_POST['repassword'];
	
	$connect = mysqli_connect('localhost','stone','stone','details') or die("cannot connec to database!)";
	
	if($password == $confirm) {
		if($sql = mysqli_query($connect,"UPDATE `details`.`prilogin` SET `PASSWORD` ='$password' WHERE `prilogin`.`Username` = '$USN1'"));
		echo "<center>Password Reset Complete</center>";
		echo "<center> <a href='index.php'>Go Back</a></center>";
		session_unset();
	} else
	echo "Update Failed";
?>