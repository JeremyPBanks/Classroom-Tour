<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>Account Verification</title>
<link rel="stylesheet" href="tour_style.css"/>
<style>
	p{
		text-align:center;
		margin:0px;
		padding-top:10%;
		font-size:22px;
	}

</style>

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
		<!--<a href="index.php"><img id="logo" src="Resources/yoursql_logo.png" alt="YourSQL"/></a>-->
		<a class = "headlink" href="index.php">Home</a>
		<a class = "headlink" href="select.php">Search</a>
		<a class = "headlink" href="about.php">About</a>
		<a class = "headlink" href="login.php">Admin</a>
	</nav>

	<div id="main">
	<?php
		if($_GET['status'] == 'send')
		{
			$u = $_GET['user'];
			$p = $_GET['pw'];
			$e = $_GET['email'];
			$link1 = "http://yoursqltour.rf.gd/verify.php?status=receive&user=$u";
			$link2 = "http://yoursqltour.rf.gd/verify.php?status=deny&user=$u";
			echo("<p>A verification link has been sent to the provided email.<br/>Please click it to verify your new account.<br/>Note: May need to check spam folder</p>");
			$msg = "Thank you for registering with YourSQLTour.\nUsername: $u\nPassword: $p\n\nClick here to verify account: $link1";
			$msg2 = "\n\nTo cancel account activiation, click here: $link2";
			$header = "From: YourSQL Tour <admin@yoursqltour.rf.gd>";
			
			if(!mail($e, "Account Verification", $msg . $msg2, $header))
			{
				echo("Failure in sending email...\n");
			}
		}
	
		else if($_GET['status'] == 'receive')
		{
			$u = $_GET['user'];
			$query = "UPDATE Admin SET verified = 1 WHERE user = '$u'";
			$result = mysqli_query($server, $query);
			if(!$result)
			{echo("Update failure");}
			else
			{
				echo("<p>Congratulations, $u! Your account has been verified. Redirecting to login page...</p>");
				header("Refresh:4; url=login.php");
			}
		}
		
		else if($_GET['status'] == 'deny')
		{
			$u = $_GET['user'];
			$query = "DELETE FROM Admin WHERE user = '$u'";
			$result = mysqli_query($server, $query);
			if(!$result)
			{echo("Delete failure");}
			else
			{
				echo("<p>Account creation canceled. Redirecting to login page...</p>");
				$_SESSION['user'] = NULL;
				$_SESSION['pw'] = NULL;
				$_SESSION['found'] = false;		
				header("Refresh:4; url=login.php");
			}

		}
		
		else
		{
			echo("Something went wrong...\n");
		}

	?>
	</div>
</body>

</html>
