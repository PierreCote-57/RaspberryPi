$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Relay
difference()
{
	union()
	{
		translate(v=[0.000, 0.000, -3.000])
		{
			cube(size=[154.000, 72.000, 10.000], center=true);
		}
		color(c=[1.000, 0.000, 0.000])
		{
			linear_extrude(height=2.650, center="false", scale=[1.000, 1.000])
			{
				text(text="Relay", size=9.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
			}
		}
	}
	translate(v=[64.300, 23.300, 0.010])
	{
		union()
		{
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[0.000, 0.000, 1.000])
				{
					cylinder(h=2.100, r1=3.000, r2=3.000, center=true, $fn=6);
				}
			}
			translate(v=[0.000, 0.000, -2.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					cylinder(h=6.000, r1=1.500, r2=1.500, center=true);
				}
			}
		}
	}
	translate(v=[-64.300, 23.300, 0.010])
	{
		union()
		{
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[0.000, 0.000, 1.000])
				{
					cylinder(h=2.100, r1=3.000, r2=3.000, center=true, $fn=6);
				}
			}
			translate(v=[0.000, 0.000, -2.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					cylinder(h=6.000, r1=1.500, r2=1.500, center=true);
				}
			}
		}
	}
	translate(v=[64.300, -23.300, 0.010])
	{
		union()
		{
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[0.000, 0.000, 1.000])
				{
					cylinder(h=2.100, r1=3.000, r2=3.000, center=true, $fn=6);
				}
			}
			translate(v=[0.000, 0.000, -2.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					cylinder(h=6.000, r1=1.500, r2=1.500, center=true);
				}
			}
		}
	}
	translate(v=[-64.300, -23.300, 0.010])
	{
		union()
		{
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[0.000, 0.000, 1.000])
				{
					cylinder(h=2.100, r1=3.000, r2=3.000, center=true, $fn=6);
				}
			}
			translate(v=[0.000, 0.000, -2.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					cylinder(h=6.000, r1=1.500, r2=1.500, center=true);
				}
			}
		}
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


