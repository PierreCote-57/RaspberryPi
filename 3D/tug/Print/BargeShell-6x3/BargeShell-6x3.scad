$fs = 1.000;
$fa=1;


// BargeShell-6x3
translate(v=[0.000, 0.000, 342.000])
{
	rotate(a=[0.000, 90.000, 0.000])
	{
		difference()
		{
			translate(v=[0.000, 0.000, 27.500])
			{
				union()
				{
					cube(size=[684.000, 176.500, 55.000], center=true);
					color(c=[0.000, 0.000, 1.000])
					{
						translate(v=[-342.000, 0.000, 50.282])
						{
							intersection()
							{
								rotate(a=[90.000, 0.000, 0.000])
								{
									cylinder(h=176.500, r1=77.782, r2=77.782, center=true);
								}
								translate(v=[0.000, 0.000, -50.282])
								{
									cube(size=[2000.000, 2000.000, 55.000], center=true);
								}
							}
						}
					}
				}
			}
			translate(v=[-4.000, 0.000, 8.000])
			{
				scale(v=[0.988, 0.955, 1.000])
				{
					translate(v=[0.000, 0.000, 27.500])
					{
						union()
						{
							cube(size=[684.000, 176.500, 55.000], center=true);
							color(c=[0.000, 0.000, 1.000])
							{
								translate(v=[-342.000, 0.000, 50.282])
								{
									intersection()
									{
										rotate(a=[90.000, 0.000, 0.000])
										{
											cylinder(h=176.500, r1=77.782, r2=77.782, center=true);
										}
										translate(v=[0.000, 0.000, -50.282])
										{
											cube(size=[2000.000, 2000.000, 55.000], center=true);
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/TugBoat.scad>


