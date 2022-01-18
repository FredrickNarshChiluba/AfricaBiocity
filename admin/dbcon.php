<?php
error_reporting(1);
$hostm   = "localhost";
$dbm = "africabiocity_db";
$usrm   = "root";
$pwdm   = "";

$mysqli = new mysqli($hostm,$usrm,$pwdm,$dbm);
//Output any connection error
if ($mysqli->connect_error) {
    die('Error : ('. $mysqli->connect_errno .') '. $mysqli->connect_error);
}

?>