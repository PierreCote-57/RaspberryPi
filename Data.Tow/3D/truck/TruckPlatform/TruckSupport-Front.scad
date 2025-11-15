$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TruckSupport-Front
difference()
{
	cube(size=[9.000, 35.000, 10.000], center=true);
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
						cylinder(15.100, 3.000, 3.000, true, $fn=6);
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
					translate(v=[0.000, 0.000, -7.500])
					{
						cylinder(15.100, 1.500, 1.500, true);
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
						cylinder(15.100, 3.000, 3.000, true, $fn=6);
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
					translate(v=[0.000, 0.000, -7.500])
					{
						cylinder(15.100, 1.500, 1.500, true);
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
						cylinder(15.100, 3.000, 3.000, true, $fn=6);
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
					translate(v=[0.000, 0.000, -7.500])
					{
						cylinder(15.100, 1.500, 1.500, true);
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


