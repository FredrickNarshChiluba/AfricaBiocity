<?php

	function contact(){
		include 'dbcon.php';
		$sql="SELECT * FROM add_contact order by id DESC limit 0,1";
		$queryRes=$mysqli->query($sql);
		return $queryRes->fetch_array();
	}

	function about(){
		include 'dbcon.php';
		$sql="SELECT * FROM add_about order by id DESC limit 0,1";
		$queryRes=$mysqli->query($sql);
		$res=$queryRes->fetch_array();
		return $res['about_content'];
	}

?>