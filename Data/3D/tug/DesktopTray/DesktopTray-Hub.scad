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
						cylinder(h=0.010, r1=3.000, r2=3.000, center=false);
					}
				}
			}
			cube(size=[115.000, 12.000, 11.000], center=true);
		}
		translate(v=[-61.250, 0.000, 3.333])
		{
			rotate(a=[90.000, 0.000, 90.000])
			{
				cylinder(h=5.000, r1=6.000, r2=6.000, center=false);
			}
		}
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


