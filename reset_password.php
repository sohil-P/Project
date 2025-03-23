<?php
session_start();
include_once 'config.php';
if (!isset($_SESSION['reset_email'])) {
    header("Location: ./login.html");
    exit();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $new_password = $_POST['password'];
    $email = $_SESSION['reset_email'];

    // Update password in the database
    $update = $conn->prepare("UPDATE   `user_registration` SET Password = ? WHERE 'Email' = ?");
    $update->bind_param("ss", $new_password, $email);
    $update->execute();

    unset($_SESSION['reset_email']);
    echo "<script>alert('Password updated successfully!'); window.location.href='login.html';</script>";
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
        <h2>Reset Password</h2>
        <form action="./reset_password.php" method="post">
            <div class="input-box">
                <input type="password" name="password" placeholder="New Password" required>
            </div>
            <button type="submit" class="btn">Reset Password</button>
        </form>
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




  
