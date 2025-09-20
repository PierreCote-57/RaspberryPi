$fs = 1.000;
$fa=1.000;
$fn=36.000;


// BargeShell-6x3-1
intersection()
{
// BargeShell-6x3
	difference()
	{
		translate(v=[0.000, 0.000, 454.500])
		{
			rotate(a=[0.000, 90.000, 0.000])
			{
				difference()
				{
					translate(v=[0.000, 0.000, 25.313])
					{
						union()
						{
							cube(size=[909.000, 193.000, 50.625], center=true);
							color(c=[0.000, 0.000, 1.000])
							{
								translate(v=[-454.500, 0.000, 46.282])
								{
									intersection()
									{
										rotate(a=[90.000, 0.000, 0.000])
										{
											cylinder(h=193.000, r1=71.595, r2=71.595, center=true);
										}
										translate(v=[0.000, 0.000, -46.282])
										{
											cube(size=[2000.000, 2000.000, 50.625], center=true);
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
							translate(v=[0.000, 0.000, 25.313])
							{
								union()
								{
									cube(size=[909.000, 193.000, 50.625], center=true);
									color(c=[0.000, 0.000, 1.000])
									{
										translate(v=[-454.500, 0.000, 46.282])
										{
											intersection()
											{
												rotate(a=[90.000, 0.000, 0.000])
												{
													cylinder(h=193.000, r1=71.595, r2=71.595, center=true);
												}
												translate(v=[0.000, 0.000, -46.282])
												{
													cube(size=[2000.000, 2000.000, 50.625], center=true);
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
			translate(v=[4.000, 0.000, 159.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -0.000, 159.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 48.250, 159.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -48.250, 159.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 86.850, 159.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -86.850, 159.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[37.969, 93.500, 159.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[37.969, -93.500, 159.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 0.000, 309.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -0.000, 309.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 48.250, 309.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -48.250, 309.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 86.850, 309.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -86.850, 309.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[37.969, 93.500, 309.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[37.969, -93.500, 309.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 0.000, 459.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -0.000, 459.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 48.250, 459.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -48.250, 459.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 86.850, 459.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -86.850, 459.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[37.969, 93.500, 459.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[37.969, -93.500, 459.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 0.000, 609.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -0.000, 609.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 48.250, 609.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -48.250, 609.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 86.850, 609.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -86.850, 609.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[37.969, 93.500, 609.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[37.969, -93.500, 609.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 0.000, 759.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -0.000, 759.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 48.250, 759.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -48.250, 759.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 86.850, 759.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -86.850, 759.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[37.969, 93.500, 759.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[37.969, -93.500, 759.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 0.000, 909.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -0.000, 909.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 48.250, 909.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -48.250, 909.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, 86.850, 909.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[4.000, -86.850, 909.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[37.969, 93.500, 909.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[37.969, -93.500, 909.000])
			{
				cylinder(h=20.000, r1=1.250, r2=1.250, center=true);
			}
		}
	}
	translate(v=[0.000, 0.000, 234.000])
	{
		cube(size=[2000.000, 2000.000, 150.000], center=true);
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


