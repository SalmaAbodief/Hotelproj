<?php
include 'connect.php';

	$con= mysqli_connect($servername,$username,$password,$db);
	if(mysqli_connect_errno($con))
	echo "error";



if(isset($_POST['submit'])){
	$Guest_Name=$_POST['name'];
	$Guest_ID=$_POST['id'];
	$Food_name=$_POST['food'];
	$quantity=$_POST['quantaty'];
	$s="INSERT INTO orders(Guest_Name,Guest_ID,Food_Name,Quantity) VALUES ('$Guest_Name','$Guest_ID','$Food_name','$quantity')";
    if(mysqli_query($con,$s))
	{
	echo"successfully inserted";
	echo "<a href='HTML 5-1.html'> Back to homepage </a>";
	}
	else
		echo"faild";
}
?>