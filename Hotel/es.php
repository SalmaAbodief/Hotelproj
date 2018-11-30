<?php
include 'connect.php';

	$con= mysqli_connect($servername,$username,$password,$db);
	if(mysqli_connect_errno($con))
	echo "error";



if(isset($_POST['submit'])){
	$Guest_Name=$_POST['name'];
	$Guest_ID=$_POST['id'];
	$Nationality=$_POST['nationality'];
	$Age=$_POST['age'];
	$Check_InDate=$_POST['checkin'];
	$Check_OutDate=$_POST['checkout'];
	$room_cat=$_POST['room'];
	$s="INSERT INTO guest(Guest_Name,Guest_ID,Nationality,Age,Check_InDate,Check_OutDate,room_cat) VALUES ('$Guest_Name','$Guest_ID','$Nationality','$Age','$Check_InDate','$Check_OutDate','$room_cat')";
    if(mysqli_query($con,$s))
	{
	echo"successfully reserved";
	echo "<a href='HTML 5-1.html'> Back to homepage </a>";
	}
	else
		echo"faild";
}
?>