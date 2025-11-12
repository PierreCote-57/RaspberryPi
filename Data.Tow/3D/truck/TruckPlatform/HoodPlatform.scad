$fs = 1.000;
$fa=1.000;
$fn=36.000;


// HoodPlatform
difference()
{
	translate(v=[315.000, 0.000, 28.000])
	{
		union()
		{
			translate(v=[0.000, 0.000, 2.000])
			{
				cube(size=[100.000, 110.000, 4.000], center=true);
			}
			translate(v=[-5.000, 0.000, 0.000])
			{
				color(c=[0.000, 1.000, 0.000])
				{
					translate(v=[0.000, 0.000, -10.000])
					{
						cylinder(28.000, 6.000, 6.000, true);
					}
				}
			}
			translate(v=[41.000, 46.000, 0.000])
			{
				color(c=[0.000, 1.000, 0.000])
				{
					translate(v=[0.000, 0.000, -10.000])
					{
						cylinder(28.000, 6.000, 6.000, true);
					}
				}
			}
			translate(v=[41.000, -46.000, 0.000])
			{
				color(c=[0.000, 1.000, 0.000])
				{
					translate(v=[0.000, 0.000, -10.000])
					{
						cylinder(28.000, 6.000, 6.000, true);
					}
				}
			}
		}
	}
	translate(v=[315.000, 0.000, 28.000])
	{
// ModuleHole
		color(c=[1.000, 0.000, 1.000])
		{
			union()
			{
				translate(v=[-35.000, 5.000, 0.000])
				{
					union()
					{
						translate(v=[2.700, 2.700, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.500, 1.500, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.000, 3.000, true, $fn=6);
									}
								}
							}
						}
						translate(v=[2.700, 39.300, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.500, 1.500, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.000, 3.000, true, $fn=6);
									}
								}
							}
						}
						translate(v=[59.300, 2.700, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.500, 1.500, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.000, 3.000, true, $fn=6);
									}
								}
							}
						}
						translate(v=[59.300, 39.300, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.500, 1.500, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.000, 3.000, true, $fn=6);
									}
								}
							}
						}
					}
				}
				translate(v=[-30.000, -50.000, 0.000])
				{
					union()
					{
						translate(v=[2.700, 2.700, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.500, 1.500, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.000, 3.000, true, $fn=6);
									}
								}
							}
						}
						translate(v=[2.700, 35.300, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.500, 1.500, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.000, 3.000, true, $fn=6);
									}
								}
							}
						}
						translate(v=[49.300, 2.700, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.500, 1.500, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.000, 3.000, true, $fn=6);
									}
								}
							}
						}
						translate(v=[49.300, 35.300, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.500, 1.500, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.000, 3.000, true, $fn=6);
									}
								}
							}
						}
					}
				}
			}
		}
	}
	translate(v=[315.000, 0.000, 28.000])
	{
		union()
		{
			translate(v=[-5.000, 0.000, 0.000])
			{
				union()
				{
					color(c=[0.000, 1.000, 1.000])
					{
						translate(v=[0.000, 0.000, 24.000])
						{
							color(c=[1.000, 0.000, 0.000])
							{
								translate(v=[0.000, 0.000, -36.000])
								{
									cylinder(72.100, 1.500, 1.500, true);
								}
							}
						}
					}
					color(c=[0.000, 0.000, 1.000])
					{
						translate(v=[0.000, 0.000, -7.900])
						{
							cylinder(24.000, 3.000, 3.000, true);
						}
					}
					color(c=[0.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -36.000])
						{
							color(c=[0.000, 1.000, 0.000])
							{
								translate(v=[0.000, 0.000, 5.000])
								{
									cylinder(10.100, 3.000, 3.000, true, $fn=6);
								}
							}
						}
					}
				}
			}
			translate(v=[41.000, 46.000, 0.000])
			{
				union()
				{
					color(c=[0.000, 1.000, 1.000])
					{
						translate(v=[0.000, 0.000, 24.000])
						{
							color(c=[1.000, 0.000, 0.000])
							{
								translate(v=[0.000, 0.000, -36.000])
								{
									cylinder(72.100, 1.500, 1.500, true);
								}
							}
						}
					}
					color(c=[0.000, 0.000, 1.000])
					{
						translate(v=[0.000, 0.000, -7.900])
						{
							cylinder(24.000, 3.000, 3.000, true);
						}
					}
					color(c=[0.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -36.000])
						{
							color(c=[0.000, 1.000, 0.000])
							{
								translate(v=[0.000, 0.000, 5.000])
								{
									cylinder(10.100, 3.000, 3.000, true, $fn=6);
								}
							}
						}
					}
				}
			}
			translate(v=[41.000, -46.000, 0.000])
			{
				union()
				{
					color(c=[0.000, 1.000, 1.000])
					{
						translate(v=[0.000, 0.000, 24.000])
						{
							color(c=[1.000, 0.000, 0.000])
							{
								translate(v=[0.000, 0.000, -36.000])
								{
									cylinder(72.100, 1.500, 1.500, true);
								}
							}
						}
					}
					color(c=[0.000, 0.000, 1.000])
					{
						translate(v=[0.000, 0.000, -7.900])
						{
							cylinder(24.000, 3.000, 3.000, true);
						}
					}
					color(c=[0.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -36.000])
						{
							color(c=[0.000, 1.000, 0.000])
							{
								translate(v=[0.000, 0.000, 5.000])
								{
									cylinder(10.100, 3.000, 3.000, true, $fn=6);
								}
							}
						}
					}
				}
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


