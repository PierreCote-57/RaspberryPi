$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Deck
difference()
{
	intersection()
	{
		cockpit_mask(8.500);
		translate(v=[27.500, 0.000, 0.000])
		{
			cube(size=[5.000, 2000.000, 2000.000], center=true);
		}
	}
	intersection()
	{
		cockpit_mask(8.500);
		translate(v=[27.500, 0.000, 0.000])
		{
			cube(size=[5.000, 2000.000, 2000.000], center=true);
		}
	}
	translate(v=[0.000, 0.000, 225.000])
	{
		union()
		{
			cube(size=[100.000, 100.000, 200.000], center=true);
			translate(v=[50.000, 0.000, 0.000])
			{
				difference()
				{
					cylinder(h=200.000, r1=50.000, r2=50.000, center=true);
					translate(v=[-200.000, 0.000, 0.000])
					{
						cube(size=[400.000, 400.000, 400.000], center=true);
					}
				}
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


