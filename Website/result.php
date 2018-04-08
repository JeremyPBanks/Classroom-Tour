<?php
	error_reporting(E_ERROR);
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
	
	if($_SERVER['REQUEST_METHOD'] == 'POST')
	{
		if(isset($_POST['university']))
		{
			header("Location: select.php");
		}	
	}
	
	
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
		table, td
		{
			font-size:.91em;
		}
		
		th
		{
			font-size:.95em;
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
	
	<div style="background:rgba(0,0,0,.6);">
	
		<?php
			$uni = NULL;
			if(isset($_SESSION['uni']))
			{$uni = $_SESSION['uni'];}
			
			$attr = "University.name, year_opened, address, population, tuition, Building.campus_name, Building.b_name, date_built, time_open, time_close, num_of_vending_machines, Handicap_Access, num_of_floors";
			$pAttr = "University.name, year_opened, address, population, tuition, ParkingLot.cname, Lot_Name, capacity, pass_price, pass_type, usable_by";
			
			$baseClause = " WHERE University.code";
			$resSubject = NULL; $recSubject = NULL; $classSubject = NULL; $servSubject = NULL; $parkSubject = NULL;
			$resClause = $baseClause; $recClause = $baseClause; $classClause = $baseClause; $servClause = $baseClause; $servClause = $baseClause; $parkClause = $baseClause;
			
			$detArgs = "";
			
			if(isset($uni))
			{
				$resClause .= " AND Building.code = $uni ";
				$recClause .= " AND Building.code = $uni ";
				$classClause .= " AND Building.code = $uni ";
				$servClause .= " AND Building.code = $uni ";
				$parkClause .= " AND ParkingLot.code = \"$uni\" ";
			}			
			
			$pSubject = NULL;	
			foreach($_GET as $name => $val)
			{
				//echo($name . " " . $val . "<br/>");
				$token = strtok($name, "-");
				
				switch($token)
				{
					case "type":
						$token = strtok("-");
						if($val == "set")
						{
							if($token == "res")
							{
								$bSubject = "SELECT DISTINCT $attr FROM University INNER JOIN Building ON University.code = Building.code INNER JOIN";
								$resSubject = $bSubject . " Residential_Type_Building ON Building.code = Residential_Type_Building.code AND Building.campus_name = Residential_Type_Building.campus_name AND Building.ID = Residential_Type_Building.ID INNER JOIN";
								$bSet = true;
							}

							else if($token == "rec")
							{
								$bSubject = "SELECT DISTINCT $attr FROM University INNER JOIN Building ON University.code = Building.code INNER JOIN";
								$recSubject = $bSubject . " Recreation_Type_Building ON Building.code = Recreation_Type_Building.code AND Building.campus_name = Recreation_Type_Building.campus_name AND Building.ID = Recreation_Type_Building.ID INNER JOIN";
								$bSet = true;
							}
							
							else if($token == "class")
							{
								$bSubject = "SELECT DISTINCT $attr FROM University INNER JOIN Building ON University.code = Building.code INNER JOIN";
								$classSubject = $bSubject . " Class_Type_Building ON Building.code = Class_Type_Building.code AND Building.campus_name = Class_Type_Building.campus_name AND Building.ID = Class_Type_Building.ID INNER JOIN";
								$bSet = true;
							}
							
							else if($token == "serv")
							{
								$bSubject = "SELECT DISTINCT $attr FROM University INNER JOIN Building ON University.code = Building.code INNER JOIN";
								$servSubject = $bSubject . " Service_Type_Building ON Building.code = Service_Type_Building.code AND Building.campus_name = Service_Type_Building.campus_name AND Building.ID = Service_Type_Building.ID INNER JOIN";
								$bSet = true;
							}
							
							else if($token == "park")
							{
								$parkSubject = "SELECT DISTINCT $pAttr FROM University INNER JOIN ParkingLot ON University.code = ParkingLot.code";
							}
							
							else //error case
							{die("Type Parse Error");}

						}						
						break;
				
				
					case "class":
						$token = strtok("-");
						
						if($token == "bid" && $val != "")
						{
							$classClause .= " AND Building.ID = $val";
						}
						else if($token == "bName" && $val != "")
						{
							$classClause .= " AND Building.b_name = \"$val\"";
						}	
						else if($token == "campus" && $val != "")
						{
							$classClause .= " AND Building.campus_name = \"$val\"";
						}
						else if($token == "bath" && $val != "")
						{
							$classClause .= " AND Building.num_of_bathrooms >= $val";
						}
						else if($token == "vend" && $val != "")
						{
							$classClause .= " AND Building.num_of_vending_machines >= $val";
						}
						else if($token == "year" && $val != "")
						{
							$classClause .= " AND Building.date_built = $val";
						}
						else if($token == "floor" && $val != "")
						{
							$classClause .= " AND Building.num_of_floors >= $val";
						}
						else if($token == "open" && $val != "")
						{
							$classClause .= " AND Building.time_open <= $val";
						}
						else if($token == "close" && $val != "")
						{
							$classClause .= " AND Building.time_close >= $val";
						}
						else if($token == "handi" && $val != "")
						{
							$classClause .= " AND Building.Handicap_Access = \"$val\"";
						}
						
						
						else if($token == "type" && $val != "")
						{
							$classClause .= " AND Class_Type_Building.type = \"$val\"";
						}
						else if($token == "desk" && $val != "")
						{
							$classClause .= " AND Class_Type_Building.desk_type = \"$val\"";
						}
						else if($token == "board" && $val != "")
						{
							$classClause .= " AND Class_Type_Building.board_type = \"$val\"";
						}
						else if($token == "capac" && $val != "")
						{
							$classClause .= " AND Class_Type_Building.capacity >= $val";
						}
						else
						{/*?????*/}
					
						$detArgs .= ("_" . $token . "-" . $val); 
					
						break;
	
					case "rec":
						$token = strtok("-");
						
						if($token == "bid" && $val != "")
						{
							$recClause .= " AND Building.ID = $val";
						}
						else if($token == "bName" && $val != "")
						{
							$recClause .= " AND Building.b_name = \"$val\"";
						}	
						else if($token == "campus" && $val != "")
						{
							$recClause .= " AND Building.campus_name = \"$val\"";
						}
						else if($token == "bath" && $val != "")
						{
							$recClause .= " AND Building.num_of_bathrooms >= $val";
						}
						else if($token == "vend" && $val != "")
						{
							$recClause .= " AND Building.num_of_vending_machines >= $val";
						}
						else if($token == "year" && $val != "")
						{
							$recClause .= " AND Building.date_built = $val";
						}
						else if($token == "floor" && $val != "")
						{
							$recClause .= " AND Building.num_of_floors >= $val";
						}
						else if($token == "open" && $val != "")
						{
							$recClause .= " AND Building.time_open <= $val";
						}
						else if($token == "close" && $val != "")
						{
							$recClause .= " AND Building.time_close >= $val";
						}
						else if($token == "handi" && $val != "")
						{
							$recClause .= " AND Building.Handicap_Access = \"$val\"";
						}
						
						
						else if($token == "type" && $val != ""  && $val != "any")
						{
							$recClause .= " AND Recreation_Type_Building.type = \"$val\"";
						}
						else if($token == "kind" && $val != ""  && $val != "any")
						{
							$recClause .= " AND Recreation_Type_Building.kind = \"$val\"";
						}
						else if($token == "use" && $val != ""  && $val != "any")
						{
							$recClause .= " AND Recreation_Type_Building.room_use = \"$val\"";
						}
						
						else
						{/*?????*/}
					
						$detArgs .= ("_" . $token . "-" . $val);
						break;
						
					case "res":
						$token = strtok("-");
						
						if($token == "bid" && $val != "")
						{
							$resClause .= " AND Building.ID = $val";
						}
						else if($token == "bName" && $val != "")
						{
							$resClause .= " AND Building.b_name = \"$val\"";
						}	
						else if($token == "campus" && $val != "")
						{
							$resClause .= " AND Building.campus_name = \"$val\"";
						}
						else if($token == "bath" && $val != "")
						{
							$resClause .= " AND Building.num_of_bathrooms >= $val";
						}
						else if($token == "vend" && $val != "")
						{
							$resClause .= " AND Building.num_of_vending_machines >= $val";
						}
						else if($token == "year" && $val != "")
						{
							$resClause .= " AND Building.date_built = $val";
						}
						else if($token == "floor" && $val != "")
						{
							$resClause .= " AND Building.num_of_floors >= $val";
						}
						else if($token == "open" && $val != "")
						{
							$resClause .= " AND Building.time_open <= $val";
						}
						else if($token == "close" && $val != "")
						{
							$resClause .= " AND Building.time_close >= $val";
						}
						else if($token == "handi" && $val != "")
						{
							$resClause .= " AND Building.Handicap_Access = \"$val\"";
						}
						
						
						else if($token == "type" && $val != "" && $val != "any")
						{
							$resClause .= " AND Residential_Type_Building.type = \"$val\"";
						}
						else if($token == "ac" && $val != "")
						{
							$resClause .= " AND Residential_Type_Building.AC_Heating = \"$val\"";
						}
						else if($token == "lounge" && $val != "")
						{
							$resClause .= " AND Residential_Type_Building.Has_Lounge = \"$val\"";
						}
						else if($token == "lobby" && $val != "")
						{
							$resClause .= " AND Residential_Type_Building.Has_Lobby = \"$val\"";
						}
						else if($token == "coed" && $val != "")
						{
							$resClause .= " AND Residential_Type_Building.is_CoEd = \"$val\"";
						}
						else if($token == "flooring" && $val != "")
						{
							$resClause .= " AND Residential_Type_Building.floor_type = \"$val\"";
						}
						else if($token == "kitchen" && $val != "")
						{
							$resClause .= " AND Residential_Type_Building.Has_Kitchen = \"$val\"";
						}
						else if($token == "bathNum" && $val != "")
						{
							$resClause .= " AND Residential_Type_Building.num_bathrooms >= $val";
						}
						else if($token == "vac" && $val != "")
						{
							$resClause .= " AND Residential_Type_Building.vacancy_count >= $val";
						}

						else
						{/*?????*/}
					
						$detArgs .= ("_" . $token . "-" . $val);						
						break;
						
					case "serv":
						$token = strtok("-");
					
						if($token == "bid" && $val != "")
						{
							$servClause .= " AND Building.ID = $val";
						}
						else if($token == "bName" && $val != "")
						{
							$servClause .= " AND Building.b_name = \"$val\"";
						}	
						else if($token == "campus" && $val != "")
						{
							$servClause .= " AND Building.campus_name = \"$val\"";
						}
						else if($token == "bath" && $val != "")
						{
							$servClause .= " AND Building.num_of_bathrooms >= $val";
						}
						else if($token == "vend" && $val != "")
						{
							$servClause .= " AND Building.num_of_vending_machines >= $val";
						}
						else if($token == "year" && $val != "")
						{
							$servClause .= " AND Building.date_built = $val";
						}
						else if($token == "floor" && $val != "")
						{
							$servClause .= " AND Building.num_of_floors >= $val";
						}
						else if($token == "open" && $val != "")
						{
							$servClause .= " AND Building.time_open <= $val";
						}
						else if($token == "close" && $val != "")
						{
							$servClause .= " AND Building.time_close >= $val";
						}
						else if($token == "handi" && $val != "")
						{
							$servClause .= " AND Building.Handicap_Access = \"$val\"";
						}
						
						
						else if($token == "type" && $val != "" && $val != "any")
						{
							$servClause .= " AND Service_Type_Building.type = \"$val\"";
						}
						else if($token == "kind" && $val != "")
						{
							$servClause .= " AND Service_Type_Building.kind = \"$val\"";
						}
						else if($token == "use" && $val != "")
						{
							$servClause .= " AND Service_Type_Building.room_use = \"$val\"";
						}
						else if($token == "prod" && $val != "")
						{
							$servClause .= " AND Service_Type_Building.product_focus = \"$val\"";
						}
					
						else
						{/*?????*/}
					
						$detArgs .= ("_" . $token . "`" . $val);
						break;
						
					case "park":
						$token = strtok("-");
						if($token == "lotname" && $val != "")
						{
							$parkClause .= " AND ParkingLot.Lot_Name = \"$val\"";
						}
						else if($token == "campus" && $val != "")
						{
							$parkClause .= " AND ParkingLot.cname = \"$val\"";
						}
						else if($token == "capacity" && $val != "")
						{
							$parkClause .= " AND ParkingLot.capacity >= $val";
						}
						else if($token == "price" && $val != "")
						{
							$parkClause .= " AND ParkingLot.pass_price <= $val";
						}
						else if($token == "passtype" && $val != "")
						{
							$parkClause .= " AND ParkingLot.pass_type = \"$val\"";
						}
						else if($token == "passnum" && $val != "")
						{
							$parkClause .= " AND ParkingLot.usable_by = \"$val\"";
						}
						else
						{/*?????*/}

						$detArgs .= ("_" . $token . "`" . $val);
						break;
					
					default:
						//die("Something messed up!");
						break;

				}	
				
		
			}
			
						
			if(isset($resSubject))
			{
				echo("<h1 class = 'title'>Residential Buildings</h1>");
				echo("<table>");
				echo("<tr>");
				echo("<th>University Name</th> <th>Date Founded</th> <th>State</th> <th>Population</th> <th>Tuition</th>");
				echo("<th>Campus Name</th> <th>Building Name</th> <th>Date Built</th> <th>Opening Hour</th> <th>Closing Hour</th> <th>Vending Machines</th> <th>Handicap Access</th> <th>Floor Count</th> <th>Details</th>");
				echo("</tr>");
				
				$resSubject = rtrim($resSubject, "INNER JOIN");
				$resSubject .= $resClause;
				
				//echo($resSubject);
				
				$result = mysqli_query($server, $resSubject . " ORDER BY University.name, Building.campus_name, Building.b_name");
				if(!result)
				{echo($resSubject);}
				
				while($r = mysqli_fetch_assoc($result))
				{
					echo("<tr>");
					foreach($r as $n=>$v)
					{
						echo("<td>");
						
						if(is_null($v))
						{echo("N/A");}
						else
						{echo($v);}
						echo("</td>");
					}
					
					$keys = array_keys($r);
					$linkB = " AND b_name = '" . $r[$keys[6]] . "'";

					$hash = base64_encode($resClause . $linkB);
					$hash = urlencode($hash);
					
					echo("<td>");
					echo("<a class = 'infolink' href = 'result/info.php?field=res&args=$hash'>Click Here</a>");
					echo("</td>");
					
					echo("</tr>");
				}
				echo("</table>");
			}
			
			if(isset($recSubject))
			{
				echo("<h1 class = 'title'>Recreational Buildings</h1>");
				echo("<table>");
				echo("<tr>");
				echo("<th>University Name</th> <th>Date Founded</th> <th>State</th> <th>Population</th> <th>Tuition</th>");
				echo("<th>Campus Name</th> <th>Building Name</th> <th>Date Built</th> <th>Opening Hour</th> <th>Closing Hour</th> <th>Vending Machines</th> <th>Handicap Access</th> <th>Floor Count</th> <th>Details</th>");
				echo("</tr>");
				
				$recSubject = rtrim($recSubject, "INNER JOIN");
				$recSubject .= $recClause;
				
				//echo($recSubject);
				
				$result = mysqli_query($server, $recSubject . " ORDER BY University.name, Building.campus_name, Building.b_name");
				if(!result)
				{echo($recSubject);}
				
				while($r = mysqli_fetch_assoc($result))
				{
					echo("<tr>");
					foreach($r as $n=>$v)
					{
						echo("<td>");
						
						if(is_null($v))
						{echo("N/A");}
						else
						{echo($v);}
						echo("</td>");
					}
					
					$keys = array_keys($r);
					$linkB = " AND b_name = '" . $r[$keys[6]] . "'";
					
					$hash = base64_encode($recClause . $linkB);
					$hash = urlencode($hash);
					
					echo("<td>");
					echo("<a class = 'infolink' href = 'result/info.php?field=rec&args=$hash'>Click Here</a>");
					echo("</td>");
					
					echo("</tr>");
				}
				echo("</table>");
			}

			if(isset($classSubject))
			{
				echo("<h1 class = 'title'>Classroom Buildings</h1>");
				echo("<table>");
				echo("<tr>");
				echo("<th>University Name</th> <th>Date Founded</th> <th>State</th> <th>Population</th> <th>Tuition</th>");
				echo("<th>Campus Name</th> <th>Building Name</th> <th>Date Built</th> <th>Opening Hour</th> <th>Closing Hour</th> <th>Vending Machines</th> <th>Handicap Access</th> <th>Floor Count</th> <th>Details</th>");
				echo("</tr>");
				
				$classSubject = rtrim($classSubject, "INNER JOIN");
				$classSubject .= $classClause;
				
				$result = mysqli_query($server, $classSubject . " ORDER BY University.name, Building.campus_name, Building.b_name");
				if(!result)
				{echo($classSubject);}
				
				//echo($classSubject);
				
				while($r = mysqli_fetch_assoc($result))
				{
					echo("<tr>");
					foreach($r as $n=>$v)
					{
						echo("<td>");
						
						if(is_null($v))
						{echo("N/A");}
						else
						{echo($v);}
						echo("</td>");
					}
					
					$keys = array_keys($r);
					$linkB = " AND b_name = '" . $r[$keys[6]] . "'";

					$hash = base64_encode($classClause . $linkB);
					$hash = urlencode($hash);
					
					echo("<td>");
					echo("<a class = 'infolink' href = 'result/info.php?field=class&args=$hash'>Click Here</a>");
					echo("</td>");
					
					echo("</tr>");
				}
				echo("</table>");
			}


			if(isset($servSubject))
			{
				echo("<h1 class = 'title'>Service Buildings</h1>");
				echo("<table>");
				echo("<tr>");
				echo("<th>University Name</th> <th>Date Founded</th> <th>State</th> <th>Population</th> <th>Tuition</th>");
				echo("<th>Campus Name</th> <th>Building Name</th> <th>Date Built</th> <th>Opening Hour</th> <th>Closing Hour</th> <th>Vending Machines</th> <th>Handicap Access</th> <th>Floor Count</th> <th>Details</th>");
				echo("</tr>");
				
				$servSubject = rtrim($servSubject, "INNER JOIN");
				$servSubject .= $servClause;
				
				//echo($servSubject . "<br/>");
				
				$result = mysqli_query($server, $servSubject . " ORDER BY University.name, Building.campus_name, Building.b_name");
				if(!result)
				{echo($servSubject);}
				
				while($r = mysqli_fetch_assoc($result))
				{
					echo("<tr>");
					foreach($r as $n=>$v)
					{
						echo("<td>");
						
						if(is_null($v))
						{echo("N/A");}
						else
						{echo($v);}
						echo("</td>");
					}
					
					$keys = array_keys($r);
					$linkB = " AND b_name = '" . $r[$keys[6]] . "'";
					
					$hash = base64_encode($servClause . $linkB);
					$hash = urlencode($hash);
					
					echo("<td>");
					echo("<a class = 'infolink' href = 'result/info.php?field=serv&args=$hash'>Click Here</a>");
					echo("</td>");
					
					echo("</tr>");
				}
				echo("</table>");
			}
	
		
			if(isset($parkSubject))
			{
				echo("<h1 class = 'title'>Parking Lots</h1>");
				echo("<table>");
				echo("<tr>");
				echo("<th>University Name</th> <th>Date Founded</th> <th>State</th> <th>Population</th> <th>Tuition</th>");
				echo("<th>Campus Name</th> <th>Lot Name</th> <th>Capacity</th> <th>Pass Price</th> <th>Pass Type</th> <th>Usable By</th>");
				echo("</tr>");
				
				$parkSubject = rtrim($parkSubject, "INNER JOIN");
				$parkSubject .= $parkClause;
				$parkSubject .= " ORDER BY University.name, ParkingLot.cname, pass_price, Lot_Name";
				
				$result = mysqli_query($server, $parkSubject);
				if(!result)
				{echo($parkSubject);}
				
				//echo($parkSubject);
				
				while($r = mysqli_fetch_assoc($result))
				{
					echo("<tr>");
					foreach($r as $n=>$v)
					{
						echo("<td>");
						
						if(is_null($v))
						{echo("N/A");}
						else
						{echo($v);}
						echo("</td>");
					}
					
					echo("</tr>");
				}
				echo("</table>");
			}

	
		?>
	</div>
	</div>
	
</body>

</html>
