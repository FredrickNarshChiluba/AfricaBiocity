<?php 
require_once('./dbcon.php');
session_start();
//login auth
if (isset($_POST['submit']) && $_POST['submit']=='Login')
{

		$email = $mysqli->real_escape_string($_POST['username']);
		$md5pass = md5($mysqli->real_escape_string($_POST['passwrd']));
		// echo $email;
		// echo $md5pass;

		$sqlUser = "SELECT * FROM adminlogin where username='$email' and passwrd='$md5pass'";
		$queryUser = $mysqli->query($sqlUser);
        $totalUser = $queryUser->num_rows;
        $r = $queryUser->fetch_array();
	
		$userID=$r['id'];
		$userName=$r['username'];
//////////////////////////////////////////////////////////////////////////////////////////////////////////
		if($totalUser==1){ 
		$_SESSION['user_id']=$userID;
		$_SESSION['username']=$userName;
		echo("<script>location.href = 'http://localhost/africabiocity/admin/home.php';</script>");	
			}else{
			
			header("location:http://localhost/africabiocity/adminlogin.php");
		
		
			}
}

?>