$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TextTest
union()
{
	color(c=[1.000, 0.000, 0.000])
	{
		cube(size=[80.000, 50.000, 1.000], center=true);
	}
	color(c=[1.000, 1.000, 1.000])
	{
		translate(v=[0.000, 0.000, 0.000])
		{
			linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
			{
				text(text="Cote Towing", size=12.000, , font="Brush Script MT:style=Regular", , halign="center", , valign="center");
			}
		}
	}
	color(c=[1.000, 1.000, 1.000])
	{
		translate(v=[0.000, -15.000, 0.000])
		{
			linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
			{
				text(text="Campbell River, BC", size=3.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


