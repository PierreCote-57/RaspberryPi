$fs = 1.000;
$fa=1.000;
$fn=72.000;


// SpoolWeight-Tube/SpoolWeight-Tube-D54xL50/SpoolWeight-Tube-D54xL50-Yellow
color([1.000, 1.000, 0.000])
{
	difference()
	{
// Union-Yellow
		union()
		{
			translate(v=[0.000, -21.000, -1.500])
			{
				rotate(a=[180.000, 0.000, 0.000])
				{
					linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
					{
						text(text="Ø 54mm", size=6.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
					}
				}
			}
			translate(v=[0.000, 21.000, -1.500])
			{
				rotate(a=[180.000, 0.000, 0.000])
				{
					linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
					{
						text(text="L 50mm", size=6.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
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


