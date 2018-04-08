<?php
	error_reporting(E_ERROR);
	session_start();
?>

<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>Admin Login</title>
<style>
	input
	{
		width:80%;
		font-size:24px;
		height:auto;
		display:block;
		margin:auto;
		padding:5px;
	}
	
	#login
	{
		margin:auto;
		padding-top:5%;
		width:50%;
		height:auto;
		color:#fff;
		opacity:.8;
	}


</style>

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
//------------------------------------------------------------------------------
	
	if($_SESSION['found'])
	{
		header("Location: admin.php");
	}
	
	
	if(isset($_SESSION['user']) && isset($_SESSION['pw']))
	{
		$query = "SELECT * FROM Admin";
		$result = mysqli_query($server, $query);
		
		while($creds = mysqli_fetch_array($result))
		{
			if(($creds[0] == $_SESSION['user'] || $creds[2] == $_SESSION['user']) && $creds[1] == $_SESSION['pw'] && creds[3] == 1)
			{
				header("Location: index.php");
			}
		}
	}

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
	</nav>
			
	<div id="main">

		<div id="login">
			<p style="text-align:center; font-size:22px;">You must log into an account for database access.</p>
			<form name="login" method="post" action= "admin.php">
				<input class="attrSearch" style="width:100%;" required="required" type="text" name="user" placeholder="Username"/>
				<input class="attrSearch" style="width:100%;" required="required" type="password" name="pw" placeholder="Password"/>
				<input type="submit" value="Submit"/>
			</form>
			<?php
				if(isset($_SESSION['user']) && isset($_SESSION['pw']))
				{
					//TODO: won't work. Redeclare credits				
					if(($creds[0] == $_SESSION['user'] || $creds[2] == $_SESSION['user']) && $creds[1] == $_SESSION['pw'] && creds[3] == 0)
					{
						echo("<p style = 'text-align:center; font-size:22px;'>Account has not yet been verified. Check email for verification.</p>");
					}
				}
			?>
			<p style="text-align:center; font-size:22px;">Don't have an account? Create one <a href="create.php">here</a></p>
		</div>
	</div>
</body>

</html>
