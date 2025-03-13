<?php
include("./connection.php");
if(isset($_GET['id'])){
    $id=$_GET['id'];
}
else{
    $id=0;
}
$students = $conn->prepare("SELECT * FROM `premium_service` WHERE PS_ID='$id'  ");
$students->execute();
$result=$students->fetchAll();
echo "<table border='1'>";
echo "<th>PS_ID</th>";
echo "<th>PSName</th>";
echo "<th>Frequency</th>";
echo "<th>Date</th>";
echo "<th>Time</th>";
echo "<th>Price</th>";
echo "<th>Worker Group</th>";
echo "<th>Workers</th>";     


foreach($result as $student){
   
    echo "<tr>.
    <td>".$student['PS_ID']."</td>
    <td>".$student['PSName']."</td>
    <td>".$student['Frequency']."</td>
    <td>".$student['Date']."</td>
    <td>".$student['Time']."</td>
    <td>".$student['Price']."</td>
    <td>".$student['Worker Group']."</td>
    <td>".$student['Workers']."</td>
    

    <td><form method='post'>
     <button name='delete' value=".$student['PS_ID'].">DELETE</button>
    </form></td>
   
    </tr>";
}
echo "</table>";

if(isset($_POST['delete'])){
    $id=$_POST['delete'];
    $students = $conn->prepare("DELETE  FROM premium_service WHERE PS_ID='$id' ");
    
    if($students->execute()){
        echo "Record Deleted..";
          header("Refresh:1");
    }
    else{
        echo "operation failed!";
    }
}


?>