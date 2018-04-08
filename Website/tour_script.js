function test()
{
	window.alert("TESTING");
}
/*
function moreOptions(opt) //show more options 'n shit based on input
{
	var idName;
	var val;
	switch(opt)
	{
		//TODO: in default ifs, use parentOf and removeChild to remove added elements
	
		case 1://residential
			idName = "resOpt";
			val = document.getElementById("restype").value;
			
			if(val == "any")
			{
				//clear
				document.getElementById(idName).innerHTML = "";
			}
			
			else if(val == "dorm")
			{
				//fill in dorm attributes
				document.getElementById(idName).innerHTML = "<input type = 'search' name = 'drm-bath' class = 'attrSearch' placeholder = 'Communal Bathroom'/>";
				
				
				
				
			}
			
			else if(val == "apt")
			{
				//fill in apt attributes
				document.getElementById(idName).innerHTML = "<input type = 'search' name = 'apt-kitchen' class = 'attrSearch' placeholder = 'Kitchen'/><input type = 'number' name = 'apt-bath' class = 'attrSearch' placeholder = 'Number of Bathrooms'/><input type = 'search' name = 'apt-roomType' class = 'attrSearch' placeholder = 'Room Type'/><input type = 'search' name = 'apt-amen' class = 'attrSearch' placeholder = 'Amenities'/>";

			}
			
			else
			{
				//error case
				window.alert("Invalid Input for Residential Type Field: " + val);
			}
			
			break;
	
		case 2://service
			idName = "servOpt";
			val = document.getElementById("servtype").value;
						
			if(val == "any")
			{
				//clear
				document.getElementById(idName).innerHTML = "";
			}
			
			else if(val == "help")
			{
				//fill in help attributes
				document.getElementById(idName).innerHTML = "<input type = 'search' name = 'serv-helpS' class = 'attrSearch' placeholder = 'Help Center'/>";
			}
			
			else if(val == "health")
			{
				//fill in health attributes
				document.getElementById(idName).innerHTML = "<input type = 'search' name = 'serv-healthS' class = 'attrSearch' placeholder = 'Health Facility'/>";
			}
			
			else if(val == "food")
			{
				//fill in food attributes
				document.getElementById(idName).innerHTML = "<input type = 'search' name = 'serv-foodS' class = 'attrSearch' placeholder = 'Food Type'/>";
			}
			
			else if(val == "store")
			{
				//fill in store attributes
				document.getElementById(idName).innerHTML = "<input type = 'search' name = 'serv-storeS' class = 'attrSearch' placeholder = 'Store Type'/>";
			}
			
			else
			{
				//error case
				window.alert("Invalid Input for Service Type Field");
			}

			
			
			
			break;

		case 3://recreation
			idName = "recOpt";
			val = document.getElementById("rectype").value;
			
			if(val == "any")
			{
				//clear
				document.getElementById(idName).innerHTML = "";
			}
			
			else if(val == "ent")
			{
				//fill in entertainment attributes
				document.getElementById(idName).innerHTML = "<input type = 'search' name = 'ent-something' class = 'attrSearch' placeholder = 'Test Attribte'/>";
			}
			
			else if(val == "health")
			{
				//fill in health attributes
				document.getElementById(idName).innerHTML = "<input type = 'search' name = 'health-something' class = 'attrSearch' placeholder = 'Test Attribte'/>";
			}
			
			else
			{
				//error case
				window.alert("Invalid Input for Recreation Type Field");
			}

			
			break;
		
		default://input error
			return;
			break;
	}
	return;
}

*/



