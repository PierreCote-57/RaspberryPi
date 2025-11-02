$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Servo_2040
difference()
{
	union()
	{
		translate(v=[0.000, 0.000, -3.000])
		{
			cube(size=[72.000, 52.000, 10.000], center=true);
		}
		color(c=[1.000, 0.000, 0.000])
		{
			linear_extrude(height=2.650, center=false, scale=[1.000, 1.000])
			{
				text(text="Servo 2040", size=9.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
			}
		}
	}
	translate(v=[28.300, 18.300, 0.010])
	{
		union()
		{
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[0.000, 0.000, 1.000])
				{
					cylinder(2.100, 3.000, 3.000, true, $fn=6);
				}
			}
			translate(v=[0.000, 0.000, -2.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					cylinder(6.000, 1.500, 1.500, true);
				}
			}
		}
	}
	translate(v=[-28.300, 18.300, 0.010])
	{
		union()
		{
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[0.000, 0.000, 1.000])
				{
					cylinder(2.100, 3.000, 3.000, true, $fn=6);
				}
			}
			translate(v=[0.000, 0.000, -2.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					cylinder(6.000, 1.500, 1.500, true);
				}
			}
		}
	}
	translate(v=[28.300, -18.300, 0.010])
	{
		union()
		{
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[0.000, 0.000, 1.000])
				{
					cylinder(2.100, 3.000, 3.000, true, $fn=6);
				}
			}
			translate(v=[0.000, 0.000, -2.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					cylinder(6.000, 1.500, 1.500, true);
				}
			}
		}
	}
	translate(v=[-28.300, -18.300, 0.010])
	{
		union()
		{
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[0.000, 0.000, 1.000])
				{
					cylinder(2.100, 3.000, 3.000, true, $fn=6);
				}
			}
			translate(v=[0.000, 0.000, -2.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					cylinder(6.000, 1.500, 1.500, true);
				}
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


