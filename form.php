<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>

    <h1 align = "center">Create Account</h1>
    <div align = "center" >
    <form action="process.php" method="post">
      First_Name:<br> <input type="text" name="firstname" value="" />
      <br><br>
      Last_Name:<br> <input type="text" name="lastname" value="" />
      <br><br>
      E-mail:<br> <input type="email" name="email" value="" />
      <br><br>
      Password:<br> <input type="password" name="password" value="" />
      <br><br>
      Gender: <input type="radio" name="gender" value="female" />Female
      <input type="radio" name="gender" value="male" />Male
      <input type="radio" name="gender" value="other" />Other
      <br><br>
      <input type="submit" name="register" value="Submit" />
    </form>
  </div>
  </body>
</html>
