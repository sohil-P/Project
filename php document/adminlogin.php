<?php
include_once("./connection.php");
$admin= $conn->prepare("SELECT * FROM admin_login ");
$admin->execute();

$result=$admin->fetchAll();
echo "<table border='1'>";

echo "<th>A_ID</th>";
echo "<th>AdminName</th>";
echo "<th>Password</th>";


foreach($result as $student){
    echo "<tr>";
    echo "<td>".$student['A_ID']."</td>";
    echo "<td>".$student['AdminName']."</td>";
    echo "<td>".$student['Password']."</td>";
   
    echo "</tr>";
}
?>