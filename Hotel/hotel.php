

<?php
$servername="localhost";
$username="root";
$password="root";
$db= "hotel";

$con= mysqli_connect($servername,$username,$password,$db);

if($con)
{
	echo "connected successfully";
	}
	else
	{
		echo "Sorry". mysqli_connect_error
		}
$sql="INSERT INTO guest(Guest_Id,GuestName,Age,Nationality,Check_InDate,Check_OutDate) values (987654321,'John',30,'American',12/3/2018,20/3/2018)";
$query=mysqli_query($con,$sql);
if($query)
	echo 'data inserted successfully';
	$id = $_POST['id'];
$pass = $_POST['password'];

if ($user&&$pass) 
{
//connect to db
//$connect = mysql_connect("$server","$username","$password") or die("not connecting");
//mysql_select_db("users") or die("no db :'(");
$query = mysql_query("SELECT * FROM $admin WHERE id='$id'");

$numrows = mysql_num_rows($query);


if ($numrows!=0)
{
//while loop
  while ($row = mysql_fetch_assoc($query))
  {
    $dbid = $row['id'];
    $dbpassword = $row['password'];
  }
  else
      die("incorrect username/password!");
}
else
  echo "user does not exist!";
} 
else
    die("please enter a username and password!");
$inputuser=$_POST['user'];
$inputpass=$_POST['pass'];
$query="SELECT * FROM  'users' WHERE 'username'= '$inputuser'";
$querypass="SELECT *FROM 'users' WHERE 'password'= '$inputpass'";
$guest_info="INSERT INTO Guest (Guest_Name,Guest_ID,Check_InDate,Check_OutDate,Room_Category) VALUES ('$_POST[Guest_Name]','$_POST[Guest_ID]','$_POST[Check_InDate]','$_POST[Check_OutDate]','$_POST[Room_Category]')";
if(!mysql_query($guest_info,$con)) {die('Error:'.mysql_error());}
echo "Your Information was added to database.";



mysql_close($con);



?>
</body>
</html>

