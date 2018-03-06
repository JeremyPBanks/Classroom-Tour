<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>Create Account</title>
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
	
	if(isset($_POST['user']) && isset($_POST['pw']) && isset($_POST['email']))
	{
		$u = $_POST['user'];
		$p = $_POST['pw'];
		$e = $_POST['email'];
		
		$query = "SELECT * FROM Admin WHERE user = '$u' OR email = '$e'";
		$result = mysqli_query($server, $query);
		
		if(mysqli_num_rows($result) == 0)
		{
			$query = "INSERT INTO Admin VALUES ('$u', '$p', '$e', 0)";
			$result = mysqli_query($server, $query);
			
			if(!$result)
			{echo("Something went wrong. We're working on it...\n");}
			else
			{
				header("Location: verify.php?status=send&user=$u&pw=$p&email=$e");
			}
		
		}
		
		else if(!$result)
		{
			echo("Query failed: $query\n");
		}
		
		else
		{
			$row = mysqli_fetch_array($result);
		}
	}

?>

</head>

<body>
	<nav>
		<a class = "headlink" href="index.php">Home</a>
		<a class = "headlink" href="search.php">Search</a>
		<a class = "headlink" href="about.php">About</a>
		<a class = "headlink" href="login.php">Admin</a>
	</nav>
	
	<div id="main">
			
		<div id="login">
			<p style="text-align:center; font-size:22px;">Create Your Account</p>
			<form name="login" method="post" action= "<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
				<input class="attrSearch" style="width:100%;" required="required" type="text" name="email" placeholder="Email"/>
				<input class="attrSearch" style="width:100%;" required="required" type="text" name="user" placeholder="Username"/>
				<input class="attrSearch" style="width:100%;" required="required" type="password" name="pw" placeholder="Password"/>
				<input type="submit" value="Submit"/>
			</form>
			
			<?php
				if(isset($_POST['user']) && isset($_POST['pw']) && isset($_POST['email']))
				{
					$uF = $row[0];
					$eF = $row[2];
					
					if($uF == $_POST['user'])
					{
						echo("<p style = 'text-align:center; font-size:22px;'>Username '$uF' already in use.</p>");
					}
					
					if($eF == $_POST['email'])
					{
						echo("<p style = 'text-align:center; font-size:22px;'>Email '$eF' already in use.</p>");
					}
				}
			?>
		
		</div>
	</div>
</body>

</html>
