$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Barge-6x3-5
intersection()
{
// Barge-6x3
	difference()
	{
		translate(v=[0.000, 0.000, 453.000])
		{
			rotate(a=[0.000, 90.000, 0.000])
			{
				difference()
				{
					translate(v=[0.000, 0.000, 23.813])
					{
						union()
						{
							cube(size=[906.000, 191.000, 47.625], center=true);
							color(c=[0.000, 0.000, 1.000])
							{
								translate(v=[-453.000, 0.000, 43.539])
								{
									intersection()
									{
										rotate(a=[90.000, 0.000, 0.000])
										{
											cylinder(h=191.000, r1=67.352, r2=67.352, center=true);
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
						scale(v=[0.994, 0.948, 1.000])
						{
							translate(v=[0.000, 0.000, 23.813])
							{
								union()
								{
									cube(size=[906.000, 191.000, 47.625], center=true);
									color(c=[0.000, 0.000, 1.000])
									{
										translate(v=[-453.000, 0.000, 43.539])
										{
											intersection()
											{
												rotate(a=[90.000, 0.000, 0.000])
												{
													cylinder(h=191.000, r1=67.352, r2=67.352, center=true);
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
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -0.000, 156.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 47.750, 156.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -47.750, 156.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 85.950, 156.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -85.950, 156.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[35.719, 93.000, 156.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[35.719, -93.000, 156.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 0.000, 306.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -0.000, 306.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 47.750, 306.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -47.750, 306.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 85.950, 306.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -85.950, 306.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[35.719, 93.000, 306.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[35.719, -93.000, 306.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 0.000, 456.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -0.000, 456.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 47.750, 456.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -47.750, 456.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 85.950, 456.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -85.950, 456.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[35.719, 93.000, 456.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[35.719, -93.000, 456.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 0.000, 606.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -0.000, 606.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 47.750, 606.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -47.750, 606.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 85.950, 606.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -85.950, 606.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[35.719, 93.000, 606.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[35.719, -93.000, 606.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 0.000, 756.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -0.000, 756.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 47.750, 756.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -47.750, 756.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 85.950, 756.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -85.950, 756.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[35.719, 93.000, 756.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[35.719, -93.000, 756.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 0.000, 906.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -0.000, 906.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 47.750, 906.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -47.750, 906.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, 85.950, 906.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[2.500, -85.950, 906.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[35.719, 93.000, 906.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
		color(c=[0.000, 1.000, 0.000])
		{
			translate(v=[35.719, -93.000, 906.000])
			{
				cylinder(h=20.000, r1=1.300, r2=1.300, center=true);
			}
		}
	}
	translate(v=[0.000, 0.000, 831.000])
	{
		cube(size=[2000.000, 2000.000, 150.000], center=true);
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


