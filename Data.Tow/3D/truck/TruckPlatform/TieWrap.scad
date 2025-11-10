$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TieWrap
union()
{
	color(c=[1.000, 1.000, 1.000])
	{
		intersection()
		{
			scale(v=[0.500, 1.000, 1.000])
			{
				difference()
				{
					cylinder(3.000, 4.000, 4.000, true);
					cylinder(3.100, 3.000, 3.000, true);
				}
			}
			translate(v=[5.000, 0.000, 0.000])
			{
				cube(size=[10.000, 2000.000, 2000.000], center=true);
			}
		}
	}
	color(c=[1.000, 0.000, 0.000])
	{
		translate(v=[0.500, 0.000, 0.000])
		{
			cube(size=[1.000, 2.000, 10.000], center=true);
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


