$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Nose
difference()
{
	translate(v=[0.000, 0.000, 37.500])
	{
		cube(size=[300.000, 190.000, 187.500], center=true);
	}
	translate(v=[270.000, 0.000, 700.000])
	{
		color(c=[0.000, 0.000, 1.000])
		{
			translate(v=[0.000, 0.000, 0.000])
			{
				minkowski()
				{
					cube(size=[350.000, 209.000, 1000.000], center=true);
					rotate(a=[90.000, 0.000, 0.000])
					{
						cylinder(h=0.010, r1=125.000, r2=125.000, center=false);
					}
				}
			}
		}
	}
	translate(v=[150.000, 0.000, 40.000])
	{
		rotate(a=[90.000, 0.000, 0.000])
		{
			color(c=[1.000, 0.000, 0.000])
			{
				scale(v=[1.500, 1.000, 1.000])
				{
					cylinder(h=209.000, r1=25.000, r2=25.000, center=true);
				}
			}
		}
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/TugBoat.scad>


