<?php
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $enteredUsername = $_POST['username'];
    
    if ($enteredUsername === $_SESSION['username']) {
        session_destroy();
        setcookie('username', '', time() - 3600, "/");
        header("Location: index.php");
        exit;
    } else {
        echo "Error: Username does not match the logged-in user.";
    }
}