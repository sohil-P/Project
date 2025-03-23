<<<<<<< HEAD
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
=======
<!-- filepath: c:\xampp\htdocs\Project\logout.php -->
<?php
session_start();

// Destroy the session
session_destroy();

// Unset all session variables
$_SESSION = array();

// If it's desired to kill the session, also delete the session cookie.
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

// Destroy user-specific cookies
setcookie('username', '', time() - 3600, '/');
setcookie('user_id', '', time() - 3600, '/');

// Redirect to the homepage
header("Location: ./index.php");
exit();
>>>>>>> a0cf663fb7f0d4cad2cbff5246a1c95963900e4e
?>