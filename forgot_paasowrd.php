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
        // Generate a unique token
        $reset_token = bin2hex(random_bytes(16));
        date_default_timezone_set('Asia/Kolkata');
        $date = date('Y-m-d H:i:s', strtotime('+1 hour'));

        // Store the token in the database
        $query = "UPDATE `user_registration` SET `Reset_Token`='$reset_token', `Token_Expire`='$date' WHERE `Email`='$email'";
        if (mysqli_query($conn, $query)) {
            // Send the reset link to the user's email
            $reset_link = "http://localhost/Project/reset_password.php?email=$email&reset_token=$reset_token";
            $subject = "Password Reset Request";
            $message = "Click the following link to reset your password: $reset_link";
            $headers = "From: no-reply@gmail.com";

            if (mail($email, $subject, $message,$headers)) {
                echo "
                <script>
                alert('Reset link sent to your email');
                window.location.href='./forgot_paasowrd.php';
                </script>";
            } else {
                echo "
                <script>
                alert('Failed to send email. Please try again.');
                window.location.href='forgot_paasowrd.php';
                </script>";
            }
        } else {
            echo "
            <script>
            alert('Server Down! Try again later');
            window.location.href='forgot_paasowrd.php';
            </script>";
        }
    } else {
        echo "
        <script>
        alert('Email not found');
        window.location.href='./forgot_paasowrd.php';
        </script>";
    }
}
?> 

<div class="form-box" id="forgot-box">
    <h2>Forgot Password</h2>
    <form action="forgot_paasowrd.php" method="post">
        <div class="input-box">
            <input type="email" name="email" required placeholder="Enter your email">
            <label>Email</label>
        </div>
        <button type="submit" class="btn">Send Reset Link</button>
    </form>
</div>


