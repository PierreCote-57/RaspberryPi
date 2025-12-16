$fs = 1.000;
$fa=1.000;
$fn=36.000;


// SimpleBox-Cover/SimpleBox-Cover-Blue
color([0.000, 0.000, 1.000])
{
	difference()
	{
// CoverInsert
		intersection()
		{
			difference()
			{
				translate(v=[0.000, 0.000, 12.500])
				{
					translate(v=[0.000, 0.000, 0.000])
					{
						minkowski()
						{
							cube(size=[94.000, 44.000, 19.000], center=true);
							sphere(3.000);
						}
					}
				}
				translate(v=[0.000, 0.000, 12.500])
				{
					translate(v=[0.000, 0.000, 0.000])
					{
						minkowski()
						{
							cube(size=[90.000, 40.000, 15.000], center=true);
							sphere(3.000);
						}
					}
				}
			}
			translate(v=[0.000, 0.000, 35.000])
			{
				cube(size=[2000.000, 2000.000, 30.000], center=true);
			}
		}
		translate(v=[0.000, 0.000, 25.000])
		{
			translate(v=[-45.000, 20.000, 0.000])
			{
				linear_extrude(height=0.200, center=false, scale=[1.000, 1.000])
				{
					text(text="UpperLeft", size=5.000, , font="Arial:style=Regular", , halign="left", , valign="top");
				}
			}
		}
		translate(v=[0.000, 0.000, 25.000])
		{
			translate(v=[0.000, 0.000, 0.000])
			{
				linear_extrude(height=0.200, center=false, scale=[1.000, 1.000])
				{
					text(text="Center", size=10.000, , font="Arial:style=Bold", , halign="center", , valign="center");
				}
			}
		}
		translate(v=[0.000, 0.000, 25.000])
		{
			translate(v=[45.000, -20.000, 0.000])
			{
				linear_extrude(height=0.200, center=false, scale=[1.000, 1.000])
				{
					text(text="BottomRight", size=5.000, , font="Arial:style=Italic", , halign="right", , valign="bottom");
				}
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module OpenScad.BOSL2/gears
use <BOSL2/gears.scad>

// ***** Module OpenScad.BOSL2/std
use <BOSL2/std.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


