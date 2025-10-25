$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Shell-1
intersection()
{
// Shell
	difference()
	{
		union()
		{
			color(c=[1.000, 1.000, 1.000])
			{
				translate(v=[-0.100, 0.000, 0.000])
				{
					cockpit_empty(5.000);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				intersection()
				{
					difference()
					{
						cockpit_rounded();
						cockpit_mask(7.500);
					}
					translate(v=[27.500, 0.000, 0.000])
					{
						cube(size=[5.000, 2000.000, 2000.000], center=true);
					}
				}
			}
		}
		color(c=[1.000, 0.000, 0.000])
		{
			union()
			{
				color(c=[0.000, 1.000, 0.000])
				{
					translate(v=[27.500, 90.500, 150.000])
					{
						cylinder(20.000, 1.300, 1.300, true);
					}
				}
				color(c=[0.000, 1.000, 0.000])
				{
					translate(v=[27.500, -90.500, 150.000])
					{
						cylinder(20.000, 1.300, 1.300, true);
					}
				}
				color(c=[0.000, 1.000, 0.000])
				{
					translate(v=[27.500, 91.500, 300.000])
					{
						cylinder(20.000, 1.300, 1.300, true);
					}
				}
				color(c=[0.000, 1.000, 0.000])
				{
					translate(v=[27.500, -91.500, 300.000])
					{
						cylinder(20.000, 1.300, 1.300, true);
					}
				}
				color(c=[0.000, 1.000, 0.000])
				{
					translate(v=[27.500, 91.500, 450.000])
					{
						cylinder(20.000, 1.300, 1.300, true);
					}
				}
				color(c=[0.000, 1.000, 0.000])
				{
					translate(v=[27.500, -91.500, 450.000])
					{
						cylinder(20.000, 1.300, 1.300, true);
					}
				}
			}
		}
	}
	translate(v=[0.000, 0.000, 225.000])
	{
		cube(size=[2000.000, 2000.000, 150.000], center=true);
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/TugBoat.scad>


