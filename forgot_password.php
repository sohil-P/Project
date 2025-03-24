
<?php
session_start();
include './config.php'; // Include your database connection file

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];

    // Check if email exists in the database
    $stmt = $conn->prepare("SELECT * FROM user_registration WHERE Email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Generate OTP
        $otp = rand(100000, 999999);
        $_SESSION['otp'] = $otp;
        $_SESSION['email'] = $email;

        // Send OTP to user's email
        $to = $email;
        $subject = "Your OTP Code";
        $message = "Your OTP code is: " . $otp;
        $headers = "From: brightwavecleaners17@gmail.com";

        if (mail($to, $subject, $message, $headers)) {
            echo "OTP sent to your email. <a href='reset_password.php'>Verify OTP</a>";
        } else {
            echo "Failed to send OTP.";
        }
    } else {
        echo "Email not found.";
    }
}
?>

<!-- forgot_password.php -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
</head>
<body>
    <h2>Forgot Password</h2>
    <form action="forgot_password.php" method="POST">
        <label for="email">Enter your email:</label>
        <input type="email" name="email" required>
        <input type="submit" value="Send OTP">
    </form>
</body>
</html>
