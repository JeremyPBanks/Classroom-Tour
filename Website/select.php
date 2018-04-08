<?php
	ob_start();
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
	
	//get arguments to send to search page
	if(isset($_POST['university']) && $_POST['university'] != "")
	{
		$u = $_POST['university'];
		$query = "SELECT code FROM University WHERE name = \"$u\"";
		$result = mysqli_query($server, $query);
		if(!$result)
		{
			echo($query);
			echo($result);
			die();
		}
		$row = mysqli_fetch_array($result);
	
		$_SESSION['uni'] = $row[0];
	}
	
	$fields = 0;
	if(isset($_GET['submitCheck']) && $_GET['submitCheck'] == "sent")
	{
		$args = "Location: search.php?args=";
	
	if(isset($_GET['class']))
	{
		if($_GET['class'] == "y")
		{
			$args = $args . "_class";
			$fields++;
		}
	}	

	if(isset($_GET['res']))
	{
		if($_GET['res'] == "y")
		{
			$args = $args . "_res";
			$fields++;
		}
	}
	
	if(isset($_GET['serv']))
	{	
		if($_GET['serv'] == "y")
		{
			$args = $args . "_serv";
			$fields++;
		}
	}
	
	if(isset($_GET['rec']))
	{
			
		if($_GET['rec'] == "y")
		{
			$args = $args . "_rec";
			$fields++;
		}	
	}
	
	if(isset($_GET['park']))
	{	
		if($_GET['park'] == "y")
		{
			$args = $args . "_park";
			$fields++;
		}
	}
		//validation check
		if($fields > 0)
		{header($args);}
		else
		{header("Location: select.php");}
	}
?>	

<style>
	.choose
	{
		text-align:left;
	}
	
	#cForm
	{
		margin:auto;
		text-align:center;
	}
	
	td
	{
		padding:5px 15px 5px 15px;	
	}


</style>

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
	
		<h1 class="title">What Are You Searching For?</h1>
		<h4 class="tagline">Note: Choosing multiple subjects will cause joining on alike fields</h4>
		<div style="width:100%; padding:.5% 0px .5% 0px; height:auto; background:rgba(15, 15, 15, .6)">
			<form name="options" method="get" action="select.php">
				<table id="cForm">
					<tr>
						<td>
							<input class="choose" name="class" type="checkbox" value="y">
						</td>
						<td>
							Classroom
						</td>
					</tr>	
				
					<tr>
						<td>
							<input class="choose" name="res" type="checkbox" value="y">
						</td>
						<td>
							Residential Building
						</td>
					</tr>			
	
				
					<tr>
						<td>
							<input class="choose" name="serv" type="checkbox" value="y">
						</td>
						<td>
							Services &amp; Conveniences
						</td>
					</tr>
				
					<tr>
						<td>
							<input class="choose" name="rec" type="checkbox" value="y">
						</td>
						<td>
							Recreational Facitilities
						</td>
					</tr>			
					
					<tr>
						<td>
							<input class="choose" name="park" type="checkbox" value="y">
						</td>
						<td>
							Parking Lots
						</td>
					</tr>
									
					<tr><td></td>
						<td>
							<input type="hidden" value="sent" name="submitCheck"/>
							<input style ="margin:auto;" type="submit" value="Submit">
						</td>
					</tr>
				</table>
				
				
			
			</form>
		</div>
	</div>
	
</body>

</html>
