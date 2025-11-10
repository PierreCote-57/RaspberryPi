$fs = 1.000;
$fa=1.000;
$fn=36.000;


// V12_Ah12_Nastima     (151.0x 99.0x 94.0)
union()
{
	translate(v=[0.000, 0.000, 47.000])
	{
		difference()
		{
			cube(size=[151.000, 99.000, 94.000], center=true);
			translate(v=[0.000, 0.000, 1.200])
			{
				cube(size=[148.600, 96.600, 94.000], center=true);
			}
		}
	}
	linear_extrude(height=1.700, center=false, scale=[1.000, 1.000])
	{
		union()
		{
			translate(v=[0.000, 7.000, 0.000])
			{
				text(text="V12_Ah12_Nastima", size=7.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
			}
			translate(v=[0.000, -7.000, 0.000])
			{
				text(text="(151.0x 99.0x 94.0)", size=7.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


