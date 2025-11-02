$fs = 1.000;
$fa=1.000;
$fn=36.000;


// DesktopTray-Water
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
		translate(v=[-22.500, 0.000, 3.500])
		{
			rotate(a=[0.000, 0.000, 90.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					linear_extrude(height=2.000, center=false, scale=[1.000, 1.000])
					{
						text(text="Water Pump", size=8.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
					}
				}
			}
		}
	}
	translate(v=[5.000, -10.000, 5.000])
	{
		cube(size=[40.000, 10.500, 10.000], center=true);
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


