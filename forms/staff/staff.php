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

$firstName=$_POST["firstName"];
$lastName=$_POST["lastName"];
$mailID=$_POST["mailID"];
$contactNo=$_POST["contactNo"];
$address=$_POST["address"];
$DOB=$_POST["DOB"];
$DOJ=$_POST["DOJ"];
$department=$_POST["department"];
$gender=$_POST["gender"];
$specialization=$_POST["specialization"];
$admin=$_POST["admin"];
$username=$_POST["userName"];
$password=$_POST["password"];
$confirmPassword=$_POST["confirmPassword"];

if ($password === $confirmPassword)
{
	$sql = "INSERT INTO staff (first_name, last_name, mail_id, contact_no, address, dob, doj, department, gender, specialization, admin, username, password)
	VALUES('$firstName','$lastName','$mailID','$contactNo','$address','$DOB','$DOJ','$department','$gender','$specialization','$admin','$username','$password')";

	if ($conn->query($sql)===TRUE) {
   		 echo "<script>
		alert('Staff Added');
		window.location.href='./staff.html';
		</script>";
	}
	else{
		echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}
}

else{
	echo "Password and Confirm Password do not match....Please enter the details again";
	header("location:./staff.html");
	
}

$conn->close();

?>