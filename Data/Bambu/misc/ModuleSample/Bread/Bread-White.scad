$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Bread/Bread-White
color([1.000, 1.000, 1.000])
{
	difference()
	{
		union()
		{
			translate(v=[0.000, 0.000, 3.000])
			{
				union()
				{
					cube(size=[27.000, 12.000, 1.000], center=true);
					cube(size=[21.000, 18.000, 1.000], center=true);
				}
			}
			translate(v=[0.000, 8.500, 0.000])
			{
				translate(v=[0.000, 0.000, 6.000])
				{
					cube(size=[21.000, 1.000, 5.000], center=true);
				}
			}
			translate(v=[0.000, -8.500, 0.000])
			{
				translate(v=[0.000, 0.000, 6.000])
				{
					cube(size=[21.000, 1.000, 5.000], center=true);
				}
			}
		}
		translate(v=[0.000, 0.000, 2.600])
		{
			union()
			{
				difference()
				{
					translate(v=[0.000, 0.000, 0.000])
					{
						minkowski()
						{
							cube(size=[27.000, 17.000, 0.200], center=true);
							rotate(a=[0.000, 0.000, 90.000])
							{
								cylinder(0.010, 3.000, 3.000, false);
							}
						}
					}
					translate(v=[0.000, 0.000, 0.000])
					{
						minkowski()
						{
							cube(size=[25.500, 15.500, 0.300], center=true);
							rotate(a=[0.000, 0.000, 90.000])
							{
								cylinder(0.010, 3.000, 3.000, false);
							}
						}
					}
				}
				translate(v=[0.000, 0.000, 1.200])
				{
					translate(v=[0.000, 0.000, -0.100])
					{
						linear_extrude(height=0.200, center=false, scale=[1.000, 1.000])
						{
							text(text=" ", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
						}
					}
				}
			}
		}
		cube(size=[50.000, 40.000, 5.000], center=true);
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


