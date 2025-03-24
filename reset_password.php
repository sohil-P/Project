<?php
session_start();
include_once 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $reset_token = $_POST['reset_token'];
    $new_password = password_hash($_POST['new_password'], PASSWORD_BCRYPT);

    // Check if the token is valid
    $check_token = $conn->prepare("SELECT * FROM `user_registration` WHERE Email = ? AND Reset_Token = ? AND Token_Expire > NOW()");
    $check_token->bind_param("ss", $email, $reset_token);
    $check_token->execute();
    $result = $check_token->get_result();

    if ($result->num_rows > 0) {
        // Update the password
        $update_password = $conn->prepare("UPDATE `user_registration` SET Password = ?, Reset_Token = NULL, Token_Expire = NULL WHERE Email = ?");
        $update_password->bind_param("ss", $new_password, $email);
        $update_password->execute();

        echo "
        <script>
        alert('Your password has been reset successfully.');
        window.location.href='login.html';
        </script>";
    } else {
        echo "
        <script>
        alert('Invalid or expired token.');
        window.location.href='forgot_paasowrd.php';
        </script>";
    }
}
?> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <div class="form-box" id="reset-box">
            <h2>Reset Password</h2>
            <form action="reset_password.php" method="post">
                <input type="hidden" name="email" value="<?php echo $_GET['email']; ?>">
                <input type="hidden" name="reset_token" value="<?php echo $_GET['reset_token']; ?>">
                <div class="input-box">
                    <input type="password" name="new_password" required placeholder="Enter your new password">
                    <label>New Password</label>
                </div>
                <button type="submit" class="btn">Reset Password</button>
            </form>
        </div>
    </div>
</body>
</html>
<style>/* General Page Styling */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Arial', sans-serif;
}

body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background: linear-gradient(135deg, #ff9966, #ff5e62);
}

/* Reset Password Container */
.container {
    width: 350px;
    padding: 30px;
    background: white;
    border-radius: 10px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
    text-align: center;
    animation: fadeIn 0.8s ease-in-out;
}

@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(-20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Heading */
h2 {
    margin-bottom: 20px;
    color: #333;
}

/* Input Field */
.input-box {
    position: relative;
    margin-bottom: 20px;
}

.input-box input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    outline: none;
    transition: 0.3s;
}

.input-box input:focus {
    border-color: #ff5e62;
}

/* Reset Button */
.btn {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 5px;
    background: #ff5e62;
    color: white;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
}

.btn:hover {
    background: #e04a4a;
}

/* Responsive */
@media (max-width: 400px) {
    .container {
        width: 90%;
    }
}
</style>





