$fs = 2.000;
$fa=2;


intersection()
{
// BargeShell-4x3
	translate(v=[0.000, 0.000, 309.000])
	{
		rotate(a=[0.000, 90.000, 0.000])
		{
			difference()
			{
				translate(v=[0.000, 0.000, 25.813])
				{
					union()
					{
						cube(size=[618.000, 190.000, 51.625], center=true);
						color(c=[0.000, 0.000, 1.000])
						{
							translate(v=[-309.000, 0.000, 47.196])
							{
								intersection()
								{
									rotate(a=[90.000, 0.000, 0.000])
									{
										cylinder(h=190.000, r1=73.009, r2=73.009, center=true);
									}
									translate(v=[0.000, 0.000, -47.196])
									{
										cube(size=[2000.000, 2000.000, 51.625], center=true);
									}
								}
							}
						}
					}
				}
				translate(v=[-4.000, 0.000, 8.000])
				{
					scale(v=[0.987, 0.958, 1.000])
					{
						translate(v=[0.000, 0.000, 25.813])
						{
							union()
							{
								cube(size=[618.000, 190.000, 51.625], center=true);
								color(c=[0.000, 0.000, 1.000])
								{
									translate(v=[-309.000, 0.000, 47.196])
									{
										intersection()
										{
											rotate(a=[90.000, 0.000, 0.000])
											{
												cylinder(h=190.000, r1=73.009, r2=73.009, center=true);
											}
											translate(v=[0.000, 0.000, -47.196])
											{
												cube(size=[2000.000, 2000.000, 51.625], center=true);
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


