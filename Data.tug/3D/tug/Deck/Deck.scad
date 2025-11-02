$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Deck
difference()
{
	intersection()
	{
		cockpit_mask(5.500);
		translate(v=[27.500, 0.000, 0.000])
		{
			cube(size=[5.000, 2000.000, 2000.000], center=true);
		}
	}
	translate(v=[0.000, 0.000, 225.000])
	{
		translate(v=[0.000, 0.000, 0.000])
		{
			minkowski()
			{
				cube(size=[100.000, 80.000, 180.000], center=true);
				rotate(a=[0.000, 90.000, 0.000])
				{
					cylinder(h=0.010, r1=10.000, r2=10.000, center=false);
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


