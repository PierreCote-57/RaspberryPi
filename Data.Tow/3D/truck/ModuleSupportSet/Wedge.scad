$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Wedge
scale(v=[2.500, 10.000, 10.000])
{
	rotate(a=[0.000, -45.000, 0.000])
	{
		intersection()
		{
			rotate(a=[0.000, 45.000, 0.000])
			{
				cube(size=[1.000, 1.000, 1.000], center=true);
			}
			translate(v=[0.000, 0.000, 5.000])
			{
				cube(size=[2000.000, 2000.000, 10.000], center=true);
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


