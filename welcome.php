<?php session_start();
    if(!isset($_SESSION["Userinfo"])){
      header("Location: sign_in.php");
    }

    $userinfo = $_SESSION["Userinfo"];
    //print_r($userinfo);
 ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <div align="center">
    <p>Thank You For Login.</p>
    Welcome <?php echo $userinfo["FirstName"]; ?><br>
    Your username is: <?php echo $userinfo["Email"]; ?>
    <br><br>
    <a href="delete.php">Delete Account</a>
    <br>
    <a href="logout.php">Logout</a>
  </div>

  </body>
</html>
