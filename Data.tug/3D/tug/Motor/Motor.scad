$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Motor
union()
{
	cylinder(80.000, 18.000, 18.000, true);
	cylinder(40.000, 20.500, 20.500, true);
	translate(v=[0.000, 0.000, 48.500])
	{
		cylinder(17.000, 5.000, 5.000, true);
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/TugBoat.scad>


