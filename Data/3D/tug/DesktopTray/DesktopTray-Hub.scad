$fs = 1.000;
$fa=1.000;
$fn=36.000;


// DesktopTray-Hub
difference()
{
	difference()
	{
		translate(v=[0.000, 0.000, 0.000])
		{
			minkowski()
			{
				cube(size=[119.000, 14.000, 10.000], center=true);
				rotate(a=[0.000, 0.000, 90.000])
				{
					cylinder(h=0.010, r1=3.000, r2=3.000, center=false);
				}
			}
		}
		cube(size=[115.000, 10.000, 11.000], center=true);
	}
	translate(v=[-65.000, 0.000, 5.000])
	{
		rotate(a=[90.000, 0.000, 90.000])
		{
			cylinder(h=10.000, r1=5.000, r2=5.000, center=false);
		}
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


