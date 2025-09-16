$fs = 1.000;
$fa=1.000;
$fn=36.000;


// ShellFull-0
intersection()
{
// ShellFull
	difference()
	{
		union()
		{
// ShellRaw
			union()
			{
				color(c=[1.000, 1.000, 1.000])
				{
					translate(v=[-0.100, 0.000, 0.000])
					{
						difference()
						{
							cockpit_rounded();
							cockpit_mask(8.000);
						}
					}
				}
				color(c=[0.000, 1.000, 0.000])
				{
					intersection()
					{
						difference()
						{
							cockpit_rounded();
							cockpit_mask(12.000);
						}
						translate(v=[29.000, 0.000, 0.000])
						{
							cube(size=[8.000, 2000.000, 2000.000], center=true);
						}
					}
				}
			}
// PropBlock
			color(c=[0.000, 1.000, 0.000])
			{
				intersection()
				{
					intersection()
					{
						cockpit_rounded();
						translate(v=[0.000, 0.000, 500.000])
						{
							cube(size=[2000.000, 2000.000, 200.000], center=true);
						}
					}
					translate(v=[151.660, 0.000, 0.000])
					{
						cube(size=[76.680, 2000.000, 2000.000], center=true);
					}
				}
			}
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
		}
		union()
		{
// RailingMask
			color(c=[1.000, 0.000, 0.000])
			{
				translate(v=[-0.100, 0.000, 0.000])
				{
					intersection()
					{
						cockpit_mask(4.000);
						translate(v=[12.500, 0.000, 0.000])
						{
							cube(size=[25.000, 2000.000, 2000.000], center=true);
						}
					}
				}
			}
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
		}
	}
	translate(v=[0.000, 0.000, 75.000])
	{
		cube(size=[2000.000, 2000.000, 150.000], center=true);
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/TugBoat.scad>


