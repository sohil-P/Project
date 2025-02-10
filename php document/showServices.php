<?php
include("./connection.php");
if(isset($_GET['id'])){
    $id=$_GET['id'];
}
else{
    $id=0;
}
$students = $conn->prepare("SELECT * FROM `service_category` WHERE S_ID='$id'  ");
$students->execute();
$result=$students->fetchAll();
echo "<table border='1'>";
echo "<th>S_ID</th>";
echo "<th>Sname</th>";
echo "<th>Frequency</th>";
echo "<th>Date</th>";
echo "<th>Time</th>";
echo "<th>Price</th>";
echo "<th>Worker Group</th>";
echo "<th>Workers</th>";     


foreach($result as $student){
   
    echo "<tr>.
    <td>".$student['S_ID']."</td>
    <td>".$student['Sname']."</td>
    <td>".$student['Frequency']."</td>
    <td>".$student['Date']."</td>
    <td>".$student['Time']."</td>
    <td>".$student['Price']."</td>
    <td>".$student['Worker_Group']."</td>
    <td>".$student['Workers']."</td>
    

    <td><form method='post'>
     <button name='delete' value=".$student['S_ID'].">DELETE</button>
    </form></td>
   
    </tr>";
}
echo "</table>";

if(isset($_POST['delete'])){
    $id=$_POST['delete'];
    $students = $conn->prepare("DELETE  FROM service_category WHERE S_ID='$id' ");
    
    if($students->execute()){
        echo "Record Deleted..";
          header("Refresh:1");
    }
    else{
        echo "operation failed!";
    }
}


?>