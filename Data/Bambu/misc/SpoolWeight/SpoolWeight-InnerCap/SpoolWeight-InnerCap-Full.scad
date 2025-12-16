$fs = 1.000;
$fa=1.000;
$fn=72.000;


// SpoolWeight-InnerCap/SpoolWeight-InnerCap-Blue
color([0.000, 0.000, 1.000])
{
	difference()
	{
		union()
		{
			difference()
			{
				difference()
				{
					translate(v=[0.000, 0.000, -2.000])
					{
						trapezoid_thread(length=5.0, pitchRadius=22.5, threadHeightToPitch=0.5, profileRatio=0.6, threadAngle=170.0, clearance=0.15, backlash=0.1, stepsPerTurn=36.0, pitch=2.0);
					}
					translate(v=[0.000, 0.000, -24.750])
					{
						cube(size=[49.500, 49.500, 49.500], center=true);
					}
				}
				difference()
				{
					union()
					{
						difference()
						{
							cylinder(100.000, 15.000, 15.000, true);
							cylinder(100.010, 14.000, 14.000, true);
						}
						difference()
						{
							cylinder(100.000, 17.000, 17.000, true);
							cylinder(100.010, 16.000, 16.000, true);
						}
						difference()
						{
							cylinder(100.000, 19.000, 19.000, true);
							cylinder(100.010, 18.000, 18.000, true);
						}
					}
					union()
					{
						rotate(a=[0.000, 0.000, 0.000])
						{
							cube(size=[45.000, 2.000, 100.000], center=true);
						}
						rotate(a=[0.000, 0.000, 45.000])
						{
							cube(size=[45.000, 2.000, 100.000], center=true);
						}
						rotate(a=[0.000, 0.000, 90.000])
						{
							cube(size=[45.000, 2.000, 100.000], center=true);
						}
						rotate(a=[0.000, 0.000, 135.000])
						{
							cube(size=[45.000, 2.000, 100.000], center=true);
						}
					}
				}
				cylinder(3.000, 20.000, 20.000, true);
			}
			translate(v=[0.000, 0.000, 1.500])
			{
				cube(size=[40.000, 3.000, 3.000], center=true);
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


