//Printing Plate 
//Drop this file into a directory of STLs and combine them into a single printable file.  For detailed directions and documentation visit http://www.thingiverse.com/thing:12831



//BUILD AREA  
//(Virtual cube helps visualize printing boundaries on each axis.  Enter the total build size (mm) for each axis below.) 

xmax = 110;
ymax = 110;
zmax = 120;
%translate([0,0,zmax/2]){cube([xmax,ymax,zmax], center = true);} //Visual build volume



//IMPORT FILES  
//(Put desired stls into the same directory as this script.  Replace the numbered file names below with file names you want to import.)

filename1 = "<filename1>.stl";

	//Position (distance from origin in mm)
		x_1 = 0;  
		y_1 = 0;
		z_1 = 0;
	//Rotation (angle of rotation in degrees)
		rx_1 = 0;  
		ry_1 = 0;
		rz_1 = 0;
	//Mirror (enter 1 to mirror about plane)
		mx_1 = 0;  
		my_1 = 0;
		mz_1 = 0;
	
filename2 = "<filename2>.stl";
	//Position (distance from origin in mm)
		x_2 = 0;  
		y_2 = 0;
		z_2 = 0;
	//Rotation (angle of rotation in degrees)
		rx_2 = 0;  
		ry_2 = 0;
		rz_2 = 0;
	//Mirror (enter 1 to mirror about plane)
		mx_2 = 0;  
		my_2 = 0;
		mz_2 = 0;

filename3 = "<filename3>.stl";
	//Position (distance from origin in mm)
		x_3 = 0;  
		y_3 = 0;
		z_3 = 0;
	//Rotation (angle of rotation in degrees)
		rx_3 = 0;  
		ry_3 = 0;
		rz_3 = 0;
	//Mirror (enter 1 to mirror about plane)
		mx_3 = 0;  
		my_3 = 0;
		mz_3 = 0;

filename4 = "<filename4>.stl";
	//Position (distance from origin in mm)
		x_4 = 30;  
		y_4 = 0;
		z_4 = 0;
	//Rotation (angle of rotation in degrees)
		rx_4 = 0;  
		ry_4 = 0;
		rz_4 = 0;
	//Mirror (enter 1 to mirror about plane)
		mx_4 = 0;  
		my_4 = 0;
		mz_4 = 0;

filename5 = "<filename5>.stl";
	//Position (distance from origin in mm)
		x_5 = 0;  
		y_5 = 0;
		z_5 = 0;
	//Rotation (angle of rotation in degrees)
		rx_5 = 0;  
		ry_5 = 0;
		rz_5 = 0;
	//Mirror (enter 1 to mirror about plane)
		mx_5 = 0;  
		my_5 = 0;
		mz_5 = 0;

filename6 = "<filename6>.stl";
	//Position (distance from origin in mm)
		x_6 = 0;  
		y_6 = 0;
		z_6 = 0;
	//Rotation (angle of rotation in degrees)
		rx_6 = 0;  
		ry_6 = 0;
		rz_6 = 0;
	//Mirror (enter 1 to mirror about plane)
		mx_6 = 0;  
		my_6 = 0;
		mz_6 = 0;

filename7 = "<filename7>.stl";
	//Position (distance from origin in mm)
		x_7 = 0;  
		y_7 = 0;
		z_7 = 0;
	//Rotation (angle of rotation in degrees)
		rx_7 = 0;  
		ry_7 = 0;
		rz_7 = 0;
	//Mirror (enter 1 to mirror about plane)
		mx_7 = 0;  
		my_7 = 0;
		mz_7 = 0;

filename8 = "<filename8>.stl";
	//Position (distance from origin in mm)
		x_8 = 0;  
		y_8 = 0;
		z_8 = 0;
	//Rotation (angle of rotation in degrees)
		rx_8 = 0;  
		ry_8 = 0;
		rz_8 = 0;
	//Mirror (enter 1 to mirror about plane)
		mx_8 = 0;  
		my_8 = 0;
		mz_8 = 0;

filename9 = "<filename9>.stl";
	//Position (distance from origin in mm)
		x_9 = 0;  
		y_9 = 0;
		z_9 = 0;
	//Rotation (angle of rotation in degrees)
		rx_9 = 0;  
		ry_9 = 0;
		rz_9 = 0;
	//Mirror (enter 1 to mirror about plane)
		mx_9 = 0;  
		my_9 = 0;
		mz_9 = 0;

filename10 = "<filename10>.stl";
	//Position (distance from origin in mm)
		x_10 = 0;  
		y_10 = 0;
		z_10 = 0;
	//Rotation (angle of rotation in degrees)
		rx_10 = 0;  
		ry_10 = 0;
		rz_10 = 0;
	//Mirror (enter 1 to mirror about plane)
		mx_10 = 0;  
		my_10 = 0;
		mz_10 = 0;




//SCRIPT
translate([x_1, y_1, z_1])rotate([rx_1, ry_1, rz_1])mirror([mx_1, my_1, mz_1]){import_stl(filename1, convexity = 5, center = true);}
if (filename2 != "<filename2>.stl"){translate([x_2, y_2, z_2])rotate([rx_2, ry_2, rz_2])mirror([mx_2, my_2, mz_2]){import_stl(filename2, convexity = 5, center = true);}}else {}
if (filename3 != "<filename3>.stl"){translate([x_3, y_3, z_3])rotate([rx_3, ry_3, rz_3])mirror([mx_3, my_3, mz_3]){import_stl(filename3, convexity = 5, center = true);}}else {}
if (filename4 != "<filename4>.stl"){translate([x_4, y_4, z_4])rotate([rx_4, ry_4, rz_4])mirror([mx_4, my_4, mz_4]){import_stl(filename4, convexity = 5, center = true);}}else {}
if (filename5 != "<filename5>.stl"){translate([x_5, y_5, z_5])rotate([rx_5, ry_5, rz_5])mirror([mx_5, my_5, mz_5]){import_stl(filename5, convexity = 5, center = true);}}else {}
if (filename6 != "<filename6>.stl"){translate([x_6, y_6, z_6])rotate([rx_6, ry_6, rz_6])mirror([mx_6, my_6, mz_6]){import_stl(filename6, convexity = 5, center = true);}}else {}
if (filename7 != "<filename7>.stl"){translate([x_7, y_7, z_7])rotate([rx_7, ry_7, rz_7])mirror([mx_7, my_7, mz_7]){import_stl(filename7, convexity = 5, center = true);}}else {}
if (filename8 != "<filename8>.stl"){translate([x_8, y_8, z_8])rotate([rx_8, ry_8, rz_8])mirror([mx_8, my_8, mz_8]){import_stl(filename8, convexity = 5, center = true);}}else {}
if (filename9 != "<filename9>.stl"){translate([x_9, y_9, z_9])rotate([rx_9, ry_9, rz_9])mirror([mx_9, my_9, mz_9]){import_stl(filename9, convexity = 5, center = true);}}else {}
if (filename10 != "<filename10>.stl"){translate([x_10, y_10, z_10])rotate([rx_10, ry_10, rz_10])mirror([mx_10, my_10, mz_10]){import_stl(filename10, convexity = 5, center = true);}}else {}