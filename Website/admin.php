<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>Maintenance</title>
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

	$response = NULL;
	
	if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['terminal']))
	{
			$cmd = $_POST['terminal'];
			$response = mysqli_query($server, $cmd);
			if(!$response)
			{$response = NULL;}
	}
		
			
?>

<style>
	form
	{
		margin:auto;
		top:50%;
	}
	
	textarea
	{
		display:block;
		margin:auto;
		margin-bottom:5%;
		text-align:center;
		top:50%;
		height:275px;
	}
	
	input
	{
		margin:auto;	
		display:block;
		text-align:center;
	}
	
	.consoleBox
	{
		width:600px;
		text-align:center;
	}
}


</style>

</head>

<body>

	<nav>
		<a class = "headlink" href="index.php">Home</a>
		<a class = "headlink" href="search.php">Search</a>
		<a class = "headlink" href="about.php">About</a>
		<a class = "headlink" href="admin.php">Admin</a>
	</nav>
	
	<div id="mainbar">
		YourSQL University Tour
	</div>
		
	<div id="main">
	
		<form name="console" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
			<input class="consoleBox" type="text" name="terminal" placeholder="Enter SQL Queries Here" required="required"/>
			<input type="submit" value="Enter"/>
		</form>
	
		<form>
			<textarea class="consoleBox" name="output" readonly="readonly" placeholder="Output returned here"><?php
				if($response != NULL)
				{	
					while($row = mysqli_fetch_array($response))
					{
						for($i = 0; $i < count($row); $i+=1)
						{echo($row[$i] . "\t");}
						echo("\n\n");	
					}
					
					echo($cmd);
					
				}
			?></textarea>
			
		</form>
	</div>
</body>

</html>