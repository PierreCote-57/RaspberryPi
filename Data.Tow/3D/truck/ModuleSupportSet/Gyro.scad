$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Gyro
union()
{
	translate(v=[2.500, 2.500, 0.000])
	{
		union()
		{
			translate(v=[0.000, 0.000, 2.000])
			{
				cylinder(4.100, 1.500, 1.500, true);
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[0.000, 0.000, 1.000])
				{
					cylinder(2.100, 3.000, 3.000, true, $fn=6);
				}
			}
		}
	}
	translate(v=[2.500, 17.500, 0.000])
	{
		union()
		{
			translate(v=[0.000, 0.000, 2.000])
			{
				cylinder(4.100, 1.500, 1.500, true);
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[0.000, 0.000, 1.000])
				{
					cylinder(2.100, 3.000, 3.000, true, $fn=6);
				}
			}
		}
	}
	translate(v=[17.500, 2.500, 0.000])
	{
		union()
		{
			translate(v=[0.000, 0.000, 2.000])
			{
				cylinder(4.100, 1.500, 1.500, true);
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[0.000, 0.000, 1.000])
				{
					cylinder(2.100, 3.000, 3.000, true, $fn=6);
				}
			}
		}
	}
	translate(v=[17.500, 17.500, 0.000])
	{
		union()
		{
			translate(v=[0.000, 0.000, 2.000])
			{
				cylinder(4.100, 1.500, 1.500, true);
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[0.000, 0.000, 1.000])
				{
					cylinder(2.100, 3.000, 3.000, true, $fn=6);
				}
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


