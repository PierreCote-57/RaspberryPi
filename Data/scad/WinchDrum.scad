$fn=90;
$fs = 0.05;

height = 20;
radius = 7.5;
lip = 5;
lip_thick = 2;

lenShaftOut = 2.5;
radiusShaftOut = 4.75 / 2;
// L Too long, gets 15, reduce to 10
lenShaftIn = 10;
// R: 3.5 is a hair too big, slides too easily
radiusShaftIn = 3.4 / 2;
barOffset = 0.6;

radiusCable = 1;


difference()
{
	union()
	{
		cylinder(height, radius, radius, true);

		// Shaft OUT
		translate([0, 0, (height + lenShaftOut) / 2])
			cylinder(lenShaftOut,radiusShaftOut, radiusShaftOut, true);

		// Lips
		translate([0, 0, (height - lip_thick) / 2])
			cylinder(lip_thick, radius + lip, radius + lip, true);
		translate([0, 0, -(height - lip_thick) / 2])
			cylinder(lip_thick, radius + lip, radius + lip, true);

	}

	// Shaft IN
	translate([0, 0, -(height - lenShaftIn) / 2 - 0.05])
//		color("GREEN")
//		cylinder(lenShaftIn, radiusShaftIn, radiusShaftIn, true);
	
		color("RED")
		difference()
		{
			cylinder(h=lenShaftIn, r=radiusShaftIn, center=true);
			color("BLUE")
			translate([radiusShaftIn / 2 + radiusShaftIn - barOffset, 0, 0])
				cube([radiusShaftIn, radiusShaftIn * 2, lenShaftIn], true);
		}

	// Traverse cable ties
	translate([0, 0, height / 2 - radiusCable - lip_thick])
	rotate([0, 90, 0])
	cylinder(3 * radius, radiusCable, radiusCable, true);

	translate([0, 0, -(height / 2 - radiusCable - lip_thick)])
	rotate([90, 0, 0])
	cylinder(3 * radius, radiusCable, radiusCable, true);

}
