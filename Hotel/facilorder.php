<?php
include 'connect.php';

	$con= mysqli_connect($servername,$username,$password,$db);
	if(mysqli_connect_errno($con))
	echo "error";



if(isset($_POST['submit'])){
	$Guest_Name=$_POST['name'];
	$Guest_ID=$_POST['id'];
	$Facility_Name=$_POST['facility'];
	$s="INSERT INTO uses(Guest_Name,Guest_ID,Facility_Name) VALUES ('$Guest_Name','$Guest_ID','$Facility_Name')";
    if(mysqli_query($con,$s))
	{
	echo"Facility ordered";
	echo "<a href='HTML 5-1.html'> Back to homepage </a>";
	}
	else
		echo"faild";
}
?>