<?php
	ob_start();
	session_start();
?>

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
	
	$query = "SELECT * FROM Admin";
	$result = mysqli_query($server, $query);
	
	if(!isset($_SESSION['found']) || !$_SESSION['found'])
	{
		if(!isset($_SESSION['user']) || !isset($_SESSION['pw']))
		{
			$_SESSION['user'] = $_POST['user'];
			$_SESSION['pw'] = $_POST['pw'];
		}
	
		while($creds = mysqli_fetch_array($result))
		{
			if($_SESSION['user'] == $creds[0] && $_SESSION['pw'] = $creds[1] && $creds[3] == 1)
			{
				$_SESSION['found'] = true;
				break;
			}
		}
	
		if(!$_SESSION['found'])
		{
			$_SESSION['user'] = NULL;
			$_SESSION['pw'] = NULL;
			header("Location: login.php");
		}
	}

	$response = NULL;
	
	if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['terminal']))
	{
			$cmd = $_POST['terminal'];
			$response = mysqli_query($server, $cmd);
			if(!$response)
			{$response = NULL;}
	}
	
	if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['lo']))
	{
		$_SESSION['user'] = NULL;
		$_SESSION['pw'] = NULL;
		$_SESSION['found'] = false;
		header("Location: login.php");
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
		<!--<a href="index.php"><img id="logo" src="Resources/yoursql_logo.png" alt="YourSQL"/></a>-->
		<a class = "headlink" href="index.php">Home</a>
		<a class = "headlink" href="select.php">Search</a>
		<a class = "headlink" href="about.php">About</a>
		<a class = "headlink" href="login.php">Admin</a>
		
	</nav>
		
	<div id="main">
		<div id="mainbar">
			YourSQL University Tour
		</div>
	
		<form name="console" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
			<input class="consoleBox" type="text" name="terminal" placeholder="Enter SQL Queries Here" required="required"/>
			<input class="shillLink"  style="width:10%;" type="submit" value="Enter"/>
		</form>
	
		<form style="margin-bottom:0px;">
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
		
		<div style="background:rgba(0,0,0,.6); width:100%;">
		<h4 class="title">Verified Users</h4>
		<?php
			$query = "SELECT user, email FROM Admin WHERE verified = 1";
			$result = mysqli_query($server, $query);
			if(!$result)
			{die("Query Error: " . $query);}
						
			while($row = mysqli_fetch_assoc($result))
			{
				foreach($row as $name=>$val)
				{
					echo($val . "\t\t\t\t");
				}
				echo("<br/>");
			}
		?>
		</div>
		<div style="width:100%; height:auto; margin-top:0px;">
			<form name="logout" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
				<input class = "shillLink" style="width:20%; height:auto; font-size:1.25em; margin-top:5px;" name="lo" type="submit" value="Log Out"/>
			</form>
		</div>
	</div>
</body>

</html>
