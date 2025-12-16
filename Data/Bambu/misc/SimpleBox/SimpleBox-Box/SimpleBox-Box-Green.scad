$fs = 1.000;
$fa=1.000;
$fn=36.000;


// SimpleBox-Box/SimpleBox-Box-Green
color([0.000, 1.000, 0.000])
{
	difference()
	{
		union()
		{
			translate(v=[-8.500, 30.550, 20.000])
			{
				rotate(a=[0.000, 90.000, 0.000])
				{
					difference()
					{
						cylinder(7.500, 5.550, 5.550, true);
						cylinder(7.510, 1.850, 1.850, true);
					}
				}
			}
			translate(v=[8.500, 30.550, 20.000])
			{
				rotate(a=[0.000, 90.000, 0.000])
				{
					difference()
					{
						cylinder(8.000, 5.550, 5.550, true);
						cylinder(8.010, 1.850, 1.850, true);
					}
				}
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module OpenScad.BOSL2/gears
use <BOSL2/gears.scad>

// ***** Module OpenScad.BOSL2/std
use <BOSL2/std.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


