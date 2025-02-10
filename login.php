<?php
session_start();
include 'database.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
   
    $username = $_POST['username'];  
    $password = $_POST['password']; 

    $stmt = $conn->prepare("SELECT password FROM signup WHERE username = ?");
    $stmt->bind_param("s", $username);  
    $stmt->execute();
    $result = $stmt->get_result();

 
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        
    
        if (password_verify($password, $row['password'])) {
            
            $_SESSION['user'] = "yes"; 
            header("Location: index.php");  
            exit();  
        } else {
            echo "<script>alert('incorrect password');</script>";
        }
    } else {
        echo "<script>alert('user not found');</script>";;  
    }

    $stmt->close();
    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

     <div class="main_container">
    <h1>Login Form</h1>

 

    <form  method="POST">
        <label for="username" class="userN">Username:</label><br>
        <input type="text" name="username" class="input" id="username" required><br>
        <label for="password" class="passW" required>Password:</label><br>
        <input type="password" name="password" class="input" id="username" >
        <br>
        <br>

        
        <input type="submit" value="submit" class="btnlogin">


        <p class="noaccount">Dont have an account? <a href="registration.php">Signup</a></p>

        
    </form>

    </div>   
</body>
</html>

