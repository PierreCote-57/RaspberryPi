$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Shell-2
intersection()
{
// Shell
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
	translate(v=[0.000, 0.000, 375.000])
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


