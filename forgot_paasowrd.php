
 <?php
session_start();
include_once 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];

    // Check if the email exists in the database
    $check_email = $conn->prepare("SELECT * FROM `user_registration` WHERE Email = ?");
    $check_email->bind_param("s", $email);
    $check_email->execute();
    $result = $check_email->get_result();

    if ($result->num_rows > 0) {
        $_SESSION['reset_email'] = $email;
        header("Location: ./reset_password.php");
        exit();
    } else {
        echo "<script>alert('Email not found!'); window.location.href='login.html';</script>";
    }
}
?> 

<form action="./forgot_paasowrd.php" method="post">
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>
    <input type="submit" value="Submit">
</form>

