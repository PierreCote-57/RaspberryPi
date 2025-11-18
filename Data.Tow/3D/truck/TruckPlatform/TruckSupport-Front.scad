$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TruckSupport-Front
difference()
{
	cube(size=[9.200, 35.000, 10.000], center=true);
	union()
	{
		translate(v=[0.000, 12.500, 0.000])
		{
			union()
			{
				color(c=[0.000, 1.000, 0.000])
				{
					translate(v=[0.000, 0.000, 7.500])
					{
						cylinder(15.100, 3.100, 3.100, true, $fn=6);
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
					translate(v=[0.000, 0.000, -7.500])
					{
						cylinder(15.100, 1.600, 1.600, true);
					}
				}
			}
		}
		translate(v=[0.000, -12.500, 0.000])
		{
			union()
			{
				color(c=[0.000, 1.000, 0.000])
				{
					translate(v=[0.000, 0.000, 7.500])
					{
						cylinder(15.100, 3.100, 3.100, true, $fn=6);
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
					translate(v=[0.000, 0.000, -7.500])
					{
						cylinder(15.100, 1.600, 1.600, true);
					}
				}
			}
		}
		rotate(a=[0.000, 180.000, 0.000])
		{
			union()
			{
				color(c=[0.000, 1.000, 0.000])
				{
					translate(v=[0.000, 0.000, 7.500])
					{
						cylinder(15.100, 3.100, 3.100, true, $fn=6);
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
					translate(v=[0.000, 0.000, -7.500])
					{
						cylinder(15.100, 1.600, 1.600, true);
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


