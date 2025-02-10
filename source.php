<?php
include('./config.php');
if (isset($_POST['service'])) {
    $Sname = $_POST['service'];
    $stmt = $conn->prepare("SELECT `S_ID` FROM `service_category` WHERE `Sname` = '$Sname'");
    // $stmt->bind_param("s",$Sname);
    $stmt->execute();
    $stmt->bind_result($id);
    $stmt->fetch();
    $stmt->close();

    if(!$id){
        $stmt = $conn->prepare("INSERT INTO `service_category` (`Sname`) VALUES ($Sname)");
        $stmt->bind_param("s", $Sname);
        $stmt->execute();
        $id = $stmt->insert_id;
        $stmt->close();
    }
} else {
    $id = null;
}

if(isset($_POST['service'])){
    $BSname = $_POST['service'];
    $stmt = $conn->prepare("SELECT `BSname` FROM `basic_service` WHERE `BSName` = '$BSname'");
    // $stmt->bind_param("s",$Sname);
    $stmt->execute();
    $stmt->bind_result($Bid);
    $stmt->fetch();
    $stmt->close();
}
if(!$Bid){
    $stmt = $conn->prepare("INSERT INTO `basic_service` (`BSName`) VALUES ($BSname)");
    $stmt->bind_param("s", $Sname);
    $stmt->execute();
    $id = $stmt->insert_id;
    $stmt->close();
}
 else {
$Bid = null;
}

?>