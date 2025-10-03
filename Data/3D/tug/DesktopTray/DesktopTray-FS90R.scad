$fs = 1.000;
$fa=1.000;
$fn=36.000;


// DesktopTray-FS90R
difference()
{
	translate(v=[0.000, 0.000, 0.000])
	{
		minkowski()
		{
			cube(size=[69.000, 89.000, 10.000], center=true);
			rotate(a=[0.000, 0.000, 90.000])
			{
				cylinder(h=0.010, r1=3.000, r2=3.000, center=false);
			}
		}
	}
	translate(v=[0.000, 30.000, 0.000])
	{
		union()
		{
			translate(v=[-5.000, 0.000, 0.000])
			{
				cube(size=[22.800, 11.900, 11.000], center=true);
			}
			translate(v=[11.400, 0.000, 0.000])
			{
				cube(size=[10.100, 10.000, 15.000], center=true);
			}
		}
	}
	translate(v=[0.000, 0.000, 0.000])
	{
		union()
		{
			translate(v=[-5.000, 0.000, 0.000])
			{
				cube(size=[22.800, 11.900, 11.000], center=true);
			}
			translate(v=[11.400, 0.000, 0.000])
			{
				cube(size=[10.100, 10.000, 15.000], center=true);
			}
		}
	}
	translate(v=[0.000, -30.000, 0.000])
	{
		union()
		{
			translate(v=[-5.000, 0.000, 0.000])
			{
				cube(size=[22.800, 11.900, 11.000], center=true);
			}
			translate(v=[11.400, 0.000, 0.000])
			{
				cube(size=[10.100, 10.000, 15.000], center=true);
			}
		}
	}
	translate(v=[-28.000, 0.000, 4.000])
	{
		rotate(a=[0.000, 0.000, 90.000])
		{
			color(c=[1.000, 0.000, 0.000])
			{
				linear_extrude(height=2.000, center="false", scale=[1.000, 1.000])
				{
					text(text="FS90R", size=9.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
				}
			}
		}
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


