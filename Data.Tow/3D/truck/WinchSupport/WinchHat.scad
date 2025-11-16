$fs = 1.000;
$fa=1.000;
$fn=36.000;


// WinchHat
color(c=[1.000, 0.000, 0.000])
{
	translate(v=[30.500, 0.000, 0.000])
	{
		difference()
		{
			translate(v=[0.000, 0.000, 12.250])
			{
				cube(size=[20.000, 31.800, 24.500], center=true);
			}
			translate(v=[0.000, 0.000, 9.750])
			{
				cube(size=[40.000, 21.800, 19.600], center=true);
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


