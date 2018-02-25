<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>YourSQL Tour</title>
<link rel="stylesheet" href="tour_style.css"/>
<script src ="tour_script.js">
</script>

<?php
	define("HOST", "cs336-db.cttukqaedhbw.us-east-2.rds.amazonaws.com");
	define("USER", "laf224");
	define("PASS", "\$college795");

	$server = mysqli_connect(HOST, USER, PASS);

	if(!$server)
	{die("Wtf happened: " . mysqli_connect_error());}
	
	$query = "USE SchoolTour";
	$result = mysqli_query($server, $query);
	if(!$result)
	{die("Database Connection Failed: " . mysqli_connect_error());}	
	
?>



</head>

<body onload="fancy()">
	<nav>
		<a class = "headlink" href="index.php">Home</a>
		<a class = "headlink" href="search.php">Search</a>
		<a class = "headlink" href="about.php">About</a>
		<a class = "headlink" href="admin.php">Admin</a>
	</nav>
			
	<div id="main">
	
		<h1 class="title">YourSQL University Tour</h1>

		<h3>Insert sellout information here</h3>
	
	</div>
	
	<footer>
	
	
	</footer>
	
</body>

</html>
