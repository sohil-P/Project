<?php

include('./config.php');
include('./booking.php');
if(isset($_POST['submit'])){

    $SName=$_POST['service'];
    $SFrequency=$_POST['frequency'];
    $SDate = $_POST['cleaning_date'];
    $STime = $_POST['cleaning_time'];
    $SPrice=$_POST['prices'];
    $Worker_Group=$_POST['worker_group'];
    $Worker = $_POST['workers'];

    $sql = "INSERT INTO `service_category`(`Sname`,`Frequency`,`Date`,`Time`,`Price`,`Worker_Group`,`Workers`)
    VALUES ('$SName', '$SFrequency', '$SDate', '$STime', '$SPrice', '$Worker_Group', '$Worker')";
    $result = $conn->query($sql);
    if($result){
        echo "New record created successfully";
    } else {
        echo "Error: ". $sql . "<br>". $conn->error;
    }
}


?>