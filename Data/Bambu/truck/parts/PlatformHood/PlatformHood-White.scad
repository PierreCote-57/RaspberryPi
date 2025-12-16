$fs = 1.000;
$fa=1.000;
$fn=36.000;


// PlatformHood-White
color([1.000, 1.000, 1.000])
{
	difference()
	{
		translate(v=[0.000, 0.000, 2.000])
		{
			union()
			{
				translate(v=[-25.000, -45.000, 0.000])
				{
					translate(v=[0.000, 0.000, -0.500])
					{
						linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
						{
							text(text="Motor", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
						}
					}
				}
				translate(v=[-20.000, 40.000, 0.000])
				{
					translate(v=[0.000, 0.000, -0.500])
					{
						linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
						{
							text(text="Servo", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
						}
					}
				}
				translate(v=[-40.000, -5.000, 0.000])
				{
					rotate(a=[0.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -0.500])
						{
							linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
							{
								text(text=" ", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
							}
						}
					}
				}
				translate(v=[10.000, -5.000, 0.000])
				{
					rotate(a=[0.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -0.500])
						{
							linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
							{
								text(text=" ", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
							}
						}
					}
				}
				translate(v=[40.000, -52.500, 0.000])
				{
					rotate(a=[0.000, 0.000, -45.000])
					{
						translate(v=[0.000, 0.000, -0.500])
						{
							linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
							{
								text(text="IR", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
							}
						}
					}
				}
				translate(v=[40.000, 52.500, 0.000])
				{
					rotate(a=[0.000, 0.000, 45.000])
					{
						translate(v=[0.000, 0.000, -0.500])
						{
							linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
							{
								text(text="IR", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
							}
						}
					}
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


