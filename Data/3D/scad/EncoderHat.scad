$fn=36;
height=10;
outerD=10;
innerD=3.25;
barOffset=innerD / 2 - (innerD - 3.);

union()
{
	difference()
	{
		cylinder(h=height, r=outerD / 2, center=true);

		difference()
		{
			cylinder(h=1.1 * height, r=innerD / 2, center=true);
			color("red")
			translate([barOffset + innerD / 2, 0, 0])
				cube([innerD, innerD, 1.1 * height], true);
		}
	}


	translate([0, 0, height / 2])
	scale([1.0, 0.5, 1.0])
		cylinder(h=height / 4, r=outerD / 2, center=true, $fn=3);
}