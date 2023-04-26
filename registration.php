<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Registration</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
    <form class="form" action="register.php" method="POST">
        <h1 class="login-title">Registration</h1>
        <input type="text" class="login-input" name="fullname" placeholder="Fullname">
        <input type="text" class="login-input" name="username" placeholder="Username" />
        <input type="text" class="login-input" name="email" placeholder="Email Adress">
        <input type="password" class="login-input" name="password" placeholder="Password">
        <input type="confirm_password" class="login-input" name="confirm_password" placeholder="Confirm Password">
        <input type="submit" name="submit" value="Register" class="login-button">
        <p class="link">Already have an account? <a href="login.php">Login here</a></p>
    </form>
 </body>
</html>
