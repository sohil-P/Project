<?php
include('./config.php');
include('./booking.php');
if(isset($_POST['submit'])){
    
    $SSName=$_POST['service'];
    $Frequency=$_POST['frequency'];
    $Date = $_POST['cleaning_date'];
    $Time = $_POST['cleaning_time'];
    $Price=$_POST['prices'];
    $Worker_Group=$_POST['worker_group'];
    $Worker = $_POST['workers'];
    $sql3= "INSERT INTO `standard_service`(`SSName`,`Frequency`,`Date`,`Time`,`Price`,`Worker Group`,`Workers`)VALUES('$SSName','$Frequency','$Date','$Time','$Price','$Worker_Group','$Worker')";
    $result1 =$conn->query($sql3);
    if($result1){
            echo "recored Inserted";
    }
    else{
        echo "error";
    }
}
?>