$fs = 1.000;
$fa=1.000;
$fn=36.000;


// DesktopTray-12 VDC
difference()
{
	union()
	{
		translate(v=[0.000, 0.000, 0.000])
		{
			minkowski()
			{
				cube(size=[39.000, 34.000, 10.000], center=true);
				rotate(a=[0.000, 0.000, 90.000])
				{
					cylinder(h=0.010, r1=3.000, r2=3.000, center=false);
				}
			}
		}
		translate(v=[-17.000, 0.000, 3.500])
		{
			rotate(a=[0.000, 0.000, 90.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					linear_extrude(height=2.000, center="false", scale=[1.000, 1.000])
					{
						text(text="12 VDC", size=6.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
					}
				}
			}
		}
	}
	translate(v=[3.000, 9.000, 0.000])
	{
		translate(v=[0.000, 0.000, 6.000])
		{
			cube(size=[30.000, 17.000, 10.000], center=true);
		}
	}
	translate(v=[3.000, -9.000, 0.000])
	{
		translate(v=[0.000, 0.000, 6.000])
		{
			cube(size=[30.000, 17.000, 10.000], center=true);
		}
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


