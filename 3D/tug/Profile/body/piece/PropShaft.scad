$fs = 2.000;
$fa=2;


intersection()
{
// PropShaft
	color(c=[1.000, 0.000, 0.000])
	{
		translate(v=[138.320, 0.000, 434.000])
		{
			rotate(a=[0.000, 5.000, 0.000])
			{
				cylinder(h=70.000, r1=5.000, r2=5.000, center=true);
			}
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


