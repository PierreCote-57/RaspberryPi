$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Stepper-_15.4_15.4_15.4
difference()
{
	union()
	{
		translate(v=[0.000, 0.000, 0.000])
		{
			minkowski()
			{
				cube(size=[54.000, 74.000, 10.000], center=true);
				rotate(a=[0.000, 0.000, 90.000])
				{
					cylinder(0.010, 3.000, 3.000, false);
				}
			}
		}
		union()
		{
			translate(v=[-17.500, -25.000, 3.500])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					linear_extrude(height=2.000, center=false, scale=[1.000, 1.000])
					{
						text(text="15.4", size=7.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
					}
				}
			}
			translate(v=[-17.500, 0.000, 3.500])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					linear_extrude(height=2.000, center=false, scale=[1.000, 1.000])
					{
						text(text="15.4", size=7.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
					}
				}
			}
			translate(v=[-17.500, 25.000, 3.500])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					linear_extrude(height=2.000, center=false, scale=[1.000, 1.000])
					{
						text(text="15.4", size=7.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
					}
				}
			}
		}
	}
	union()
	{
		translate(v=[0.000, -25.000, 0.000])
		{
			union()
			{
				translate(v=[0.000, 0.000, 2.500])
				{
					cylinder(6.000, 7.700, 7.700, true);
				}
				translate(v=[7.700, 0.000, 2.500])
				{
					cube(size=[10.000, 9.700, 6.000], center=true);
				}
				translate(v=[0.000, 0.000, 0.000])
				{
					cylinder(4.000, 2.567, 2.567, true);
				}
			}
		}
		translate(v=[0.000, 0.000, 0.000])
		{
			union()
			{
				translate(v=[0.000, 0.000, 2.500])
				{
					cylinder(6.000, 7.700, 7.700, true);
				}
				translate(v=[7.700, 0.000, 2.500])
				{
					cube(size=[10.000, 9.700, 6.000], center=true);
				}
				translate(v=[0.000, 0.000, 0.000])
				{
					cylinder(4.000, 2.567, 2.567, true);
				}
			}
		}
		translate(v=[0.000, 25.000, 0.000])
		{
			union()
			{
				translate(v=[0.000, 0.000, 2.500])
				{
					cylinder(6.000, 7.700, 7.700, true);
				}
				translate(v=[7.700, 0.000, 2.500])
				{
					cube(size=[10.000, 9.700, 6.000], center=true);
				}
				translate(v=[0.000, 0.000, 0.000])
				{
					cylinder(4.000, 2.567, 2.567, true);
				}
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


