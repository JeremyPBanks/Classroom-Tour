import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Random;
import java.util.Scanner;

/**
 * 
 * @author Neel
 *
 */

/*
 * READ THIS FIRST. 
 * YOU WILL HAVE YOU GO BACK AND CHANGE VALUES
 * 
 * FOR LECTURE HALL AND REGULAR CLASSROOM, 
 *  IT WILL ALWAYS SAY ? FOR CAPACITY, 
 *  SEATS WILL BE ATTACHED OR DETACHED
 *  BOARD TYPE WILL BE SELECTED **AFTER** YOU SELECT CLASSROOM TYPE
 *  
 *  FOR EVERYTHING ELSE, LAST THREE FIELDS WILL SAY NULL WITHOUT QUOTES. 
 *  
 *  
 *  YOU CAN STOP THE PROGRAM ANY TIME AND QUERY OUTPUT WILL BE SAVED. 
 *  BUT, TO GENERATE A NEW SET, YOU WILL HAVE TO CLEAR THE OLD FILE MANUALLY. 
 *  (? capacity, random seat, manual Board type)
 */

public class SQLclassTypeBuildingGenerator {
	static BufferedWriter writer; 
	public static void main(String[] args) {
		String XcampusName = "NULL";
		String Xcode = "NULL";
		String XID = "NULL";
		String XroomID = "NULL";
		String XfloorNum = "NULL";
		String Xtype = "NULL";
		String Xcapacity = "NULL";
		String Xdesktype = "NULL";
		String XboardType = "NULL";
		
		String[] arrTypes = {"Mail Room", "Faculty Lounge", "Office", "Regular Classroom", "Computer Lab", "Lecture Hall"};
		String[] arrSeats = { "Detached", "Attached", "Theater Seats"};
		String[] arrBoards = {"Chalk", "White"};
		
		String MAINOUTPUT = "("+XcampusName+","+Xcode+","+XID+","+XroomID+","+XfloorNum+","+Xtype+","+Xcapacity+","+Xdesktype+","+XboardType+"),";
		
		int reqTypeIndex = 0;
		int numTypes = 0;
		int reqSeatsIndex = 0;
		int numSeats = 0;
		int reqBoardIndex = 0;
		int numBoards = 0;
		
		
		int roomNum = 0;
		int floorNum = 0;
		
		Scanner in = new Scanner(System.in);
		//Constants
		System.out.print("Enter [CampusName]: ");
		String a = in.nextLine();
		//System.out.println("Printout: ['"+ a + "']");
		
		System.out.print("Enter [Code]: ");
		String b = in.nextLine();
		//System.out.println("You entered: ['"+ b + "']");
		
		System.out.print("Enter [Building ID]: ");
		String c = in.nextLine();
		//System.out.println("You entered: ["+ c + "]");
		
		System.out.print("Initial floor number: ");
		String e = in.nextLine();
		
			System.out.print("# of Floors in building: ");
			int numOfFloors = in.nextInt();
			in.nextLine();
		
		
		System.out.print("Initial room number: ");
		String d = in.nextLine();
		//System.out.println("You entered: ["+ c + "]");
		
			/*System.out.println(">>>Enter # of rooms on Floor: ");
			int numOfRooms = in.nextInt();*/
		
		
		
		//Randoms
		

		XcampusName = "'" + a + "'";
		Xcode = "'" + b + "'";
		XID = c;
		MAINOUTPUT = "("+XcampusName+","+Xcode+","+XID+","+XroomID+","+XfloorNum+","+Xtype+","+Xcapacity+","+Xdesktype+","+XboardType+"),";
		
		
		// PRINT OUT
		int currFloor;
		int currRoom = Integer.parseInt(d);
		int startRoom = Integer.parseInt(d);
		
		String fileName = "sqloutput.txt";
		try {
			writer = new BufferedWriter(new FileWriter(fileName));
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	    
		
		for (currFloor = Integer.parseInt(e); currFloor <= numOfFloors; currFloor++) {
			System.out.println("==============================");
			System.out.println("        FLOOR " + currFloor );
			System.out.println("==============================\n");
			
			//Ask Types Of Room
			reqTypeIndex = requestIndex(arrTypes, in, "Type Of Room");
			numTypes = requestCount (in,arrTypes[reqTypeIndex]);
			
			if (reqTypeIndex == 5 || reqTypeIndex == 3) {
				Xcapacity = "?";
				reqBoardIndex = requestIndex(arrBoards,in, "Board Type");
				//numBoards = requestCount (in,"Type");
				
				for (int typeCountX = 1; typeCountX <= numTypes; typeCountX++) {
					XroomID = "" + currRoom;
					XfloorNum = "" + currFloor;
					Xtype = "'" + arrTypes[reqTypeIndex] + "'";
					Random rand = new Random();
						
						int randomDesk = rand.nextInt(2);
						if (reqTypeIndex == 3) {
							randomDesk = rand.nextInt(2);
						}
						else
						{
							randomDesk = rand.nextInt(2)+1;
						}
						
						
						Xdesktype = "'" + arrSeats[randomDesk] + "'";
						XboardType = "'" + arrBoards[reqBoardIndex] + "'";
						
						//System.out.println("("+XcampusName+","+Xcode+","+XID+","+currRoom+","+XfloorNum+","+Xtype+","+Xcapacity+","+Xdesktype+","+XboardType+"),");
						String str = "("+XcampusName+","+Xcode+","+XID+","+currRoom+","+XfloorNum+","+Xtype+","+Xcapacity+","+Xdesktype+","+XboardType+"),"+ "\n"; 
						try {
							writer = new BufferedWriter(new FileWriter(fileName, true));
							writer.append(str);
							writer.close();
							System.out.println(">>>> query printed! Newest room: " + currRoom + " <<<<");
						} catch (IOException e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						}
						currRoom++;
					
				}
			}
			
			else {
				for (int typeCount = 1; typeCount <= numTypes; typeCount++) {
					
					//XcampusName = "";
					//Xcode = "";
					//XID = "";
					XroomID = "" + currRoom;
					XfloorNum = "" + currFloor;
					Xtype = "'" + arrTypes[reqTypeIndex] + "'";
					//Xkind = "";
					//XroomUse = "";
					//XproductFocus = "";
					//System.out.println("("+XcampusName+","+Xcode+","+XID+","+currRoom+","+XfloorNum+","+Xtype+","+Xcapacity+","+Xdesktype+","+XboardType+"),");
					String str = "("+XcampusName+","+Xcode+","+XID+","+currRoom+","+XfloorNum+","+Xtype+",NULL,NULL,NULL)," + "\n";
					//System.out.println(">>>> query printed! Newest room: " + currRoom + " <<<<");
					
					try {
						writer = new BufferedWriter(new FileWriter(fileName, true));
						writer.append(str);
						writer.close();
						System.out.println(">>>> query printed! Newest room: " + currRoom + " <<<<");
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					currRoom++;
				}
			}
				
			//Ask if move on to next floor
			if (currFloor < numOfFloors) {
				System.out.print("\n\nMove on to FLOOR "+ (currFloor+1)+"? [Y/N] : ");
				String yn = in.nextLine();
				if (yn.equals("n") || yn.equals("N")) {
					currFloor = currFloor - 1;
				}
				if (yn.equals("y") || yn.equals("Y")) {
					System.out.print("Initial Room # for "+ (currFloor+1)+": ");
					d = in.nextLine();
					currRoom = Integer.parseInt(d);
				}
			}
			else if (currFloor == numOfFloors){
				System.out.print("\n\nContinue on the current floor "+ (currFloor)+"? [Y/N] : ");
				String yn = in.nextLine();
				if (yn.equals("n") || yn.equals("N")) {
					
				}
				if (yn.equals("y") || yn.equals("Y")) {
					currFloor = currFloor - 1;
				}
			}
			
		}
		
	
		
		
		
		System.out.println("\n======================\n PROGRAM ENDED \n============================ ");
	}


	private static int requestCount(Scanner in, String string) {
		int x = 0;
		System.out.print("How many of ["+string+"] : ");
		x = in.nextInt();
		in.nextLine();
		return x;
	}

	public static int requestIndex(String[] arr, Scanner in, String nameOfField ) {
		System.out.println("Choose [" + nameOfField + "]: ");
		for (int x = 0; x < arr.length; x++) {
			System.out.println("[" + x + "] " + arr[x]);
		}
		System.out.print(">> ");
		int x = in.nextInt();
		in.nextLine();
		return x;
	}
}
