$fs = 2.000;
$fa=2;


intersection()
{
// MotorBloc
	color(c=[0.000, 1.000, 0.000])
	{
		intersection()
		{
			intersection()
			{
				cockpit_rounded();
				translate(v=[0.000, 0.000, 310.000])
				{
					cube(size=[2000.000, 2000.000, 180.000], center=true);
				}
			}
			translate(v=[170.000, 0.000, 0.000])
			{
				cube(size=[40.000, 2000.000, 2000.000], center=true);
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


