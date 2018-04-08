<?php
	session_start();
?>
<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>YourSQL Tour</title>
<link rel="stylesheet" href="tour_style.css"/>

<style>
	.subtitleDiv
	{
		margin:auto;
		margin-top:1%;
		width:100%;
		padding-top:2.5px;
		padding-bottom:2.5px;
		background:rgba(15, 15, 15, .6);
	}

</style>
<script type="text/javascript" src="tour_script.js"></script>
<?php
	define("HOST", "cs336-db.cttukqaedhbw.us-east-2.rds.amazonaws.com");
	define("USER", "laf224");
	define("PASS", "\$college795");
	$server = mysqli_connect(HOST, USER, PASS);
	$_SESSION['s'] = $server;

	if(!$server)
	{die("Wtf happened: " . mysqli_connect_error());}
	
	$query = "USE SchoolTour";
	$result = mysqli_query($server, $query);
	if(!$result)
	{die("Database Connection Failed: " . mysqli_connect_error());}
	
	echo("<script type = \"text/javascript\" src = \"tour_script.js\"></script>");
	
/*---------------------------------------------------------------------*/
	
	function buildingTraits($opt)
	{
		$uni = NULL;
    	$uniCheck = isset($_SESSION['uni']);
		if($uniCheck)
		{$uni = $_SESSION['uni'];}    
		$table = NULL;
		//Building List
		
		switch($opt)
		{
			case "class":
				$table = "Class_Type_Building";
				echo("<input type = 'hidden' name = 'type-class' value = 'set'/>");
				break;
				
			case "rec":
				$table = "Recreation_Type_Building";
				echo("<input type = 'hidden' name = 'type-rec' value = 'set'/>");
				break;
				
			case "res":
				$table = "Residential_Type_Building";
				echo("<input type = 'hidden' name = 'type-res' value = 'set'/>");
				break;
				
			case "serv":
				$table = "Service_Type_Building";
				echo("<input type = 'hidden' name = 'type-serv' value = 'set'/>");
				break;
		}
		
		$query = "SELECT DISTINCT ID FROM $table";

		if($uniCheck)
		{$query = $query . " WHERE $table.code = $uni";}							
				
		$result = mysqli_query($_SESSION['s'], $query);
							
		if(!$result)
		{
			echo($query);
			echo($result);
			die();
		}
		$listID = $opt . "building_list";
		echo("<datalist id = '$listID'>");
			while($row = mysqli_fetch_array($result))
			{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
		echo("</datalist>");
							
							
		//Campus List
		$query = "SELECT DISTINCT campus_name FROM $table";

		if($uniCheck)
		{$query = $query . " WHERE $table.code = $uni";}							
				
		$result = mysqli_query($_SESSION['s'], $query);
							
		if(!$result)
		{
			echo($query);
			echo($result);
			die();
		}
		$listID = $opt . "campus_list";			
		echo("<datalist id = \"$listID\">");
			while($row = mysqli_fetch_array($result))
			{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
		echo("</datalist>");
												
							
		//Building Name List
		$query = "SELECT DISTINCT b_name FROM $table NATURAL JOIN Building";

		if($uniCheck)
		{$query = $query . " WHERE $table.code = $uni";}							
				
		$result = mysqli_query($_SESSION['s'], $query);
							
		if(!$result)
		{
			echo($query);
			echo($result);
			die();
		}
		$listID = $opt . "bName_list";	
		echo("<datalist id = \"$listID\">");
			while($row = mysqli_fetch_array($result))
			{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
		echo("</datalist>");
							
		/*					
		//Date List
		$query = "SELECT DISTINCT date_built FROM $table NATURAL JOIN Building";

		if($uniCheck)
		{$query = $query . " WHERE $table.code = $uni";}							
				
		$result = mysqli_query($_SESSION['s'], $query);
							
		if(!$result)
		{
			echo($query);
			echo($result);
			die();
		}
		$listID = $opt . "date_list";	
		echo("<datalist id = \"$listID\">");
			while($row = mysqli_fetch_array($result))
			{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
		echo("</datalist>");
		*/
							
											
		//Handicap List
		$query = "SELECT DISTINCT Handicap_Access FROM Building";
	
		if($uniCheck)
		{$query = $query . " WHERE Building.code = $uni";}							
				
		$result = mysqli_query($_SESSION['s'], $query);
							
		if(!$result)
		{
			echo($query);
			echo($result);
			die();
		}
		$listID = $opt . "handi_list";			
		echo("<datalist id = \"$listID\">");
			while($row = mysqli_fetch_array($result))
			{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
		echo("</datalist>");

		$listID = $opt . "building_list";
		$iName = $opt . "-bid";
		echo("<input type = 'search' name = '$iName' class = 'attrSearch' placeholder = 'Building ID' list = '$listID'/>");
		
		$listID = $opt . "bName_list";
		$iName = $opt . "-bName";
		echo("<input type = 'search' name = '$iName' class = 'attrSearch' placeholder = 'Building Name' list = '$listID'/>");
		
		$listID = $opt . "campus_list";
		$iName = $opt . "-campus";
		echo("<input type = 'search' name = '$iName' class = 'attrSearch' placeholder = 'Campus Name' list = '$listID'/>");
		
		$iName = $opt . "-bath";
		echo("<input type = 'number' name = '$iName' class = 'attrSearch' placeholder = 'Number of Bathrooms'/>");
		
		$iName = $opt . "-vend";
		echo("<input type = 'number' name = '$iName' class = 'attrSearch' placeholder = 'Vending Machine Count'/>");
		
		$iName = $opt . "-year";
		echo("<input type = 'number' min = '1798' max = '2018' name = '$iName' class = 'attrSearch' placeholder = 'Date Built'/>");
		
		$iName = $opt . "-floor";
		echo("<input type = 'number' min = '1' name = '$iName' class = 'attrSearch' placeholder = '# of Floors'/>");
		
		$iName = $opt . "-open";
		echo("<input type = 'number' min = '00' max = '24' pattern='[0-9]{2}' name = '$iName' class = 'attrSearch' placeholder = '(24hr Clock)Opening Hour'/>");
		
		$iName = $opt . "-close";
		echo("<input type = 'number' min = '00' max = '24' pattern='[0-9]{2}' name = '$iName' class = 'attrSearch' placeholder = '(24hr Clock)Closing Hour'/>");
		
		$listID = $opt . "handi_list";
		$iName = $opt . "-handi";
		echo("<input type = 'search' name = '$iName' class = 'attrSearch' placeholder = 'Handicap Access' list = '$listID'/>");
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
		
		<h3 class="title">Fill out fields for corresponding searches.</h3>
		<h4 class="tagline">Leaving a field blank denotes an "any" query.</h4>

		<form name="recSearch" method="get" action="result.php">

			<?php
			
				$uniCheck = isset($_SESSION['uni']);
				if($uniCheck)
				{$uni = $_SESSION['uni'];}				
				
				$args = strtok($_GET['args'], '_');

								
				while($args !== false)
				{
					switch($args)
					{
						case "class":
							echo("<div class = 'subtitleDiv'>");
							echo("<h4 class='tagline'>Classroom Buildings</h4>");
							echo("</div>");
							buildingTraits("class");
							
							$query = "SELECT DISTINCT type FROM Class_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Class_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "class". "type";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'class-type' class = 'attrSearch' placeholder = 'Room Type' list = \"$listID\"/>");

						
							$query = "SELECT DISTINCT desk_type FROM Class_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Class_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "class". "desk";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'class-desk' class = 'attrSearch' placeholder = 'Desk Type' list = \"$listID\"/>");
							
							

							$query = "SELECT DISTINCT board_type FROM Class_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Class_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "class". "board";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'class-board' class = 'attrSearch' placeholder = 'Board Type' list = \"$listID\"/>");
						
							echo("<input type = 'number' min = '0' max = '500' step = '10' name = 'class-capac' class = 'attrSearch' placeholder = 'Capacity'/>");	
						
						
						
						
						
							break;
							
						case "res":
							echo("<div class = 'subtitleDiv'>");
							echo("<h4 class='tagline'>Residential Buildings</h4>");
							echo("</div>");
							buildingTraits("res");
							
							

							$query = "SELECT DISTINCT AC_Heating FROM Residential_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Residential_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "res". "ac_list";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'res-ac' class = 'attrSearch' placeholder = 'AC/Heating' list = \"$listID\"/>");
							
							
							$query = "SELECT DISTINCT Has_Lounge FROM Residential_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Residential_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "res". "lounge";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'res-lounge' class = 'attrSearch' placeholder = 'Has Lounge' list = \"$listID\"/>");
							
							
							
							$query = "SELECT DISTINCT Has_Lobby FROM Residential_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Residential_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "res". "lobby";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'res-lobby' class = 'attrSearch' placeholder = 'Has Lounge' list = \"$listID\"/>");


							
							
							$query = "SELECT DISTINCT is_CoEd FROM Residential_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Residential_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "res". "coed";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'res-coed' class = 'attrSearch' placeholder = 'Co-Ed Living' list = \"$listID\"/>");
							
							
							
							$query = "SELECT DISTINCT floor_type FROM Residential_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Residential_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "res". "floor";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'res-flooring' class = 'attrSearch' placeholder = 'Floor Type' list = \"$listID\"/>");
							
							
							
							$query = "SELECT DISTINCT Has_Kitchen FROM Residential_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Residential_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "res". "kitchen";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'res-kitchen' class = 'attrSearch' placeholder = 'Has Kitchen' list = \"$listID\"/>");
							
							
							
							echo("<input type = 'number' name = 'res-bathNum' class = 'attrSearch' placeholder = 'Bathroom Count'/>");
							
							
							
							$query = "SELECT DISTINCT Has_Communal_Bathroom FROM Residential_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Residential_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "res". "cBath";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'res-bath' class = 'attrSearch' placeholder = 'Communal Bathroom' list = \"$listID\"/>");



							echo("<input type = 'number' name = 'res-vac' class = 'attrSearch' placeholder = 'Vacancies'/>");

						
	
							$query = "SELECT DISTINCT type FROM Residential_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Residential_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "res". "type";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'res-type' class = 'attrSearch' placeholder = 'Room Type' list = \"$listID\"/>");							

							echo("<div id = 'resOpt'></div>");
						
							break;
							
						case "serv":
							echo("<div class = 'subtitleDiv'>");
							echo("<h4 class='tagline'>Service Buildings</h4>");
							echo("</div>");
							buildingTraits("serv");
							
							$query = "SELECT DISTINCT type FROM Service_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Service_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "serv". "type";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'serv-type' class = 'attrSearch' placeholder = 'Service Type' list = \"$listID\"/>");
							
							echo("<div id = 'servOpt'></div>");
							
							$query = "SELECT DISTINCT kind FROM Service_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Service_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "serve". "kind";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'serv-kind' class = 'attrSearch' placeholder = 'Category' list = \"$listID\"/>");

							
							$query = "SELECT DISTINCT room_use FROM Service_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Service_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "serve". "use";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'serv-use' class = 'attrSearch' placeholder = 'Room Type' list = \"$listID\"/>");

							
							$query = "SELECT DISTINCT product_focus FROM Service_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Service_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "serve". "prod";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'serv-prod' class = 'attrSearch' placeholder = 'Focus Product' list = \"$listID\"/>");


						
							break;
							
						case "rec":
							echo("<div class = 'subtitleDiv'>");
							echo("<h4 class='tagline'>Recreation Facilities</h4>");
							echo("</div>");
							buildingTraits("rec");
							
							$query = "SELECT DISTINCT type FROM Recreation_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Recreation_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "rec". "type";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'rec-type' class = 'attrSearch' placeholder = 'Recreation Type' list = \"$listID\"/>");				
						
						
							
							$query = "SELECT DISTINCT kind FROM Recreation_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Recreation_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "rec". "kind";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'rec-kind' class = 'attrSearch' placeholder = 'Facility Category' list = \"$listID\"/>");
							
							
							$query = "SELECT DISTINCT room_use FROM Recreation_Type_Building";
							if($uniCheck)
							{$query .= " WHERE Recreation_Type_Building.code = $uni";}							
							$result = mysqli_query($_SESSION['s'], $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die();
							}
							$listID = "rec". "use";	
							echo("<datalist id = \"$listID\">");
							while($row = mysqli_fetch_array($result))
							{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							echo("<input type = 'search' name = 'rec-use' class = 'attrSearch' placeholder = 'Room Type' list = \"$listID\"/>");
						
						
							break;
							
						case "park":
							echo("<div class = 'subtitleDiv'>");
							echo("<h4 class='tagline'>Parking Lots</h4>");
							echo("</div>");
							
							echo("<input type = 'hidden' name = 'type-park' value = 'set'/>");
							
							$query = "SELECT DISTINCT Lot_Name FROM ParkingLot";
							if($uniCheck)
							{$query = $query . " WHERE code = $uni";}							
				
							$result = mysqli_query($server, $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die($result);
							}
							
							echo("<datalist id = 'lot_list'>");
								while($row = mysqli_fetch_array($result))
								{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");

							
							
							//Campus List
							$query = "SELECT DISTINCT cname FROM ParkingLot";
							if($uniCheck)
							{$query = $query . " WHERE code = $uni";}							
				
							$result = mysqli_query($server, $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die($result);
							}
							
							echo("<datalist id = 'campus_list'>");
								while($row = mysqli_fetch_array($result))
								{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							
							
							
							//Pass List
							$query = "SELECT DISTINCT pass_type FROM ParkingLot";
							if($uniCheck)
							{$query = $query . " WHERE ParkingLot.code = $uni";}							
				
							$result = mysqli_query($server, $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die($result);
							}
							
							echo("<datalist id = 'pass_list'>");
								while($row = mysqli_fetch_array($result))
								{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							
							
							$query = "SELECT DISTINCT usable_by FROM ParkingLot";
							if($uniCheck)
							{$query = $query . " WHERE ParkingLot.code = $uni";}							
				
							$result = mysqli_query($server, $query);
							
							if(!$result)
							{
								echo($query);
								echo($result);
								die($result);
							}
							
							echo("<datalist id = 'useby_list'>");
								while($row = mysqli_fetch_array($result))
								{echo("<option class = 'dropdown' value = '" . $row[0] . "'></option>");}
							echo("</datalist>");
							
							
									
							echo("<input type = 'search' name = 'park-lotname' class = 'attrSearch' placeholder = 'Lot Name' list = 'lot_list'/>");
							echo("<input type = 'search' name = 'park-campus' class = 'attrSearch' placeholder = 'Campus Name' list = 'campus_list'/>");
							echo("<input type = 'number' name = 'park-capacity' class = 'attrSearch' placeholder = 'Lot Capacity'/>");
							echo("<input type = 'number' name = 'park-price' step = '.01' class = 'attrSearch' placeholder = 'Pass Price'/>");
							echo("<input type = 'search' name = 'park-passtype' class = 'attrSearch' placeholder = 'Pass Type' list = 'pass_list'/>");
							echo("<input type = 'search' name = 'park-passnum' class = 'attrSearch' placeholder = 'Usable By' list = 'useby_list'/>");
						
							break;
							
						default:
							//do nothing
							break;
				
					}
					$args = strtok('_ ');
				}

			?>	
			<input type="submit" value="Submit" style="display:block; margin:auto; margin-top:1.5%; margin-bottom:3%;"/>
			
		</form>

	
	
	</div>
</body>

</html>
