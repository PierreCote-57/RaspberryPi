$fs = 1.000;
$fa=1.000;
$fn=36.000;


// MiddlePost/MiddlePost-Gray
color([0.502, 0.502, 0.502])
{
	difference()
	{
		translate(v=[0.000, 0.000, -15.000])
		{
			cylinder(30.000, 9.300, 9.300, true);
		}
		rotate(a=[180.000, 0.000, 0.000])
		{
			color([0.000, 1.000, 0.000])
			{
				translate(v=[0.000, 0.000, 1.000])
				{
					cylinder(2.100, 3.100, 3.100, true, $fn=6);
				}
			}
		}
		color([1.000, 0.000, 0.000])
		{
			translate(v=[0.000, 0.000, -15.050])
			{
				cylinder(30.200, 1.600, 1.600, true);
			}
		}
		translate(v=[0.000, 0.000, -26.000])
		{
			cylinder(20.000, 3.100, 3.100, true);
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


