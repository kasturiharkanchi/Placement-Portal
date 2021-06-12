<?php
  session_start();
  if($_SESSION["username"]){
  
  }
   else {
	   header("location: index.php");
}
   
?>
<?php
$connect = new mysqli("localhost","stone","stone","details") or die("Server connection failed"); //connection with the server
if(isset($_POST['submit'])){ 
$fname = $_POST['Fname'];
$lname = $_POST['Lname'];
$USN = $_POST['USN'];
$sun = $_SESSION["username"];
$phno = $_POST['Num'];
$email = $_POST['Email'];
$date = $_POST['DOB'];
$cursem = $_POST['Cursem'];
$branch = $_POST['Branch'];
$per = $_POST['Percentage'];
$puagg = $_POST['Puagg'];
$beaggregate = $_POST['Beagg'];
$back = $_POST['Backlogs'];
$hisofbk = $_POST['History']; 
$detyear = $_POST['Dety'];
$approvaldate = date("Y-m-d");
if($USN !=''||$email !='')
{
	   //echo("requirements matched <br>");
	       if($USN == $sun){
	            
	             
	             $query = "INSERT INTO `basicdetails`(`FirstName`, `LastName`, `USN`, `Mobile`, `Email`, `DOB`, `Sem`, `Branch`, `SSLC`, `PU/Dip`, `BE`, `Backlogs`, `HofBacklogs`,`DetainYears`, `Approve` , `ApprovalDate`) 
	             VALUES ('$fname', '$lname', '$USN', '$phno', '$email', '$date', '$cursem', '$branch', '$per', '$puagg', '$beaggregate', '$back', '$hisofbk', '$detyear', '0' , '$approvaldate')";
	            
              
             if($connect->query($query)===TRUE)
             {
             	  echo("database updated <br>");
				        echo "<center>Details has been received successfully...!!</center>";
             }else{
             echo("<center><h1>you have already added. If you want to update , go to update settings.</h1></center>");       	
              }
         
   }else{
	  echo("<center><h1>('Please check again and Enter your username correctly...!!')</h1></center>");
    }
}
}
?>


<?php
$connect = new mysqli("localhost", "stone","stone","details") or die("server connection error"); // Establishing Connection with Server and selecting databases
if(isset($_POST['update']))
{ 
$fname = $_POST['Fname'];
$lname = $_POST['Lname'];
$USN = $_POST['USN'];
$sun = $_SESSION["username"];
$phno = $_POST['Num'];
$email = $_POST['Email'];
$date = $_POST['DOB'];
$cursem = $_POST['Cursem'];
$branch = $_POST['Branch'];
$per = $_POST['Percentage'];
$puagg = $_POST['Puagg'];
$beaggregate = $_POST['Beagg'];
$back = $_POST['Backlogs'];
$hisofbk = $_POST['History']; 
$detyear = $_POST['Dety'];

if($USN !=''||$email !='')
{
	if($USN == $sun)
	{
		
	     $sql = $connect->query("SELECT * FROM `details`.`basicdetails` WHERE `USN`='$USN'");
	        if(mysqli_num_rows($sql) == 1){
  
		          if($connect->query("UPDATE `details`.`basicdetails` SET `FirstName`='$fname', `LastName`='$lname', `Mobile`='$phno', `Email`='$email', `DOB`='$date', `Sem`='$cursem', `Branch`= '$branch', `SSLC`='$per', `PU/Dip`='$puagg', `BE`='$beaggregate', `Backlogs`='$back', `HofBacklogs`='$hisofbk', `DetainYears`='$detyear' ,`Approve`='0'
                  WHERE `basicdetails`.`USN` = '$USN'")){
				               echo "<center><h1>Data Updated successfully...!!</h1></center>";
                       }
	  
               else echo "<center>FAILED TO CONNECT!!SOMETHINGS WRONG</center>";
		
	         }	
	       else echo "<center><h1>No record found for update</h1></center>";
	 }else
	    echo "<center><h1>Username entered incorrectly, please check username before submitting. </h1></center>";}
}
?>