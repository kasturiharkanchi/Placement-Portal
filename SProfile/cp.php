<?php
session_start();
$connect = mysqli_connect("localhost", "stone", "stone","details"); // Establishing Connection with Server

	$Username = $_SESSION['username'];
	$Password = $_POST['Password'];
	$repassword = $_POST['repassword'];
	$cur = $_POST['curpassword'];
	if($Password && $repassword && $cur) 
	{
		if($Password == $repassword)
		{
			$sql = mysqli_query($connect,"SELECT * FROM `details`.`slogin` WHERE `USN`='$Username'");
			if(mysqli_num_rows($sql) == 1)
			{
				$row = mysqli_fetch_assoc($sql);
				$dbpassword = $row['PASSWORD'];
			    
				if($cur == $dbpassword)
				{
					if($query = mysqli_query($connect,"UPDATE `details`.`slogin` SET `PASSWORD` = '$Password' WHERE `slogin`.`USN` = '$Username'"))
					{
						echo "<center>Password Changed Successfully</center>";
						echo "<script>alert('Login with new password next time!!')</script>";
						session_destroy();
					} else {
						echo "<center>Can't Be Changed! Try Again</center>";
					}
				} else {
					die("<center>Error! Please Check ur Password</center>");
				}
			} else {
				die("<center>Username not Found</center>");
			}
		} else{
			die("<center>Passwords Donot Match</center>");
		}
	} else {
		die ("<center>Enter All Fields</center>");
	}
