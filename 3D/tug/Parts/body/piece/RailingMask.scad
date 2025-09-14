$fs = 2.000;
$fa=2;


// RailingMask
color(c=[1.000, 0.000, 0.000])
{
	translate(v=[-0.100, 0.000, 0.000])
	{
		intersection()
		{
			cockpit_mask(4.000);
			translate(v=[12.500, 0.000, 0.000])
			{
				cube(size=[25.000, 2000.000, 2000.000], center=true);
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


