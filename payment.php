<?php
include_once('./config.php');
// include_once('./booking.php');
if(isset($_POST['payment'])){
    $payment_method = $_POST['pay-method'];
    // $B_ID = $_GET[' '];
    // $query = "INSERT INTO `payment`(`P_ID`,`B_ID`,`Payment Method`,`Date`) VALUES (null, $B_ID,$payment_method, now())";
    $query = $conn->prepare("INSERT INTO `payment`(`B_ID`,`Payment Method`,`Date`) VALUES ('$B_ID','$payment_method',now())");
   
    $result= $query->execute();
  
    if($result){
        
        echo "<script>
        
        
        
        </script>";
    }
    else{
        echo "payment failed";
    }
    
}

?>