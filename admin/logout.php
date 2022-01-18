<?php
session_start();

unset($_SESSION['username']);

/* Delete the cookies*******************/
setcookie("user_id", '', time()-60*60*24*60, "/");
setcookie("username", '', time()-60*60*24*60, "/");
/******************* After Logout set this to any redirect page you want*************/

echo '<meta http-equiv="refresh" content="0;url=http://localhost/africabiocity/index.php"> ';
?> 