$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TruckPlatform-Base
color(c=[1.000, 0.000, 1.000])
{
	union()
	{
		translate(v=[30.000, 0.000, 1.500])
		{
			cube(size=[60.000, 150.000, 3.000], center=true);
		}
		translate(v=[75.000, 0.000, 1.500])
		{
			cube(size=[30.000, 25.000, 3.000], center=true);
		}
		translate(v=[167.500, 0.000, 1.500])
		{
			cube(size=[155.000, 150.000, 3.000], center=true);
		}
		translate(v=[278.000, 0.000, 1.500])
		{
			cube(size=[66.000, 25.000, 3.000], center=true);
		}
		translate(v=[328.000, 0.000, 1.500])
		{
			cube(size=[34.000, 150.000, 3.000], center=true);
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


