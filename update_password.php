
<?php
session_start();
include './config.php'; // Include your database connection file

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $new_password = $_POST['new_password'];
    $email = $_SESSION['email'];

    // Update password in the database
    $stmt = $conn->prepare("UPDATE user_registration SET Password = ? WHERE Email = ?");
    $stmt->bind_param("ss", $new_password, $email);

    if ($stmt->execute()) {
        echo "Password updated successfully.";
        // Clear session variables
        session_unset();
        session_destroy();
    } else {
        echo "Error updating password.";
    }
}
?>