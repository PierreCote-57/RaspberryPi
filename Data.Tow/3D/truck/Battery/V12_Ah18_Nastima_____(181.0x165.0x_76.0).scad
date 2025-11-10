$fs = 1.000;
$fa=1.000;
$fn=36.000;


// V12_Ah18_Nastima     (181.0x165.0x 76.0)
union()
{
	translate(v=[0.000, 0.000, 38.000])
	{
		difference()
		{
			cube(size=[181.000, 165.000, 76.000], center=true);
			translate(v=[0.000, 0.000, 1.200])
			{
				cube(size=[178.600, 162.600, 76.000], center=true);
			}
		}
	}
	linear_extrude(height=1.700, center=false, scale=[1.000, 1.000])
	{
		union()
		{
			translate(v=[0.000, 7.000, 0.000])
			{
				text(text="V12_Ah18_Nastima", size=7.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
			}
			translate(v=[0.000, -7.000, 0.000])
			{
				text(text="(181.0x165.0x 76.0)", size=7.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


