$fs = 1.000;
$fa=1.000;
$fn=36.000;


// NutSample
difference()
{
	union()
	{
		translate(v=[30.000, 15.000, 1.000])
		{
			cube(size=[60.000, 30.000, 2.000], center=true);
		}
		translate(v=[25.000, 5.000, 2.000])
		{
			linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
			{
				text(text="M2_5", size=6.000, , font="LiberationSans:style=Regular", , halign="left", , valign="center");
			}
		}
		translate(v=[25.000, 15.000, 2.000])
		{
			linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
			{
				text(text="SAE4_40", size=6.000, , font="LiberationSans:style=Regular", , halign="left", , valign="center");
			}
		}
		translate(v=[25.000, 25.000, 2.000])
		{
			linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
			{
				text(text="SAE6_32", size=6.000, , font="LiberationSans:style=Regular", , halign="left", , valign="center");
			}
		}
	}
	union()
	{
		translate(v=[10.000, 5.000, 0.000])
		{
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[0.000, 0.000, 1.000])
				{
					cylinder(2.100, 3.000, 3.000, true, $fn=6);
				}
			}
		}
		translate(v=[20.000, 5.000, 2.500])
		{
			color(c=[1.000, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, -1.500])
				{
					cylinder(3.100, 1.500, 1.500, true);
				}
			}
		}
		translate(v=[10.000, 15.000, 0.000])
		{
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[0.000, 0.000, 1.000])
				{
					cylinder(2.100, 4.000, 4.000, true, $fn=6);
				}
			}
		}
		translate(v=[20.000, 15.000, 2.500])
		{
			color(c=[1.000, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, -1.500])
				{
					cylinder(3.100, 1.750, 1.750, true);
				}
			}
		}
		translate(v=[10.000, 25.000, 0.000])
		{
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[0.000, 0.000, 1.500])
				{
					cylinder(3.100, 4.800, 4.800, true, $fn=6);
				}
			}
		}
		translate(v=[20.000, 25.000, 2.500])
		{
			color(c=[1.000, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, -1.500])
				{
					cylinder(3.100, 2.000, 2.000, true);
				}
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


