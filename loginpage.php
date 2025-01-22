<?php
 include('./config.php');
 if(isset($_POST['signup'])){
    $Username = $_POST['UName'];
   
    $email = $_POST['email'];
    $password = $_POST['password'];
    // $password =md5($password);

    $checkEmail= "SELECT * FROM user_registration WHERE Email='$email'";
    $result= $conn->query($checkEmail);
    if($result->num_rows>0){
      echo "<script>
       alert('Email alredy exists, please enter another Email')
       window.location.href='login.html'
      </script>";
        
    }
    else{
       $insertQuery="INSERT INTO user_registration(Username,Email,Password,Date) VALUES('$Username','$email','$password',now())";
       
       if($conn->query($insertQuery)==TRUE){
         header("location:./login.html");
       }
       else{
      //   header("location:./login.html");
        echo "<script>
        alert('Error:.$conn->error')
        window.location.href='login.html'
        </script>";
       }
    }
 }
 if(isset($_POST['login'])){
    $email=$_POST['email'];
    $password=$_POST['password'];
    // $password=md5($password);
    //$sql="INSERT INTO userlogin(Email,Password) SELECT Email,Password FROM registration"; 
     $sql="SELECT * FROM user_registration  WHERE Email='$email'  AND Password='$password'";
    $result=$conn->query($sql);
    
    if($result->num_rows>0 ){
        $sql ="INSERT INTO user_login(Email,Password, Date) VALUES ('$email','$password', Now())";
        $conn->query($sql);
        session_start();
        $row=$result->fetch_assoc();
        $_SESSION['email']=$row['email'];
        header("location:./index.html");
        exit();
    }
    else{
           
        echo "<script>
        alert('Not found,Incorrect Email or Password')
        window.location.href='login.html'
        </script>";
     
    }
 }
?>