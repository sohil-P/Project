<?php
include ('./config.php');
if(isset($_POST['submit'])){
    $name = $_POST['full_name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $address= $_POST['street_address'];
    $city = $_POST['city'];
    $state= $_POST['state'];
    $pincode = $_POST['zip'];
     $service=$_POST['service'];

    $query ="INSERT INTO `booking_details`(`Name`,`Email`,`Mobile No`,`Address`,`City`,`State`,`Pincode`,`S_ID`) VALUES ('$name','$email','$phone','$address','$city','$state','$pincode','$service')";
    $result = $conn->query($query);
    if($result){
        echo "Booking successfull";
    }
    echo "not booking";
}

?>