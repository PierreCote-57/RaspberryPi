$fs = 1.000;
$fa=1.000;
$fn=36.000;


// PiHoleSet
translate(v=[198.000, -55.000, 0.000])
{
	rotate(a=[0.000, 0.000, 90.000])
	{
		union()
		{
			translate(v=[3.500, 24.500, 0.000])
			{
				color(c=[1.000, 0.000, 1.000])
				{
					cylinder(20.000, 1.350, 1.350, true);
				}
			}
			translate(v=[3.500, -24.500, 0.000])
			{
				color(c=[1.000, 0.000, 1.000])
				{
					cylinder(20.000, 1.350, 1.350, true);
				}
			}
			translate(v=[61.500, 24.500, 0.000])
			{
				color(c=[1.000, 0.000, 1.000])
				{
					cylinder(20.000, 1.350, 1.350, true);
				}
			}
			translate(v=[61.500, -24.500, 0.000])
			{
				color(c=[1.000, 0.000, 1.000])
				{
					cylinder(20.000, 1.350, 1.350, true);
				}
			}
			translate(v=[81.500, 24.500, 0.000])
			{
				color(c=[1.000, 0.000, 1.000])
				{
					cylinder(20.000, 1.350, 1.350, true);
				}
			}
			translate(v=[81.500, -24.500, 0.000])
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


