$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Post-35
difference()
{
	color(c=[0.000, 1.000, 0.000])
	{
		translate(v=[0.000, 0.000, -17.500])
		{
			cylinder(35.000, 9.300, 9.300, true);
		}
	}
	translate(v=[0.000, 0.000, -3.000])
	{
		union()
		{
			translate(v=[0.000, 0.000, -1.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					color(c=[0.000, 1.000, 0.000])
					{
						translate(v=[0.000, 0.000, 1.125])
						{
							cylinder(2.350, 3.100, 3.100, true, $fn=6);
						}
					}
				}
			}
			translate(v=[0.000, 0.000, 5.000])
			{
				color(c=[0.000, 0.000, 1.000])
				{
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -5.000])
						{
							cylinder(10.100, 1.600, 1.600, true);
						}
					}
				}
			}
		}
	}
	translate(v=[0.000, 0.000, -32.000])
	{
		union()
		{
			translate(v=[0.000, 0.000, -1.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					color(c=[0.000, 1.000, 0.000])
					{
						translate(v=[0.000, 0.000, 1.125])
						{
							cylinder(2.350, 3.100, 3.100, true, $fn=6);
						}
					}
				}
			}
			translate(v=[0.000, 0.000, 5.000])
			{
				color(c=[0.000, 0.000, 1.000])
				{
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -5.000])
						{
							cylinder(10.100, 1.600, 1.600, true);
						}
					}
				}
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


