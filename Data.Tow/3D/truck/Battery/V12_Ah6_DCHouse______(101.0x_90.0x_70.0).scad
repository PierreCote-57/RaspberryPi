$fs = 1.000;
$fa=1.000;
$fn=36.000;


// V12_Ah6_DCHouse      (101.0x 90.0x 70.0)
union()
{
	translate(v=[0.000, 0.000, 35.000])
	{
		difference()
		{
			cube(size=[101.000, 90.000, 70.000], center=true);
			translate(v=[0.000, 0.000, 1.200])
			{
				cube(size=[98.600, 87.600, 70.000], center=true);
			}
		}
	}
	linear_extrude(height=1.700, center=false, scale=[1.000, 1.000])
	{
		union()
		{
			translate(v=[0.000, 7.000, 0.000])
			{
				text(text="V12_Ah6_DCHouse", size=7.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
			}
			translate(v=[0.000, -7.000, 0.000])
			{
				text(text="(101.0x 90.0x 70.0)", size=7.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


