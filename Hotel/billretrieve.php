<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "hotel";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
if(isset($_POST['submit'])){
	$Guest_ID=$_POST['id'];
	$Guest_Name=$_POST['name'];
	///echo $Guest_ID;
if ($Guest_ID&&$Guest_Name) 
{
$e="SELECT * FROM bill WHERE Guest_ID='$Guest_ID' && Guest_Name='$Guest_Name'";
$query = mysqli_query($conn,$e);
if (mysqli_num_rows($query)>0)
{
 while ($row = mysqli_fetch_assoc($query))
  {
    $chName= $row['Guest_Name'];
    $chID = $row['Guest_ID'];
	        echo "ID:: " . $row["Guest_ID"]. " |||  Name:: " . $row["Guest_Name"]. " |||  Room Charge::" . $row["Room_Charge"]. " |||  Order Charge:: " . $row["Order_Charge"]. " |||  Facility Charge:: " . $row["Facility_Charge"]."<br>";
			echo "<a href='reservation.html'> Back to form </a><b>";
			echo "<a href='HTML 5-1.html'> Back to homePage </a>";
            
   }
  }
  
   }
}
 else {
    echo "0 results";
}
?>