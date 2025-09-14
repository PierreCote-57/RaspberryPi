$fs = 2.000;
$fa=2;


intersection()
{
// Motor
	union()
	{
		cylinder(h=80.000, r1=18.000, r2=18.000, center=true);
		cylinder(h=40.000, r1=20.500, r2=20.500, center=true);
		translate(v=[0.000, 0.000, 48.500])
		{
			cylinder(h=17.000, r1=5.000, r2=5.000, center=true);
		}
	}
	translate(v=[0.000, 95.050, 0.000])
	{
		cube(size=[2000.000, 189.900, 2000.000], center=true);
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/TugBoat.scad>


