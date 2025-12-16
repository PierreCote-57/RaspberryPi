$fs = 1.000;
$fa=1.000;
$fn=36.000;


// FilamentClip-Green
color([0.000, 1.000, 0.000])
{
	difference()
	{
		union()
		{
			translate(v=[-2.500, 0.000, 0.000])
			{
				difference()
				{
					union()
					{
						translate(v=[7.500, 0.000, 0.000])
						{
							cube(size=[15.000, 5.000, 15.000], center=true);
						}
						cylinder(15.000, 3.125, 3.125, true);
						translate(v=[15.000, 0.000, 0.000])
						{
							cylinder(15.000, 3.125, 3.125, true);
						}
					}
					union()
					{
						translate(v=[15.000, 0.000, 0.000])
						{
							cylinder(15.100, 1.100, 1.100, true);
						}
						translate(v=[0.000, 0.000, 0.000])
						{
							cylinder(15.100, 1.250, 1.250, true);
						}
					}
				}
			}
			union()
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					translate(v=[10.000, 0.000, 0.000])
					{
						cube(size=[20.000, 2.500, 15.000], center=true);
					}
				}
				translate(v=[0.000, 20.000, 0.000])
				{
					cylinder(15.000, 3.125, 3.125, true);
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


