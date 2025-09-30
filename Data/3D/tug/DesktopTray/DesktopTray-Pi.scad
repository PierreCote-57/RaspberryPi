$fs = 1.000;
$fa=1.000;
$fn=36.000;


// DesktopTray-Pi
difference()
{
	translate(v=[0.000, 0.000, 0.000])
	{
		minkowski()
		{
			cube(size=[104.000, 74.000, 10.000], center=true);
			rotate(a=[0.000, 0.000, 90.000])
			{
				cylinder(h=0.010, r1=3.000, r2=3.000, center=false);
			}
		}
	}
	cube(size=[100.000, 70.000, 11.000], center=true);
	translate(v=[-50.000, -5.000, 3.000])
	{
		cube(size=[15.000, 40.000, 10.000], center=true);
	}
	translate(v=[30.000, 37.500, 3.000])
	{
		cube(size=[40.000, 10.000, 10.000], center=true);
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


