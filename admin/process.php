<?php
include './dbcon.php';
	if (isset($_POST['about'])) {
		// code...
		$about=$mysqli->real_escape_string($_POST['aboutVal']);
		$sql="INSERT INTO add_about (about_content,updatedat)VALUES ('$about',now())";
		if ($mysqli->query($sql)) {
			// code...
			$msg="added successfully";
			header("location:http://localhost/africabiocity/admin/home.php?msg=$msg");
		}
	}

	if (isset($_POST['product'])) {
		// code...
		$product=$mysqli->real_escape_string($_POST['productval']);
		$description=$mysqli->real_escape_string($_POST['description']);

		$sql="INSERT INTO add_product (productType,pdescription,updatedat)VALUES ('$product','$description',now())";
		if ($mysqli->query($sql)) {
			// code...
			$msg="added successfully";
			header("location:http://localhost/africabiocity/admin/product.php?msg=$msg");
		}
	}

	if (isset($_POST['service'])) {
		// code...
		$service=$mysqli->real_escape_string($_POST['serviceVal']);
		$description=$mysqli->real_escape_string($_POST['description']);

		$sql="INSERT INTO add_service (serviceType,sdescription,updatedat)VALUES ('$service','$description',now())";
		if ($mysqli->query($sql)) {
			// code...
			$msg="added successfully";
			header("location:http://localhost/africabiocity/admin/services.php?msg=$msg");
		}
	}

	if (isset($_POST['Catalogue'])) {
		// code...
		$catVal=$mysqli->real_escape_string($_POST['catVal']);
		$description=$mysqli->real_escape_string($_POST['description']);

		if ($_FILES["catImg"]["name"]) {
        # code...
        $target_dir="images/";
        $catImg=basename($_FILES["catImg"]["name"]);
        $catImg2 = $target_dir . basename($_FILES["catImg"]["name"]);
        move_uploaded_file($_FILES["catImg"]["tmp_name"], $catImg2);
    }

		$sql="INSERT INTO add_catalogue (catalogueType,image,catdescription,updatedat)VALUES ('$catVal','$catImg','$description',now())";
		if ($mysqli->query($sql)) {
			// code...
			$msg="added successfully";
			header("location:http://localhost/africabiocity/admin/catalogue.php?msg=$msg");
		}
	}

	if (isset($_POST['media'])) {
		$description=$mysqli->real_escape_string($_POST['medDescription']);

		if ($_FILES["medImg"]["name"]) {
        # code...
        $target_dir="media/";
        $medImg=basename($_FILES["medImg"]["name"]);
        $medImg2 = $target_dir . basename($_FILES["medImg"]["name"]);
        move_uploaded_file($_FILES["medImg"]["tmp_name"], $medImg2);
    }

		$sql="INSERT INTO add_media (image,mediadescription,updatedat)VALUES ('$medImg','$description',now())";
		if ($mysqli->query($sql)) {
			// code...
			$msg="added successfully";
			header("location:http://localhost/africabiocity/admin/media.php?msg=$msg");
		}
	}

	if (isset($_POST['contact'])) {
		$location=$mysqli->real_escape_string($_POST['location']);
		$number=$mysqli->real_escape_string($_POST['number']);

		$sql="INSERT INTO add_contact (location,boxNumber,updatedat)VALUES ('$location','$number',now())";
		if ($mysqli->query($sql)) {
			// code...
			$msg="added successfully";
			header("location:http://localhost/africabiocity/admin/contact.php?msg=$msg");
		}
	}
	
?>