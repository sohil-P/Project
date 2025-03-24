
<?php
session_start();
include './config.php'; // Include your database connection file

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $entered_otp = $_POST['otp'];

    if ($entered_otp == $_SESSION['otp']) {
        // OTP is valid, allow user to reset password
        echo '<form action="update_password.php" method="POST">
                <label for="new_password">Enter New Password:</label>
                <input type="password" name="new_password" required>
                <input type="submit" value="Reset Password">
              </form>';
    } else {
        echo "Invalid OTP. Please try again.";
    }
}
?>

<!-- verify_otp.php -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verify OTP</title>
</head>
<body>
    <h2>Verify OTP</h2>
    <form action="reset_password.php" method="POST">
        <label for="otp">Enter OTP:</label>
        <input type="text" name="otp" required>
        <input type="submit" value="Verify OTP">
    </form>
</body>
</html>