$fs = 1.000;
$fa=1.000;
$fn=36.000;


// DesktopTray-Motor
difference()
{
	translate(v=[0.000, 0.000, 0.000])
	{
		minkowski()
		{
			cube(size=[54.000, 74.000, 10.000], center=true);
			rotate(a=[0.000, 0.000, 90.000])
			{
				cylinder(0.010, 3.000, 3.000, false);
			}
		}
	}
	translate(v=[-18.800, 21.000, 0.000])
	{
		union()
		{
			translate(v=[0.000, 0.000, 0.000])
			{
				cylinder(20.000, 16.000, 16.000, true);
			}
			translate(v=[16.000, 0.000, 0.000])
			{
				cube(size=[6.000, 17.000, 7.500], center=true);
			}
		}
	}
	translate(v=[-18.800, -21.000, 0.000])
	{
		union()
		{
			translate(v=[0.000, 0.000, 0.000])
			{
				cylinder(20.000, 16.000, 16.000, true);
			}
			translate(v=[16.000, 0.000, 0.000])
			{
				cube(size=[6.000, 17.000, 7.500], center=true);
			}
		}
	}
	translate(v=[19.000, 21.000, 0.000])
	{
		translate(v=[0.000, 0.000, 5.000])
		{
			cube(size=[32.000, 36.000, 8.000], center=true);
		}
	}
	translate(v=[19.000, -21.000, 0.000])
	{
		translate(v=[0.000, 0.000, 5.000])
		{
			cube(size=[32.000, 36.000, 8.000], center=true);
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


