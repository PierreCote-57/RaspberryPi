$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TruckSupport
union()
{
	translate(v=[0.000, 0.000, 2.500])
	{
		cube(size=[50.000, 100.000, 5.000], center=true);
	}
	translate(v=[0.000, -30.000, 0.000])
	{
		rotate(a=[0.000, 0.000, 90.000])
		{
			difference()
			{
				translate(v=[0.000, 0.000, 27.500])
				{
					cube(size=[5.000, 40.000, 55.000], center=true);
				}
				translate(v=[0.000, -12.500, 0.000])
				{
					translate(v=[0.000, 0.000, 52.500])
					{
						cube(size=[5.500, 7.700, 5.500], center=true);
					}
				}
				translate(v=[0.000, 12.500, 0.000])
				{
					translate(v=[0.000, 0.000, 52.500])
					{
						cube(size=[5.500, 7.700, 5.500], center=true);
					}
				}
			}
		}
	}
	translate(v=[0.000, 30.000, 0.000])
	{
		rotate(a=[0.000, 0.000, 90.000])
		{
			difference()
			{
				translate(v=[0.000, 0.000, 27.500])
				{
					cube(size=[5.000, 40.000, 55.000], center=true);
				}
				translate(v=[0.000, -12.500, 0.000])
				{
					translate(v=[0.000, 0.000, 52.500])
					{
						cube(size=[5.500, 7.700, 5.500], center=true);
					}
				}
				translate(v=[0.000, 12.500, 0.000])
				{
					translate(v=[0.000, 0.000, 52.500])
					{
						cube(size=[5.500, 7.700, 5.500], center=true);
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


