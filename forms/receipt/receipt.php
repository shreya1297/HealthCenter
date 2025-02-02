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

$rollNo=$_POST["rollNo"];

$sql = "SELECT * FROM student_data WHERE roll_no='$rollNo'";
$result=$conn->query($sql);
#$cnt=mysqli_affected_rows($conn);

if ($result->num_rows > 0) {

	$sql = "INSERT INTO receipt (roll_no,doc_id) VALUES('$rollNo','80001')";
	$conn->query($sql);
	
	$sql = "SELECT MAX(receipt_id) AS max_id from receipt WHERE roll_no='$rollNo'";
	$result=$conn->query($sql);
	
	$row = $result->fetch_assoc();
	$sql = "INSERT INTO active_receipt (receipt_id) VALUES ('$row[max_id]')";
	$conn->query($sql);

	echo "<script>
	alert('Receipt has been generated');
	window.location.href='./receipt.html';
	</script>";
    }
else {
	header("location:../registration/registration.html");
}
$conn->close();

?>