$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Shell
union()
{
	color(c=[1.000, 1.000, 1.000])
	{
		translate(v=[-0.100, 0.000, 0.000])
		{
			cockpit_empty(8.000);
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


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/TugBoat.scad>


