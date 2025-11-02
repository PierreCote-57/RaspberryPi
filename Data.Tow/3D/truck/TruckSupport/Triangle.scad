$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Triangle
scale(v=[10.000, 20.000, 30.000])
{
	translate(v=[0.000, 0.000, 0.500])
	{
		difference()
		{
			cube(size=[1.000, 1.000, 1.000], center=true);
			rotate(a=[0.000, 45.000, 0.000])
			{
				translate(v=[0.000, 0.000, 2.500])
				{
					cube(size=[5.000, 5.000, 5.000], center=true);
				}
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


