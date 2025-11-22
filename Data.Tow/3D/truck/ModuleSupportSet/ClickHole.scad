$fs = 1.000;
$fa=1.000;
$fn=36.000;


// ClickHole
color(c=[1.000, 0.000, 0.000])
{
	translate(v=[0.000, 0.000, 0.500])
	{
		cube(size=[7.500, 10.500, 1.100], center=true);
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


