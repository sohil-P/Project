<?php
include("./connection.php");
$students = $conn->prepare("SELECT * FROM user_registration ");
$students->execute();
$result=$students->fetchAll();

echo "<table border='1'>";
echo "<th>U_ID</th>";
echo "<th>UserName</th>";
echo "<th>Email</th>";
echo "<th>Password</th>";
echo "<th>Date</th>";


foreach($result as $student){
   
    echo "<tr>.
    <td>".$student['U_ID']."</td>
    <td>".$student['Username']."</td>
    <td>".$student['Email']."</td>
    <td>".$student['Password']."</td>
    <td>".$student['Date']."</td>
    

    <td><form method='post'>
     <button name='delete' value=".$student['U_ID'].">DELETE</button>
    </form></td>
   
    </tr>";
}
echo "</table>";

if(isset($_POST['delete'])){
    $id=$_POST['delete'];
    $students = $conn->prepare("DELETE  FROM user_registration WHERE U_ID='$id' ");
    
    if($students->execute()){
        echo "Record Deleted..";
          header("Refresh:1");
    }
    else{
        echo "operation failed!";
    }
}

?>