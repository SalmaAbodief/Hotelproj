<?php
include 'connect.php';

	$con= mysqli_connect($servername,$username,$password,$db);
	if(mysqli_connect_errno($con))
	echo "error";



if(isset($_POST['submit'])){
	$Admin_ID=$_POST['id'];
	$Password=$_POST['password'];
if ($Admin_ID&&$Password) 
{
	$e="SELECT * FROM admin WHERE ID='$Admin_ID' && Password='$Password'";
$query = mysqli_query($con,$e);



if (mysqli_num_rows($query)>0)
{
  while ($row = mysqli_fetch_assoc($query))
  {
    $chID = $row['ID'];
    $chPassword = $row['Password'];
  }
  echo "valid id and password";
  echo "<a href='index.html'> Access data </a>";
}
  else
      die("incorrect username/password!");
}
else
  echo "user does not exist!";
}
?>