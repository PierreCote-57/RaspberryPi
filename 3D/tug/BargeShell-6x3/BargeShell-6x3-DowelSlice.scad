$fs = 1.000;
$fa=1.000;
$fn=36.000;


// BargeShell-6x3-DowelSlice
intersection()
{
// BargeShell-6x3
	difference()
	{
		translate(v=[0.000, 0.000, 455.000])
		{
			rotate(a=[0.000, 90.000, 0.000])
			{
				difference()
				{
					translate(v=[0.000, 0.000, 25.813])
					{
						union()
						{
							cube(size=[910.000, 194.000, 51.625], center=true);
							color(c=[0.000, 0.000, 1.000])
							{
								translate(v=[-455.000, 0.000, 47.196])
								{
									intersection()
									{
										rotate(a=[90.000, 0.000, 0.000])
										{
											cylinder(h=194.000, r1=73.009, r2=73.009, center=true);
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
						scale(v=[0.991, 0.938, 1.000])
						{
							translate(v=[0.000, 0.000, 25.813])
							{
								union()
								{
									cube(size=[910.000, 194.000, 51.625], center=true);
									color(c=[0.000, 0.000, 1.000])
									{
										translate(v=[-455.000, 0.000, 47.196])
										{
											intersection()
											{
												rotate(a=[90.000, 0.000, 0.000])
												{
													cylinder(h=194.000, r1=73.009, r2=73.009, center=true);
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
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 0.000, 160.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -0.000, 160.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 48.500, 160.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -48.500, 160.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 87.300, 160.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -87.300, 160.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[38.719, 94.000, 160.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[38.719, -94.000, 160.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 0.000, 310.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -0.000, 310.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 48.500, 310.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -48.500, 310.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 87.300, 310.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -87.300, 310.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[38.719, 94.000, 310.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[38.719, -94.000, 310.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 0.000, 460.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -0.000, 460.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 48.500, 460.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -48.500, 460.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 87.300, 460.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -87.300, 460.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[38.719, 94.000, 460.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[38.719, -94.000, 460.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 0.000, 610.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -0.000, 610.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 48.500, 610.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -48.500, 610.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 87.300, 610.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -87.300, 610.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[38.719, 94.000, 610.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[38.719, -94.000, 610.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 0.000, 760.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -0.000, 760.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 48.500, 760.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -48.500, 760.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 87.300, 760.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -87.300, 760.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[38.719, 94.000, 760.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[38.719, -94.000, 760.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 0.000, 910.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -0.000, 910.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 48.500, 910.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -48.500, 910.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 87.300, 910.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -87.300, 910.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[38.719, 94.000, 910.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[38.719, -94.000, 910.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
	}
	translate(v=[0.000, 0.000, 134.358])
	{
		cube(size=[2000.000, 2000.000, 15.000], center=true);
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


