<?php
	session_start();
?>
<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>YourSQL Tour</title>
<link rel="stylesheet" href="../tour_style.css"/>

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
<style>
	table, th, td
	{
		margin:auto;
		text-align:center;
		border:solid 2.5px black;
		padding:2.5px;
		font-size:1.15em;
		max-width:100%;
		font-weight:500;
		font-family:"Times New Roman", Times, serif;
	}
	
	th
	{
		font-weight:bold;	
	}
	
	@media screen and (max-width: 1920px)
	{
		table, th, td
		{
			font-size:.91em;
		}
	}
	
	.infolink
	{
		text-decoration:none;
		color:#eee;
		font-weight:bold;
	}

	.infolink:hover
	{
		text-decoration:underline;
		cursor:pointer;
	}

	
</style>


</head>

<body>
	<?php
		if(isset($_SESSION['found']) && isset($_SESSION['found']) && $_SESSION['user'] != NULL)
		{
			$name = $_SESSION['user'];
			echo("<a class = 'signstat' href = '../admin.php'>Signed In: $name</a>");
		}
			
		else
		{
			echo("<a class = 'signstat' href = ../'login.php'>Sign In</a>");
		}
	?>

	<nav>
		<a class = "headlink" href="../index.php">Home</a>
		<a class = "headlink" href="../select.php">Search</a>
		<a class = "headlink" href="../about.php">About</a>
		<a class = "headlink" href="../login.php">Admin</a>
	</nav>

	<div id="main">
	
	<div style="background:rgba(0,0,0,.6);">
	<?php
		$clause = base64_decode($_GET['args']);
		//echo($clause . "<br/>");
		$field = $_GET['field'];
		$tgt = NULL;
		$attr = NULL;
		$headers = NULL;
		$pIndex = -1;
		switch($field)
		{
			case "class":
				$tgt = "Class_Type_Building";
				$attr = "roomID, floor_num, type, capacity, desk_type, board_type";
				$headers = "Room Number, Floor Number, Room Type, Capacity, Desk Type, Board Type, Picture";
				$pIndex = 2;
				break;
		
			case "rec":
				$tgt = "Recreation_Type_Building";
				$attr = "roomID, floor_num, type, kind, room_use";
				$headers = "Room Number, Floor Number, Recreation Type, Facility, Room Use, Picture";
				$pIndex = 3;
				break;
				
			case "res":
				$tgt = "Residential_Type_Building";
				$attr = "roomID, floor_num, type, AC_Heating, Has_Lounge, Has_Lobby, is_CoEd, floor_type, Has_Kitchen, num_bathrooms, Has_Communal_Bathroom, vacancy_count";
				$headers = "Room Number, Floor Number, Residential Type, Heating/AC, Lounge, Lobby, Co-Ed, Flooring, Kitchen, Bathrooms, Communal Bathroom, Vacancy, Picture";
				$pIndex = 2;
				break;
				
			case "serv":
				$tgt = "Service_Type_Building";
				$attr = "roomID, floor_num, type, kind, room_use, product_focus";
				$headers = "Room Number, Floor Number, Service Type, Category, Room Use, Product Focus, Picture";
				$pIndex = 3;
				break;
				
			default:
				die("Field Arg Error");
				break;
		}
		
		$q = "SELECT $attr FROM (SELECT $attr FROM University JOIN Building ON University.code = Building.code JOIN $tgt ON $tgt.code = Building.code AND $tgt.campus_name = Building.campus_name AND $tgt.ID = Building.ID $clause) AS t ORDER BY roomID";
		
		//echo($q);
		
		$result = mysqli_query($server, $q);
		
		if(!$result)
		{die("Query failed: <br/> $q");}
	
		$q = "SELECT b_name, Building.ID FROM University JOIN Building ON University.code = Building.code JOIN $tgt ON $tgt.code = Building.code AND $tgt.campus_name = Building.campus_name AND $tgt.ID = Building.ID $clause";
		$receive = mysqli_query($server, $q);
		$build_name = mysqli_fetch_array($receive);

		echo("<h1 class = 'title'>");
		echo($build_name[0]);
		echo("</h1>");
		
		echo("<table>");
		echo("<tr>");
		
		$token = strtok($headers, ",");
		
		while($token !== false)
		{
    		echo("<th>");
    		echo($token);
    		echo("</th>");
    		$token = strtok(",");
		}
		
		echo("</tr>");
				
		while($row = mysqli_fetch_assoc($result))
		{
			echo("<tr>");
			foreach($row as $name=>$val)
			{
				echo("<td>");	
				if(is_null($val))
				{echo("N/A");}
				else
				{echo($val);}
				echo("</td>");
			}
			$keys = array_keys($row);
			$btype = $row[$keys[$pIndex]];
			
			$pLink = "";
			
			switch($btype)
			{
				case "Mail Room":
					$pLink = "../Resources/MailRoom.JPG";
					break;
			
				case "Regular Classroom":
					$pLink = "../Resources/Classroom.jpg";
					break;
					
				case "Lecture Hall":
					$pLink = "../Resources/LectureHall.jpeg";
					break;
					
				case "Computer Lab":
					$pLink = "../Resources/ComputerLab.jpeg";
					break;
					
				case "Office":
					$pLink = "../Resources/Office.jpg";
					break;
						
				case "Student Lounge":
					$pLink = "../Resources/StudentLounge.jpg";
					break;
					
				case "Faculty Lounge":
					$pLink = "../Resources/FacultyLounge.jpg";
					break;
					
				case "Dorm":
					$pLink = "../Resources/Dorm.jpg";
					break;
					
				case "Apartment":
					$pLink = "../Resources/Apartment.jpg";
					break;
					
				case "Dining Hall":
					$pLink = "../Resources/DiningHall.jpg";
					break;
					
				case "Student Center":
					$pLink = "../Resources/StudentCenter.jpg";
					break;
					
				case "Admin Office":
					$pLink = "../Resources/AdminOffice.JPG";
					break;
					
				case "IT":
					$pLink = "../Resources/IT.JPG";
					break;
					
				case "Library":
					$pLink = "../Resources/Library.jpg";
					break;
					
				case "Coffee Shop":
					$pLink = "../Resources/CoffeeShop.JPG";
					break;
					
				case "Post Office":
					$pLink = "../Resources/PostOffice.jpg";
					break;
					
				case "Restaurant":
					$pLink = "../Resources/Restaurant.jpg";
					break;
					
				case "Market":
					$pLink = "../Resources/Market.jpg";
					break;
					
				case "Gym":
					$pLink = "../Resources/Gym.jpg";
					break;
					
				case "Museum":
					$pLink = "../Resources/Museum.jpg";
					break;
					
				case "Movie Theater":
					$pLink = "../Resources/MovieTheater.jpg";
					break;
					
				default:
					$pLink = "../favicon.ico";
					break;
			}

			
			echo("<td>");
			echo("<a class = 'infolink' href = '$pLink' target = '_blank'>View Img</a>");
			echo("</td>");
			
			echo("</tr>");
		}
		echo("</table>");
	?>
	</div>
	</div>
</body>

</html>
