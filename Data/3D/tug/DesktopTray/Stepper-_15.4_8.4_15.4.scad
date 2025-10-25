$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Stepper-_15.4_8.4_15.4
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
					cylinder(h=0.010, r1=3.000, r2=3.000, center=false);
				}
			}
		}
		union()
		{
			translate(v=[-17.500, -25.000, 3.500])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					linear_extrude(height=2.000, center="false", scale=[1.000, 1.000])
					{
						text(text="15.4", size=7.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
					}
				}
			}
			translate(v=[-17.500, 0.000, 3.500])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					linear_extrude(height=2.000, center="false", scale=[1.000, 1.000])
					{
						text(text="8.4", size=7.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
					}
				}
			}
			translate(v=[-17.500, 25.000, 3.500])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					linear_extrude(height=2.000, center="false", scale=[1.000, 1.000])
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
					cylinder(h=6.000, r1=7.700, r2=7.700, center=true);
				}
				translate(v=[7.700, 0.000, 2.500])
				{
					cube(size=[10.000, 9.700, 6.000], center=true);
				}
				translate(v=[0.000, 0.000, 0.000])
				{
					cylinder(h=4.000, r1=2.567, r2=2.567, center=true);
				}
			}
		}
		translate(v=[0.000, 0.000, 0.000])
		{
			union()
			{
				translate(v=[0.000, 0.000, 2.500])
				{
					cylinder(h=6.000, r1=4.200, r2=4.200, center=true);
				}
				translate(v=[4.200, 0.000, 2.500])
				{
					cube(size=[10.000, 6.200, 6.000], center=true);
				}
				translate(v=[0.000, 0.000, 0.000])
				{
					cylinder(h=4.000, r1=1.400, r2=1.400, center=true);
				}
			}
		}
		translate(v=[0.000, 25.000, 0.000])
		{
			union()
			{
				translate(v=[0.000, 0.000, 2.500])
				{
					cylinder(h=6.000, r1=7.700, r2=7.700, center=true);
				}
				translate(v=[7.700, 0.000, 2.500])
				{
					cube(size=[10.000, 9.700, 6.000], center=true);
				}
				translate(v=[0.000, 0.000, 0.000])
				{
					cylinder(h=4.000, r1=2.567, r2=2.567, center=true);
				}
			}
		}
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


