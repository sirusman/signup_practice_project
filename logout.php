<?php
  session_start();
  if(isset($_SESSION['Userinfo']))
  unset($_SESSION['Userinfo']);

  session_destroy();
  header("Location: sign_in.php");
  ?>
