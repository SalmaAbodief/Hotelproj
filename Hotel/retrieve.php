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

$sql = "SELECT Guest_Name, Guest_ID, Nationality, Age , Check_InDate, Check_OutDate, room_cat FROM guest";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
		echo"<table border='2' style='width:100%'>";
		echo"<br>";
        echo "id:: " . $row["Guest_ID"]. " |||  Name:: " . $row["Guest_Name"]. " |||  Nationality::" . $row["Nationality"]. " |||  Age::" . $row["Age"]. " |||  Check_In:: " . $row["Check_InDate"]. " |||  Check_Out:: " . $row["Check_OutDate"]. " |||  room catagory:: " . $row["room_cat"]. "<br>";
    }
	
} else {
    echo "0 results";
}
echo "<a href='HTML 5-1.html'> Back to homepage </a>";
$conn->close();
?>