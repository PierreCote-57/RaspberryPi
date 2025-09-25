$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Servo_2040
difference()
{
	translate(v=[0.000, 0.000, -3.000])
	{
		cube(size=[82.000, 62.000, 10.000], center=true);
	}
	translate(v=[28.300, 18.300, 0.010])
	{
		union()
		{
			color(c=[0.000, 1.000, 0.000])
			{
				cylinder(h=4.000, r1=2.500, r2=2.500, center=true, $fn=6);
			}
			translate(v=[0.000, 0.000, -2.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					cylinder(h=6.000, r1=1.250, r2=1.250, center=true);
				}
			}
		}
	}
	translate(v=[-28.300, 18.300, 0.010])
	{
		union()
		{
			color(c=[0.000, 1.000, 0.000])
			{
				cylinder(h=4.000, r1=2.500, r2=2.500, center=true, $fn=6);
			}
			translate(v=[0.000, 0.000, -2.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					cylinder(h=6.000, r1=1.250, r2=1.250, center=true);
				}
			}
		}
	}
	translate(v=[28.300, -18.300, 0.010])
	{
		union()
		{
			color(c=[0.000, 1.000, 0.000])
			{
				cylinder(h=4.000, r1=2.500, r2=2.500, center=true, $fn=6);
			}
			translate(v=[0.000, 0.000, -2.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					cylinder(h=6.000, r1=1.250, r2=1.250, center=true);
				}
			}
		}
	}
	translate(v=[-28.300, -18.300, 0.010])
	{
		union()
		{
			color(c=[0.000, 1.000, 0.000])
			{
				cylinder(h=4.000, r1=2.500, r2=2.500, center=true, $fn=6);
			}
			translate(v=[0.000, 0.000, -2.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					cylinder(h=6.000, r1=1.250, r2=1.250, center=true);
				}
			}
		}
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


