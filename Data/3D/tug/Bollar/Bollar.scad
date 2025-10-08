$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Bollar
union()
{
	translate(v=[0.000, 0.000, 0.000])
	{
		minkowski()
		{
			cube(size=[13.000, 1.000, 1.000], center=true);
			rotate(a=[0.000, 0.000, 90.000])
			{
				cylinder(h=0.010, r1=1.000, r2=1.000, center=false);
			}
		}
	}
	translate(v=[-3.750, 0.000, 5.000])
	{
		cylinder(h=10.000, r1=1.500, r2=1.500, center=true);
	}
	translate(v=[3.750, 0.000, 5.000])
	{
		cylinder(h=10.000, r1=1.500, r2=1.500, center=true);
	}
	translate(v=[0.000, 0.000, 6.660])
	{
		rotate(a=[0.000, 90.000, 0.000])
		{
			cylinder(h=15.000, r1=1.500, r2=1.500, center=true);
		}
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/TugBoat.scad>


