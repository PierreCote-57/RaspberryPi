$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Motor-15_15_15
difference()
{
	translate(v=[0.000, 0.000, 0.000])
	{
		minkowski()
		{
			cube(size=[54.000, 74.000, 10.000], center=true);
			rotate(a=[0.000, 0.000, 90.000])
			{
				cylinder(h=0.010, r1=3.000, r2=3.000, center=false);
			}
		}
	}
	translate(v=[0.000, 25.000, 0.000])
	{
		union()
		{
			translate(v=[0.000, 0.000, 2.500])
			{
				cylinder(h=6.000, r1=8.500, r2=8.500, center=true);
			}
			translate(v=[8.500, 0.000, 2.500])
			{
				cube(size=[10.000, 10.500, 6.000], center=true);
			}
			translate(v=[0.000, 0.000, 0.000])
			{
				cylinder(h=4.000, r1=2.833, r2=2.833, center=true);
			}
		}
	}
	translate(v=[0.000, 0.000, 0.000])
	{
		union()
		{
			translate(v=[0.000, 0.000, 2.500])
			{
				cylinder(h=6.000, r1=8.500, r2=8.500, center=true);
			}
			translate(v=[8.500, 0.000, 2.500])
			{
				cube(size=[10.000, 10.500, 6.000], center=true);
			}
			translate(v=[0.000, 0.000, 0.000])
			{
				cylinder(h=4.000, r1=2.833, r2=2.833, center=true);
			}
		}
	}
	translate(v=[0.000, -25.000, 0.000])
	{
		union()
		{
			translate(v=[0.000, 0.000, 2.500])
			{
				cylinder(h=6.000, r1=8.500, r2=8.500, center=true);
			}
			translate(v=[8.500, 0.000, 2.500])
			{
				cube(size=[10.000, 10.500, 6.000], center=true);
			}
			translate(v=[0.000, 0.000, 0.000])
			{
				cylinder(h=4.000, r1=2.833, r2=2.833, center=true);
			}
		}
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


