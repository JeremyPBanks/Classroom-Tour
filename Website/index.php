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
	
	$_SESSION['uni'] = NULL;
		
	function getUni()
	{
		$query = "SELECT name FROM University;";
		$result = mysqli_query($server, $query);
		if(!$result)
		{die("DB Query Failed: " . mysqli_connect_error());}

		while($row = mysqli_fetch_array($result))
		{
				echo($row);
		}
	
	}
	
	
?>



</head>

<body onload="fancy()">
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
	</nav>
			
	<div id="main">
	
		<h1 class="title">YourSQL University Tour</h1>
	
		<form name="init" method="post" action="select.php">
			<datalist id="uni_search">
				<?php
					$query = "SELECT DISTINCT name FROM University;";
					$result = mysqli_query($server, $query);
					
					if(!$result)
					{die("DB Query Failed");}

					while($row = mysqli_fetch_array($result))
					{
						echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");
					}
				?>
				
			</datalist>
		
			<input type="search" id ="uniSearch" placeholder="Enter University" required="required" autocomplete="on" name="university" list="uni_search"/>
			
		</form>
		
		<h3 class="tagline">Enter a University to get Started</h3>
		<small style="margin:1px; font-family:'Times New Roman', Times, serif;">Or click 
		<a href="select.php">here</a> to search all universities</small>
		
	
	
	<div id="shill">
		<div style="margin:inherit; padding:inherit; width:100%; background:inherit;">
			<h3>Campus Searching, Simplified</h3>
			<h4>Making finding your way around much more convenient.</h4>
			<p style="font-size:18px;">
				Use YourSQL Tour to find the perfect study spot, the best gym, the nicest apartment,<br/>
				the coolest place to hang out, or any other college establishment to enhance your academic lifestyle.<br/>
				YourSQL Tour, because the college lifestyle is already difficult enough.
			</p>
			<a class="shillLink" href="about.php">Learn More</a>
		</div>
	</div>
	</div>
	
</body>

</html>
