$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TrackingSupport
union()
{
	color(c=[1.000, 1.000, 0.000])
	{
		translate(v=[0.000, 0.000, 0.000])
		{
			minkowski()
			{
				cube(size=[49.000, 24.000, 10.000], center=true);
				rotate(a=[0.000, 0.000, 90.000])
				{
					cylinder(0.010, 3.000, 3.000, false);
				}
			}
		}
	}
	translate(v=[13.000, 5.500, 15.000])
	{
		difference()
		{
			cube(size=[10.000, 2.000, 20.000], center=true);
			translate(v=[0.000, 0.000, 5.000])
			{
				rotate(a=[90.000, 0.000, 0.000])
				{
					cylinder(4.000, 1.500, 1.500, true);
				}
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


