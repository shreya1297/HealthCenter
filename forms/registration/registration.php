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
$firstName=$_POST["firstName"];
$lastName=$_POST["lastName"];
$contactNo=$_POST["contactNo"];
$DOB=$_POST["DOB"];
$hostel=$_POST["hostel"];
$year=$_POST["year"];
$branch=$_POST["branch"];
$bloodgp=$_POST["bloodgp"];
$gender=$_POST["gender"];



$sql = "INSERT INTO student_data (roll_no, first_name, last_name, contact_no, hostel, year, branch, dob, gender, blood_group)
VALUES('$rollNo','$firstName','$lastName','$contactNo','$hostel','$year','$branch','$DOB','$gender','$bloodgp')";

if ($conn->query($sql)===TRUE) {
    echo "<script>
	alert('Patient Registered');
	window.location.href='../receipt/receipt.html';
	</script>";
}
else{
	echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
$conn->close();

?>