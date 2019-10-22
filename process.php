<?php
    include_once 'database.php';
    include_once 'fun.php';

   if($_SERVER["REQUEST_METHOD"] == "POST"){

     $firstname =$_POST["firstname"];
     $lastname =$_POST["lastname"];
     $email =$_POST["email"];
     $password =$_POST["password"];
     $gender =$_POST["gender"];

     $sql ="INSERT INTO sign_up ";
     $sql .="(firstname, lastname, email, password, gender)";
     $sql .= "VALUES (";
     $sql .="'" . db_escape($connection, $firstname) . "',";
     $sql .="'" . db_escape($connection, $lastname) . "',";
     $sql .="'" . db_escape($connection, $email) . "',";
     $sql .="'" . db_escape($connection, $password) . "',";
     $sql .="'" . db_escape($connection, $gender) . "'";
     $sql .=")";
     $result =mysqli_query($connection, $sql);

      echo "<p><h1 align=center>Account Created Successfully.</h1></p>";

   }
?>
     <div align="center">
     <a href="sign_in.php"><h2>Sign in</h2></a>
     </div>
