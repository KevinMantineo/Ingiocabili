<?php
//require '../db.php';
session_start();
//$mysqli = new mysqli($servername, $username, $password, $dbname);



if (!isset($_SESSION["csrf_token"])) {
    $_SESSION["csrf_token"] = bin2hex(random_bytes(16));
}

// Se già loggato, vai alla dashboard
if (isset($_SESSION['token'])) {
    header('Location: /RoadPulse/Main/Dashboard.php');
    exit;
}

// Logout
if (isset($_POST['logout'])) {
    $_SESSION = [];
    session_destroy();
    header("Location: login.php");
    exit;
}

$error = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Verifica token CSRF
    if (!isset($_POST['token']) || $_POST['token'] !== $_SESSION['csrf_token']) {
        $error = 'Token CSRF non valido.';
    } else {
        $username = trim($_POST['username'] ?? '');
        $password = $_POST['password'] ?? '';

        if (strlen($username) < 3 || strlen($password) < 6) {
            $error = 'Username o password non validi.';
        } else {
            $stmt = $mysqli->prepare('SELECT ID, password FROM account WHERE username = ?');
            $stmt->bind_param('s', $username);
            $stmt->execute();
            $stmt->store_result();
            if ($stmt->num_rows === 1) {
                $stmt->bind_result($user_id, $password_hash);
                $stmt->fetch();
                if (password_verify($password, $password_hash)) {
                    $token = bin2hex(random_bytes(16));
                    $_SESSION['token'] = $token;
                    $_SESSION['user_id'] = $user_id;
                    $_SESSION['username'] = $username;
                    header('Location: /RoadPulse/Main/Dashboard.php');
                    exit;
                } else {
                    $error = 'Credenziali errate.';
                }
            } else {
                $error = 'Credenziali errate.';
            }
            $stmt->close();
        }
    }
}
?>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Road Pulse</title>
    <link rel="stylesheet" href="styles_login.css">
</head>
<body>

    <div class="login-container">
        <div class="logo"></div>
        
        <?php if (!empty($error)) echo '<p style="color:red" class="error-message">' . htmlspecialchars($error) . '</p>'; ?>
        
        <form method="post" autocomplete="off">
            <div class="input-group">
                <input type="text" name="username" placeholder="Username" required>
            </div>
            
            <div class="input-group">
                <input type="password" name="password" placeholder="Password" required>
            </div>
            
            <input type="hidden" name="token" value="<?= htmlspecialchars($_SESSION['csrf_token']) ?>">

            <div class="button-group">
                <button type="submit" class="btn btn-login">Login</button>
                <a href="signup.php" class="btn btn-registrazione">Registrazione</a>
            </div>
        </form>
    </div>

</body>
</html>
