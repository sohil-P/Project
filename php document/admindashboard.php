<?php
// // Database configuration
// $host = 'localhost'; // or your database host
// $dbname = 'cleaning services'; // your database name
// $username = 'root'; // your database username
// $password = ''; // your database password

// // Create a connection
// $conn = new mysqli($host, $username, $password, $dbname);

// // Check connection
// if ($conn->connect_error) {
//     die("Connection failed: " . $conn->connect_error);
// }
include("./connection.php");
$students = $conn->prepare("SELECT * FROM booking_details");
$students->execute();
$result=$students->fetchAll();

echo "<table border='1'>";
echo "<th>B_ID</th>";
echo "<th>Name</th>";
echo "<th>Email</th>";
echo "<th>MobileNo</th>";
echo "<th>Address</th>";
echo "<th>City</th>";
echo "<th>State</th>";
echo "<th>Pincode</th>";
echo "<th>S_ID</th>";
echo "<th>BS_ID</th>";
echo "<th>SS_ID</th>";
echo "<th>PS_ID</th>";

foreach($result as $student){
   
    echo "<tr>.
    <td>".$student['B_ID']."</td>
    <td>".$student['Name']."</td>
    <td>".$student['Email']."</td>       
    <td>".$student['MobileNo']."</td>
    <td>".$student['Address']."</td>
    <td>".$student['City']."</td>
    <td>".$student['State']."</td>
    <td>".$student['Pincode']."</td>
    <td><a href='showServices.php?id=".$student['S_ID']."'>".$student['S_ID']."</a></td>
    <td><a href='basic_service.php?id=".$student['BS_ID']."'>".$student['BS_ID']."</a></td>
    <td><a href='standard_service.php?id=".$student['SS_ID']."'>".$student['SS_ID']."</a></td>
    <td><a href='premium_service.php?id=".$student['PS_ID']."'>".$student['PS_ID']."</a></td>

    <td><form method='post'>
     <button name='delete' value=".$student['B_ID'].">DELETE</button>
    </form></td>
   
    </tr>";
}
echo "</table>";

if(isset($_POST['delete'])){
    $id=$_POST['delete'];
    $students = $conn->prepare("DELETE  FROM booking_details WHERE B_ID='$id' ");
    
    if($students->execute()){
        echo "Record Deleted..";
          header("Refresh:1");
    }
    else{
        echo "operation failed!";
    }
}

?>