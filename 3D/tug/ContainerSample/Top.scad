$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Top
intersection()
{
// ContainerSample
	intersection()
	{
// ContainerBox
		union()
		{
			difference()
			{
				// ContainerBox
				import("/Users/pierrecote/src/github/RaspberryPi/3D/External/Interlocking Shipping Container - 6528974/files/Interlocking_Shipping_Container.stl", 10);
				color(c=[1.000, 0.000, 0.000])
				{
// BLF
					translate(v=[0.800, 0.800, -4.000])
					{
						cube(size=[4.400, 6.400, 3.000], center=false);
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
// BRF
					translate(v=[74.500, 0.800, -4.000])
					{
						cube(size=[4.400, 6.400, 3.000], center=false);
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
// BLR
					translate(v=[0.800, 192.800, -4.000])
					{
						cube(size=[4.400, 6.400, 3.000], center=false);
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
// BRR
					translate(v=[74.500, 192.800, -4.000])
					{
						cube(size=[4.400, 6.400, 3.000], center=false);
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
// TL
					translate(v=[0.000, 0.000, 68.000])
					{
						cube(size=[6.000, 8.000, 3.000], center=false);
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
// TR
					translate(v=[74.000, 0.000, 68.000])
					{
						cube(size=[6.000, 8.000, 3.000], center=false);
					}
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
// TL
				translate(v=[1.500, 1.600, 68.000])
				{
					cube(size=[3.000, 4.200, 2.000], center=false);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
// TR
				translate(v=[75.500, 2.000, 68.000])
				{
					cube(size=[3.000, 4.200, 2.000], center=false);
				}
			}
		}
		translate(v=[0.000, 5.000, 0.000])
		{
			cube(size=[2000.000, 10.000, 2000.000], center=true);
		}
	}
	translate(v=[0.000, 0.000, 67.500])
	{
		cube(size=[2000.000, 2000.000, 15.000], center=true);
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


