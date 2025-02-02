<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "healthcenter";

// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);

// Check connection
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
} 

$username=$_POST["username"];
$password=$_POST["password"];

$sql = "SELECT * FROM staff WHERE password='$password' and username='$username' and department='Pharmacy'";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
	header('location:../../docks/pharmacy/pharmacy.html');

}
else {
	echo "<script>
	alert('Invalid Credentials...Please Try Again...!!');
	window.location.href='./pharmacy.html';
	</script>";

}

$conn->close();

?>