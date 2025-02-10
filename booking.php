
 <?php 

include ('./config.php');
// if (isset($_POST['service'])) {
//     $Sname = $_POST['service'];
//     $stmt = $conn->prepare("SELECT `S_ID` FROM `service_category` WHERE `Sname` = '$Sname'");
//     // $stmt->bind_param("s",$Sname);
//     $stmt->execute();
//     $stmt->bind_result($id);
//     $stmt->fetch();
//     $stmt->close();
// } else {
//     $id = null;
// }
//  include('./source.php');
if(isset($_POST['submit'])){
    $name = $_POST['full_name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $address= $_POST['street_address'];
    $city = $_POST['city'];
    $state= $_POST['state'];
    $pincode = $_POST['zip'];
    // $id= $_POST['service'];
    $query = "INSERT INTO `booking_details`(`Name`,`Email`,`MobileNo`,`Address`,`City`,`State`,`Pincode`,`S_ID`,`BS_ID`,`SS_ID`,`PS_ID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?,?,?)";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("sssssssssss", $name, $email, $phone, $address, $city, $state, $pincode, $S_ID, $BS_ID,$SS_ID,$PS_ID);
    $result = $stmt->execute();
    $last_id=$conn->insert_id;
    $stmt->close();
    
    if($result){
        echo "<script>
        alert(' Booking successful. Your Booking ID is :$last_id')
        window.location.href='window-service.html'
       </script>";
    }else{
        echo "<script>
        alert('Not Book the service')
        window.location.href='window-service.html'
       </script>";
    }
}
?>
<?php

// Include the configuration file
// require_once './config.php';

// // Check if the form has been submitted
// if (isset($_POST['submit'])) {
//     // Validate and sanitize user input
//     $name = filter_var($_POST['full_name'], FILTER_SANITIZE_STRING);
//     $email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
//     $phone = filter_var($_POST['phone'], FILTER_SANITIZE_NUMBER_INT);
//     $address = filter_var($_POST['street_address'], FILTER_SANITIZE_STRING);
//     $city = filter_var($_POST['city'], FILTER_SANITIZE_STRING);
//     $state = filter_var($_POST['state'], FILTER_SANITIZE_STRING);
//     $pincode = filter_var($_POST['zip'], FILTER_SANITIZE_NUMBER_INT);
//     $sName = filter_var($_POST['service'], FILTER_SANITIZE_STRING);

//     // Prepare the SQL query
//     $query = "INSERT INTO `booking_details` (`Name`, `Email`, `MobileNo`, `Address`, `City`, `State`, `Pincode`, `S_ID`) 
//               VALUES ($name, $email, $phone, $address, $city, $state, $pincode, (SELECT `S_ID` FROM `service_category` WHERE `Sname` = $sName))";

//     // Prepare the statement
//     $stmt = $conn->prepare($query);

//     // Bind the parameters
//     $stmt->bind_param("ssssssss", $name, $email, $phone, $address, $city, $state, $pincode, $sName);

//     // Execute the query
//     if ($stmt->execute()) {
//         echo "Booking successful";
//     } else {
//         echo "Booking failed: " . $stmt->error;
//     }

//     // Close the statement
//     $stmt->close();
// }

?>

