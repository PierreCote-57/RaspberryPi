$fs = 1.000;
$fa=1.000;
$fn=36.000;


// RangeTray
union()
{
	scale(v=[1.000, 1.000, 0.500])
	{
		translate(v=[0.000, 0.000, -5.000])
		{
			translate(v=[0.000, 0.000, 0.000])
			{
				minkowski()
				{
					cube(size=[74.000, 54.000, 10.000], center=true);
					rotate(a=[0.000, 0.000, 90.000])
					{
						cylinder(0.010, 3.000, 3.000, false);
					}
				}
			}
		}
	}
	translate(v=[0.000, 13.750, 0.000])
	{
		difference()
		{
			difference()
			{
				translate(v=[0.000, 0.000, 10.000])
				{
					cube(size=[55.000, 10.000, 20.000], center=true);
				}
				translate(v=[0.000, 0.000, 13.000])
				{
					cube(size=[43.000, 11.000, 18.000], center=true);
				}
				translate(v=[0.000, 0.000, 13.000])
				{
					cube(size=[47.000, 3.500, 22.000], center=true);
				}
			}
			translate(v=[0.000, 0.000, 1.000])
			{
				color(c=[0.000, 0.000, 1.000])
				{
					cube(size=[12.000, 11.000, 10.000], center=true);
				}
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


