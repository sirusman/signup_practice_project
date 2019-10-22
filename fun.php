<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <?php
      function db_escape($connection, $string){
        return mysqli_real_escape_string($connection, $string);
      }
      ?>

  </body>
</html>
