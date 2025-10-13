$fs = 1.000;
$fa=1.000;
$fn=36.000;


// DesktopTray-Encoder
intersection()
{
	intersection()
	{
		rotate(a=[0.000, -20.000, 0.000])
		{
			union()
			{
				scale(v=[1.000, 1.000, 3.000])
				{
					translate(v=[0.000, 0.000, 0.000])
					{
						minkowski()
						{
							cube(size=[34.000, 64.000, 10.000], center=true);
							rotate(a=[0.000, 0.000, 90.000])
							{
								cylinder(h=0.010, r1=3.000, r2=3.000, center=false);
							}
						}
					}
				}
				translate(v=[5.000, 21.000, 0.000])
				{
					translate(v=[-10.000, 0.000, 20.000])
					{
						difference()
						{
							cube(size=[10.000, 16.000, 15.000], center=true);
							translate(v=[0.000, 0.000, 13.000])
							{
								cube(size=[12.000, 12.000, 30.000], center=true);
							}
						}
					}
				}
				translate(v=[5.000, 0.000, 0.000])
				{
					translate(v=[-10.000, 0.000, 20.000])
					{
						difference()
						{
							cube(size=[10.000, 16.000, 15.000], center=true);
							translate(v=[0.000, 0.000, 13.000])
							{
								cube(size=[12.000, 12.000, 30.000], center=true);
							}
						}
					}
				}
				translate(v=[5.000, -21.000, 0.000])
				{
					translate(v=[-10.000, 0.000, 20.000])
					{
						difference()
						{
							cube(size=[10.000, 16.000, 15.000], center=true);
							translate(v=[0.000, 0.000, 13.000])
							{
								cube(size=[12.000, 12.000, 30.000], center=true);
							}
						}
					}
				}
				translate(v=[-15.500, 0.000, 13.500])
				{
					rotate(a=[0.000, 0.000, 90.000])
					{
						color(c=[1.000, 0.000, 0.000])
						{
							linear_extrude(height=2.000, center="false", scale=[1.000, 1.000])
							{
								text(text="Encoder servo", size=8.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
							}
						}
					}
				}
			}
		}
		translate(v=[0.000, 0.000, 30.000])
		{
			cube(size=[2000.000, 2000.000, 60.000], center=true);
		}
	}
	translate(v=[-7.500, 0.000, 0.000])
	{
		cube(size=[45.000, 2000.000, 2000.000], center=true);
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


