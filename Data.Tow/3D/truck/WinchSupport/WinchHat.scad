$fs = 1.000;
$fa=1.000;
$fn=36.000;


// WinchHat
color(c=[1.000, 0.000, 0.000])
{
	translate(v=[43.000, 0.000, 0.000])
	{
		difference()
		{
			translate(v=[0.000, 0.000, 10.350])
			{
				cube(size=[18.000, 16.600, 20.700], center=true);
			}
			translate(v=[0.000, 0.000, 9.750])
			{
				cube(size=[36.000, 14.400, 19.600], center=true);
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


