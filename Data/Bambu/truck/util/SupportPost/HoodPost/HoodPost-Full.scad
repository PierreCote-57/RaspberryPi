$fs = 1.000;
$fa=1.000;
$fn=36.000;


// HoodPost/HoodPost-Gray
color([0.502, 0.502, 0.502])
{
// Post-30
	difference()
	{
		translate(v=[0.000, 0.000, -15.000])
		{
			cylinder(30.000, 9.300, 9.300, true);
		}
		translate(v=[0.000, 0.000, -3.000])
		{
			union()
			{
				translate(v=[0.000, 0.000, -1.000])
				{
					color([0.000, 1.000, 0.000])
					{
						translate(v=[0.000, 0.000, 1.125])
						{
							cylinder(2.350, 3.100, 3.100, true, $fn=6);
						}
					}
				}
				translate(v=[0.000, 0.000, 5.000])
				{
					color([1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -5.000])
						{
							cylinder(10.100, 1.600, 1.600, true);
						}
					}
				}
			}
		}
		translate(v=[0.000, 0.000, -27.000])
		{
			union()
			{
				translate(v=[0.000, 0.000, -1.000])
				{
					color([0.000, 1.000, 0.000])
					{
						translate(v=[0.000, 0.000, 1.125])
						{
							cylinder(2.350, 3.100, 3.100, true, $fn=6);
						}
					}
				}
				translate(v=[0.000, 0.000, 5.000])
				{
					color([1.000, 0.000, 0.000])
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


