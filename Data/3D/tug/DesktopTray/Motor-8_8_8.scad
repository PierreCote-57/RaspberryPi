$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Motor-8_8_8
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
	translate(v=[0.000, 30.000, 0.000])
	{
		union()
		{
			translate(v=[0.000, 0.000, 2.500])
			{
				cylinder(h=6.000, r1=5.000, r2=5.000, center=true);
			}
			translate(v=[5.000, 0.000, 2.500])
			{
				cube(size=[10.000, 7.000, 6.000], center=true);
			}
			translate(v=[0.000, 0.000, 0.000])
			{
				cylinder(h=4.000, r1=1.667, r2=1.667, center=true);
			}
		}
	}
	translate(v=[0.000, 0.000, 0.000])
	{
		union()
		{
			translate(v=[0.000, 0.000, 2.500])
			{
				cylinder(h=6.000, r1=5.000, r2=5.000, center=true);
			}
			translate(v=[5.000, 0.000, 2.500])
			{
				cube(size=[10.000, 7.000, 6.000], center=true);
			}
			translate(v=[0.000, 0.000, 0.000])
			{
				cylinder(h=4.000, r1=1.667, r2=1.667, center=true);
			}
		}
	}
	translate(v=[0.000, -30.000, 0.000])
	{
		union()
		{
			translate(v=[0.000, 0.000, 2.500])
			{
				cylinder(h=6.000, r1=5.000, r2=5.000, center=true);
			}
			translate(v=[5.000, 0.000, 2.500])
			{
				cube(size=[10.000, 7.000, 6.000], center=true);
			}
			translate(v=[0.000, 0.000, 0.000])
			{
				cylinder(h=4.000, r1=1.667, r2=1.667, center=true);
			}
		}
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


