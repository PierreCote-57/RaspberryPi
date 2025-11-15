$fs = 1.000;
$fa=1.000;
$fn=36.000;


// NutSlot-M2_5
union()
{
	color(c=[0.000, 0.000, 1.000])
	{
		cube(size=[20.000, 3.000, 5.000], center=true);
	}
	translate(v=[10.000, 0.000, 2.500])
	{
		color(c=[0.000, 1.000, 0.000])
		{
			color(c=[1.000, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, -2.500])
				{
					cylinder(5.100, 1.500, 1.500, true);
				}
			}
		}
	}
	translate(v=[-10.000, 0.000, 2.500])
	{
		color(c=[0.000, 1.000, 0.000])
		{
			color(c=[1.000, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, -2.500])
				{
					cylinder(5.100, 1.500, 1.500, true);
				}
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


