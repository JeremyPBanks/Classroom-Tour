<?php
	session_start();
?>

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
	
/*---------------------------------------------------------------------*/		
	
	if($_SERVER['REQUEST_METHOD'] == 'POST')
	{
		if(isset($_POST['university']))
		{
			$uni_name = $_POST['university'];
			$query = "SELECT university_code FROM University WHERE uName = '$uni_name';";
			$result = mysqli_query($server, $query);
			
			if(!$result)
			{echo("FALSE " . $query);}
			
			else
			{
				$uni_code = mysqli_fetch_array($result);
				$_SESSION['uni'] = $uni_code[0];	
			}

		}
		
		if(isset($_POST['campus']))
		{
			$_SESSION['campus'] = $_POST['campus'];
		}
	}

	
	
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
	
		<form name="campus" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
			<datalist id="campus_search">
				<?php
				
					$query = "SELECT campus_name FROM Campus WHERE university_code = '" . $uni_code[0] . "';";
					$result = mysqli_query($server, $query);
					
					if(!$result)
					{die($query);}

					while($row = mysqli_fetch_array($result))
					{
						echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");
					}
				?>
				
			</datalist>
		
			<input type="search" class="attrSearch" id ="cSearch" placeholder="Find a Campus" required="required" name="campus" list="campus_search"/>
			
		</form>
	
	</div>
	
</body>

</html>
