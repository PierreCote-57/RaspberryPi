$fs = 2.000;
$fa=2.000;
$fn=10.000;


intersection()
{
// ShellRaw
	union()
	{
		color(c=[1.000, 1.000, 1.000])
		{
			translate(v=[-0.100, 0.000, 0.000])
			{
				difference()
				{
					cockpit_rounded();
					cockpit_mask(8.000);
				}
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			intersection()
			{
				difference()
				{
					cockpit_rounded();
					cockpit_mask(12.000);
				}
				translate(v=[29.000, 0.000, 0.000])
				{
					cube(size=[8.000, 2000.000, 2000.000], center=true);
				}
			}
		}
	}
	translate(v=[0.000, 95.050, 0.000])
	{
		cube(size=[2000.000, 189.900, 2000.000], center=true);
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/TugBoat.scad>


