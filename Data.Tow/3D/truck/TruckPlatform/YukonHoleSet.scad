$fs = 1.000;
$fa=1.000;
$fn=36.000;


// YukonHoleSet
translate(v=[300.000, 0.000, 0.000])
{
	rotate(a=[0.000, 0.000, -45.000])
	{
		union()
		{
			translate(v=[30.500, 39.000, 0.000])
			{
				color(c=[1.000, 0.000, 1.000])
				{
					cylinder(20.000, 1.350, 1.350, true);
				}
			}
			translate(v=[30.500, -39.000, 0.000])
			{
				color(c=[1.000, 0.000, 1.000])
				{
					cylinder(20.000, 1.350, 1.350, true);
				}
			}
			translate(v=[-30.500, 39.000, 0.000])
			{
				color(c=[1.000, 0.000, 1.000])
				{
					cylinder(20.000, 1.350, 1.350, true);
				}
			}
			translate(v=[-30.500, -39.000, 0.000])
			{
				color(c=[1.000, 0.000, 1.000])
				{
					cylinder(20.000, 1.350, 1.350, true);
				}
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


