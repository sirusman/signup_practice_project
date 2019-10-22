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

     if($_SERVER["REQUEST_METHOD"] == "POST")
     {

        $user_name = $_POST["username"];
        $password = $_POST["password"];

       $sql ="DELETE FROM sign_up ";
       $sql .="WHERE email='" . db_escape($connection, $user_name) . "'";
       $sql .="AND password='" . db_escape($connection, $password) . "'";
       $result =mysqli_query($connection, $sql);
       header("Location: delsuccess.php");
     }
        ?>

    <div align="center">
    <form action="delete.php" method="post">
      <p>You want to delete your account?</p>
      <br>
      Username: <input type="email" name="email" value="">
      <br><br>
      Password: <input type="password" name="password" value="">
       <br><br><input type="submit" value="Delete">
    </div>
    </form>

  </body>
</html>
