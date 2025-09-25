$fs = 1.000;
$fa=1.000;
$fn=36.000;


// BargeShell-2x3-0
intersection()
{
// BargeShell-2x3
	difference()
	{
		translate(v=[0.000, 0.000, 153.000])
		{
			rotate(a=[0.000, 90.000, 0.000])
			{
				difference()
				{
					translate(v=[0.000, 0.000, 23.813])
					{
						union()
						{
							cube(size=[306.000, 188.500, 47.625], center=true);
							color(c=[0.000, 0.000, 1.000])
							{
								translate(v=[-153.000, 0.000, 43.539])
								{
									intersection()
									{
										rotate(a=[90.000, 0.000, 0.000])
										{
											cylinder(h=188.500, r1=67.352, r2=67.352, center=true);
										}
										translate(v=[0.000, 0.000, -43.539])
										{
											cube(size=[2000.000, 2000.000, 47.625], center=true);
										}
									}
								}
							}
						}
					}
					translate(v=[-2.500, 0.000, 5.000])
					{
						scale(v=[0.984, 0.960, 1.000])
						{
							translate(v=[0.000, 0.000, 23.813])
							{
								union()
								{
									cube(size=[306.000, 188.500, 47.625], center=true);
									color(c=[0.000, 0.000, 1.000])
									{
										translate(v=[-153.000, 0.000, 43.539])
										{
											intersection()
											{
												rotate(a=[90.000, 0.000, 0.000])
												{
													cylinder(h=188.500, r1=67.352, r2=67.352, center=true);
												}
												translate(v=[0.000, 0.000, -43.539])
												{
													cube(size=[2000.000, 2000.000, 47.625], center=true);
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
			translate(v=[2.500, 0.000, 156.000])
			{
				cylinder(h=20.000, r1=1.350, r2=1.350, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -0.000, 156.000])
			{
				cylinder(h=20.000, r1=1.350, r2=1.350, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 47.125, 156.000])
			{
				cylinder(h=20.000, r1=1.350, r2=1.350, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -47.125, 156.000])
			{
				cylinder(h=20.000, r1=1.350, r2=1.350, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 84.825, 156.000])
			{
				cylinder(h=20.000, r1=1.350, r2=1.350, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -84.825, 156.000])
			{
				cylinder(h=20.000, r1=1.350, r2=1.350, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[35.719, 92.375, 156.000])
			{
				cylinder(h=20.000, r1=1.350, r2=1.350, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[35.719, -92.375, 156.000])
			{
				cylinder(h=20.000, r1=1.350, r2=1.350, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 0.000, 306.000])
			{
				cylinder(h=20.000, r1=1.350, r2=1.350, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -0.000, 306.000])
			{
				cylinder(h=20.000, r1=1.350, r2=1.350, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 47.125, 306.000])
			{
				cylinder(h=20.000, r1=1.350, r2=1.350, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -47.125, 306.000])
			{
				cylinder(h=20.000, r1=1.350, r2=1.350, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 84.825, 306.000])
			{
				cylinder(h=20.000, r1=1.350, r2=1.350, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -84.825, 306.000])
			{
				cylinder(h=20.000, r1=1.350, r2=1.350, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[35.719, 92.375, 306.000])
			{
				cylinder(h=20.000, r1=1.350, r2=1.350, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[35.719, -92.375, 306.000])
			{
				cylinder(h=20.000, r1=1.350, r2=1.350, center=true);
			}
		}
	}
	translate(v=[0.000, 0.000, 78.000])
	{
		cube(size=[2000.000, 2000.000, 156.000], center=true);
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


