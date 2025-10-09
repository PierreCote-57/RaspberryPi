$fs = 1.000;
$fa=1.000;
$fn=36.000;


// DesktopTray-MG996R
difference()
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
	translate(v=[0.000, 22.000, 0.000])
	{
		union()
		{
			translate(v=[-5.000, 0.000, 0.000])
			{
				cube(size=[42.000, 21.000, 11.000], center=true);
			}
			translate(v=[21.000, 0.000, 0.000])
			{
				cube(size=[10.100, 10.000, 30.000], center=true);
			}
		}
	}
	translate(v=[0.000, -22.000, 0.000])
	{
		union()
		{
			translate(v=[-5.000, 0.000, 0.000])
			{
				cube(size=[42.000, 21.000, 11.000], center=true);
			}
			translate(v=[21.000, 0.000, 0.000])
			{
				cube(size=[10.100, 10.000, 30.000], center=true);
			}
		}
	}
	translate(v=[-23.000, 0.000, 1.500])
	{
		rotate(a=[0.000, 0.000, 90.000])
		{
			color(c=[1.000, 0.000, 0.000])
			{
				linear_extrude(height=2.000, center="false", scale=[1.000, 1.000])
				{
					text(text="MG996R", size=9.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
				}
			}
		}
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


