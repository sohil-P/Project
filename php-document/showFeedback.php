<?php
include("./connection.php");
// if(isset($_GET['id'])){
//     $id=$_GET['id'];
// }
// else{
//     $id=0;
// }
$students = $conn->prepare("SELECT * FROM `feedback-details`  ");
$students->execute();
$result=$students->fetchAll();
echo "<table border='1'>";
echo "<th>F_ID</th>";
echo "<th>Name</th>";
echo "<th>Address</th>";
echo "<th>MobileNo</th>";
echo "<th>Message</th>";
    


foreach($result as $student){
   
    echo "<tr>.
    <td>".$student['F_ID']."</td>
    <td>".$student['Name']."</td>
    <td>".$student['Address']."</td>
    <td>".$student['MobileNo']."</td>
    <td>".$student['Message']."</td>
  

    <td><form method='post'>
     <button name='delete' value=".$student['F_ID'].">DELETE</button>
    </form></td>
   
    </tr>";
}
echo "</table>";

if(isset($_POST['delete'])){
    $id=$_POST['delete'];
    $students = $conn->prepare("DELETE  FROM feedback-details WHERE F_ID='$id' ");
    
    if($students->execute()){
        echo "Record Deleted..";
          header("Refresh:1");
    }
    else{
        echo "operation failed!";
    }
}


?>