$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TrackingBracket
union()
{
	translate(v=[20.000, 2.000, 0.000])
	{
		difference()
		{
			translate(v=[0.000, 0.000, -30.000])
			{
				cube(size=[10.000, 4.000, 60.000], center=true);
			}
			translate(v=[0.000, 0.000, -42.000])
			{
				rotate(a=[90.000, 0.000, 180.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cylinder(4.100, 3.100, 3.100, true, $fn=6);
							}
						}
						color(c=[1.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -2.000])
							{
								cylinder(4.100, 1.600, 1.600, true);
							}
						}
					}
				}
			}
			translate(v=[0.000, 0.000, -54.000])
			{
				rotate(a=[90.000, 0.000, 180.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cylinder(4.100, 3.100, 3.100, true, $fn=6);
							}
						}
						color(c=[1.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -2.000])
							{
								cylinder(4.100, 1.600, 1.600, true);
							}
						}
					}
				}
			}
		}
	}
	translate(v=[45.000, 2.000, 1.000])
	{
		cube(size=[90.000, 4.000, 2.000], center=true);
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


