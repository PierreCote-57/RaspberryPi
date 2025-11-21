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
				cube(size=[90.000, 99.000, 4.000], center=true);
			}
			translate(v=[-10.000, 0.000, 0.000])
			{
				color(c=[0.000, 1.000, 0.000])
				{
					translate(v=[0.000, 0.000, -10.000])
					{
						cylinder(28.000, 6.200, 6.200, true);
					}
				}
			}
			translate(v=[35.700, 40.200, 0.000])
			{
				color(c=[0.000, 1.000, 0.000])
				{
					translate(v=[0.000, 0.000, -10.000])
					{
						cylinder(28.000, 6.200, 6.200, true);
					}
				}
			}
			translate(v=[35.700, -40.200, 0.000])
			{
				color(c=[0.000, 1.000, 0.000])
				{
					translate(v=[0.000, 0.000, -10.000])
					{
						cylinder(28.000, 6.200, 6.200, true);
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
				translate(v=[-42.500, 5.000, 0.000])
				{
// Servo_2040
					union()
					{
						translate(v=[2.700, 2.700, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
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
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
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
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
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
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
					}
				}
				translate(v=[-37.500, -44.500, 0.000])
				{
// Motor_2040
					union()
					{
						translate(v=[2.700, 2.700, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
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
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
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
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
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
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
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
			translate(v=[-10.000, 0.000, 0.000])
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
									cylinder(72.100, 1.600, 1.600, true);
								}
							}
						}
					}
					color(c=[0.000, 0.000, 1.000])
					{
						translate(v=[0.000, 0.000, -2.900])
						{
							cylinder(14.000, 3.100, 3.100, true);
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
									cylinder(10.100, 3.100, 3.100, true, $fn=6);
								}
							}
						}
					}
				}
			}
			translate(v=[35.700, 40.200, 0.000])
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
									cylinder(72.100, 1.600, 1.600, true);
								}
							}
						}
					}
					color(c=[0.000, 0.000, 1.000])
					{
						translate(v=[0.000, 0.000, -2.900])
						{
							cylinder(14.000, 3.100, 3.100, true);
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
									cylinder(10.100, 3.100, 3.100, true, $fn=6);
								}
							}
						}
					}
				}
			}
			translate(v=[35.700, -40.200, 0.000])
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
									cylinder(72.100, 1.600, 1.600, true);
								}
							}
						}
					}
					color(c=[0.000, 0.000, 1.000])
					{
						translate(v=[0.000, 0.000, -2.900])
						{
							cylinder(14.000, 3.100, 3.100, true);
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
									cylinder(10.100, 3.100, 3.100, true, $fn=6);
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


