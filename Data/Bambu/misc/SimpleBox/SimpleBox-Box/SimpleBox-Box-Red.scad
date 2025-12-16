$fs = 1.000;
$fa=1.000;
$fn=36.000;


// SimpleBox-Box/SimpleBox-Box-Red
color([1.000, 0.000, 0.000])
{
	difference()
	{
		translate(v=[0.000, 10.000, 0.000])
		{
			linear_extrude(height=0.200, center=false, scale=[1.000, 1.000])
			{
				text(text="Red", size=5.000, , font="Arial:style=Regular", , halign="center", , valign="bottom");
			}
		}
		translate(v=[50.000, 0.000, 0.000])
		{
			linear_extrude(height=0.200, center=false, scale=[1.000, 1.000])
			{
				text(text="Green", size=5.000, , font="Arial:style=Regular", , halign="center", , valign="top");
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


