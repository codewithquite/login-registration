<?php
include 'database.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $firstname = $_POST['fname'];
    $lastname = $_POST['lname'];
    $contactnum = $_POST['Connumber'];
    $username = $_POST['uname'];
    $email = $_POST['email'];
    $password = password_hash($_POST['pword'], PASSWORD_BCRYPT);

    $sql = "INSERT INTO signup (firstname, lastname, contactnum, username, email, password) 
        VALUES ('$firstname', '$lastname', '$contactnum', '$username', '$email', '$password')";

        if ($conn->query($sql) === TRUE) {
            echo "Signup successful!";
            header("Location: login.php");
        exit();
        
        } else {
            echo "Error: " . $conn->error;
        }
        
        
        $conn->close();
}
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=\, initial-scale=1.0">
    <title>registration form</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="maincontainer1">
        <h1>SignUp</h1>

        <div class="signupform">
        <form method="POST">
            <label for="fname">Firstname:</label> <br>
            <input type="text" name="fname" id="fname" required> <br>
            <label for="lname">Lastname:</label> <br>
            <input type="text" name="lname" id="lname" required> <br>   
            <label for="Connumber">Contact Number: </label> <br>
            <input type="text" name="Connumber" id="number" required> <br>
            <label for="uname">Username:</label> <br>
            <input type="text" name="uname" id="uname" required> <br>
            <label for="email">Email:</label> <br>
            <input type="text" name="email" id="email" required> <br>
            <label for="pword">Password:</label> <br>
            <input type="password" name="pword" id="pword" required> <br>

            <br>
            <input type="submit" value="submit" class="btnregform">

            <p class="account">Have an account? <a href="login.php">Login Here</a></p>

        
            
        </form>
    </div>
</div>
</body>
</html>