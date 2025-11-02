$fs = 1.000;
$fa=1.000;
$fn=36.000;


// DesktopTray-Hub
scale(v=[1.000, 1.000, 3.000])
{
	difference()
	{
		difference()
		{
			translate(v=[0.000, 0.000, 0.000])
			{
				minkowski()
				{
					cube(size=[114.000, 11.000, 10.000], center=true);
					rotate(a=[0.000, 0.000, 90.000])
					{
						cylinder(0.010, 3.000, 3.000, false);
					}
				}
			}
			cube(size=[115.000, 12.000, 11.000], center=true);
		}
		translate(v=[-61.250, 0.000, 3.333])
		{
			rotate(a=[90.000, 0.000, 90.000])
			{
				cylinder(5.000, 6.000, 6.000, false);
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


