$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Motor2040/Motor2040-Green
color([0.000, 1.000, 0.000])
{
	translate(v=[0.000, 0.000, 2.600])
	{
		difference()
		{
			translate(v=[0.000, 0.000, 0.000])
			{
				minkowski()
				{
					cube(size=[49.000, 35.000, 0.200], center=true);
					rotate(a=[0.000, 0.000, 90.000])
					{
						cylinder(0.010, 3.000, 3.000, false);
					}
				}
			}
			translate(v=[0.000, 0.000, 0.000])
			{
				minkowski()
				{
					cube(size=[47.500, 33.500, 0.300], center=true);
					rotate(a=[0.000, 0.000, 90.000])
					{
						cylinder(0.010, 3.000, 3.000, false);
					}
				}
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


