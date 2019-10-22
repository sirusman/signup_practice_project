<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
  <?php
       include_once 'database.php';
       include_once 'fun.php';

   if($_SERVER["REQUEST_METHOD"] == "POST"){

      $user_name = $_POST["email"];
      $password = $_POST["password"];

     $sql ="SELECT *FROM sign_up ";
     $sql .="WHERE email='" . db_escape($connection, $user_name) . "'";
     $sql .="AND password='" . db_escape($connection, $password) . "'";
     $result =mysqli_query($connection, $sql);
     $value=mysqli_fetch_assoc($result);
     //var_dump($value);

     if($value == null)
     {
       echo "Username and Password are wrong!";
     }
     else
     {
       $_SESSION["Userinfo"] = $value;
       header("Location: welcome.php");
     }
  }
     ?>

    <h1 align="center">Sign in</h1>
    <div align="center">
<form action="sign_in.php" method="post">
  Username: <input type="email" name="email" value="">
  <br><br>
  Password: <input type="password" name="password" value="">
   <br><br><input type="submit">
</div>
</form>
  </body>
</html>
