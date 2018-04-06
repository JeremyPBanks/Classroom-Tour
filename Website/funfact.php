<?php
	session_start();
?>
<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>YourSQL Tour</title>
<link rel="stylesheet" href="tour_style.css"/>

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
	
/*---------------------------------------------------------------------*/
	


?>

</head>

<body>
	<?php
		if(isset($_SESSION['found']) && isset($_SESSION['found']) && $_SESSION['user'] != NULL)
		{
			$name = $_SESSION['user'];
			echo("<a class = 'signstat' href = 'admin.php'>Signed In: $name</a>");
		}
			
		else
		{
			echo("<a class = 'signstat' href = 'login.php'>Sign In</a>");
		}
	?>

	<nav>
		<a class = "headlink" href="index.php">Home</a>
		<a class = "headlink" href="select.php">Search</a>
		<a class = "headlink" href="about.php">About</a>
		<a class = "headlink" href="login.php">Admin</a>
		<a class = "headlink" href="funfact.php">Fun Facts</a>
	</nav>

	<div id="main">
	
	
	
	</div>
</body>

</html>
