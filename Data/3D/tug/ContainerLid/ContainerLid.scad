$fs = 1.000;
$fa=1.000;
$fn=36.000;


// ContainerLid
union()
{
	difference()
	{
		// ContainerLid
		import("/Users/pierrecote/src/github/RaspberryPi/3D/External/Interlocking Shipping Container - 6528974/files/Interlocking_Shipping_Lid_Updated_better_tolerance.stl", 10);
		color(c=[1.000, 0.000, 0.000])
		{
// TL
			translate(v=[0.000, 232.000, 68.000])
			{
				cube(size=[6.000, 8.000, 3.000], center=false);
			}
		}
		color(c=[1.000, 0.000, 0.000])
		{
// TR
			translate(v=[74.000, 232.000, 68.000])
			{
				cube(size=[6.000, 8.000, 3.000], center=false);
			}
		}
	}
	color(c=[0.000, 1.000, 0.000])
	{
// TL
		translate(v=[1.500, 234.000, 68.000])
		{
			cube(size=[3.000, 4.200, 2.000], center=false);
		}
	}
	color(c=[0.000, 1.000, 0.000])
	{
// TR
		translate(v=[75.500, 234.000, 68.000])
		{
			cube(size=[3.000, 4.200, 2.000], center=false);
		}
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/TugBoat.scad>


