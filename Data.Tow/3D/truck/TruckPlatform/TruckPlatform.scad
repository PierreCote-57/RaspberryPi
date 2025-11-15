$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TruckPlatform
difference()
{
	union()
	{
// TruckPlatform-Base
		difference()
		{
			union()
			{
				translate(v=[20.000, 0.000, 2.000])
				{
					cube(size=[40.000, 130.000, 4.000], center=true);
				}
				translate(v=[75.000, 0.000, 2.000])
				{
					cube(size=[70.000, 25.000, 4.000], center=true);
				}
				translate(v=[190.000, 0.000, 2.000])
				{
					cube(size=[160.000, 150.000, 4.000], center=true);
				}
				translate(v=[302.500, 0.000, 2.000])
				{
					cube(size=[65.000, 25.000, 4.000], center=true);
				}
				translate(v=[350.000, 0.000, 2.000])
				{
					cube(size=[30.000, 110.000, 4.000], center=true);
				}
			}
			translate(v=[287.000, 0.000, 6.000])
			{
				color(c=[1.000, 0.000, 0.000])
				{
					translate(v=[0.000, 0.000, -4.000])
					{
						cylinder(8.100, 1.500, 1.500, true);
					}
				}
			}
		}
		translate(v=[61.000, 0.000, 0.000])
		{
			union()
			{
				translate(v=[0.000, 0.000, 2.000])
				{
					cube(size=[9.000, 50.000, 4.000], center=true);
				}
				translate(v=[0.000, 20.500, 0.000])
				{
					translate(v=[0.000, 0.000, -2.000])
					{
						cylinder(4.000, 4.500, 4.500, true);
					}
				}
				translate(v=[0.000, -20.500, 0.000])
				{
					translate(v=[0.000, 0.000, -2.000])
					{
						cylinder(4.000, 4.500, 4.500, true);
					}
				}
			}
		}
		translate(v=[180.000, 0.000, 0.000])
		{
			translate(v=[0.000, 0.000, 2.000])
			{
				cube(size=[22.500, 150.000, 4.000], center=true);
			}
		}
		translate(v=[193.000, 5.000, 0.000])
		{
			translate(v=[0.000, 0.000, -15.000])
			{
				cylinder(30.000, 5.000, 5.000, true);
			}
		}
	}
	translate(v=[61.000, 0.000, 0.000])
	{
		union()
		{
			translate(v=[0.000, 20.500, 0.000])
			{
				translate(v=[0.000, 0.000, 1.900])
				{
					rotate(a=[180.000, 0.000, 0.000])
					{
						union()
						{
							color(c=[0.000, 1.000, 0.000])
							{
								translate(v=[0.000, 0.000, 3.000])
								{
									cylinder(6.100, 3.000, 3.000, true, $fn=6);
								}
							}
							color(c=[1.000, 0.000, 0.000])
							{
								translate(v=[0.000, 0.000, -3.000])
								{
									cylinder(6.100, 1.500, 1.500, true);
								}
							}
						}
					}
				}
			}
			translate(v=[0.000, -20.500, 0.000])
			{
				translate(v=[0.000, 0.000, 1.900])
				{
					rotate(a=[180.000, 0.000, 0.000])
					{
						union()
						{
							color(c=[0.000, 1.000, 0.000])
							{
								translate(v=[0.000, 0.000, 3.000])
								{
									cylinder(6.100, 3.000, 3.000, true, $fn=6);
								}
							}
							color(c=[1.000, 0.000, 0.000])
							{
								translate(v=[0.000, 0.000, -3.000])
								{
									cylinder(6.100, 1.500, 1.500, true);
								}
							}
						}
					}
				}
			}
		}
	}
	translate(v=[180.000, 0.000, 0.000])
	{
		color(c=[1.000, 0.000, 0.000])
		{
			union()
			{
				color(c=[1.000, 0.000, 0.000])
				{
					translate(v=[0.000, 0.000, 2.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							cylinder(15.000, 1.300, 1.300, true);
						}
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
					translate(v=[0.000, -0.000, 2.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							cylinder(15.000, 1.300, 1.300, true);
						}
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
					translate(v=[0.000, 20.000, 2.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							cylinder(15.000, 1.300, 1.300, true);
						}
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
					translate(v=[0.000, -20.000, 2.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							cylinder(15.000, 1.300, 1.300, true);
						}
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
					translate(v=[0.000, 40.000, 2.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							cylinder(15.000, 1.300, 1.300, true);
						}
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
					translate(v=[0.000, -40.000, 2.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							cylinder(15.000, 1.300, 1.300, true);
						}
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
					translate(v=[0.000, 60.000, 2.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							cylinder(15.000, 1.300, 1.300, true);
						}
					}
				}
				color(c=[1.000, 0.000, 0.000])
				{
					translate(v=[0.000, -60.000, 2.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							cylinder(15.000, 1.300, 1.300, true);
						}
					}
				}
			}
		}
	}
	translate(v=[125.000, -60.000, 2.000])
	{
		rotate(a=[0.000, 0.000, 90.000])
		{
			union()
			{
				color(c=[0.000, 0.000, 1.000])
				{
					cube(size=[20.000, 3.000, 5.000], center=true);
				}
				translate(v=[10.000, 0.000, 2.500])
				{
					color(c=[0.000, 1.000, 0.000])
					{
						color(c=[1.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -2.500])
							{
								cylinder(5.100, 1.500, 1.500, true);
							}
						}
					}
				}
				translate(v=[-10.000, 0.000, 2.500])
				{
					color(c=[0.000, 1.000, 0.000])
					{
						color(c=[1.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -2.500])
							{
								cylinder(5.100, 1.500, 1.500, true);
							}
						}
					}
				}
			}
		}
	}
// PiHoleSet
	translate(v=[198.000, -55.000, 0.000])
	{
		rotate(a=[0.000, 0.000, 90.000])
		{
			union()
			{
				translate(v=[3.500, 24.500, 0.000])
				{
					color(c=[1.000, 0.000, 1.000])
					{
						cylinder(20.000, 1.500, 1.500, true);
					}
				}
				translate(v=[3.500, -24.500, 0.000])
				{
					color(c=[1.000, 0.000, 1.000])
					{
						cylinder(20.000, 1.500, 1.500, true);
					}
				}
				translate(v=[85.000, 24.500, 0.000])
				{
					color(c=[1.000, 0.000, 1.000])
					{
						cylinder(20.000, 1.500, 1.500, true);
					}
				}
				translate(v=[85.000, -24.500, 0.000])
				{
					color(c=[1.000, 0.000, 1.000])
					{
						cylinder(20.000, 1.500, 1.500, true);
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
						translate(v=[0.000, 0.000, -2.900])
						{
							cylinder(14.000, 3.000, 3.000, true);
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
						translate(v=[0.000, 0.000, -2.900])
						{
							cylinder(14.000, 3.000, 3.000, true);
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
						translate(v=[0.000, 0.000, -2.900])
						{
							cylinder(14.000, 3.000, 3.000, true);
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
// BreadHoles
	union()
	{
		translate(v=[250.000, -60.000, 0.000])
		{
			translate(v=[0.000, 0.000, 2.550])
			{
				color(c=[1.000, 0.784, 0.000])
				{
					cylinder(3.000, 2.300, 2.300, true);
				}
			}
		}
		translate(v=[260.000, -60.000, 0.000])
		{
			translate(v=[0.000, 0.000, 2.550])
			{
				color(c=[1.000, 0.784, 0.000])
				{
					cylinder(3.000, 2.300, 2.300, true);
				}
			}
		}
		translate(v=[250.000, -35.000, 0.000])
		{
			translate(v=[0.000, 0.000, 2.550])
			{
				color(c=[1.000, 0.784, 0.000])
				{
					cylinder(3.000, 2.300, 2.300, true);
				}
			}
		}
		translate(v=[260.000, -35.000, 0.000])
		{
			translate(v=[0.000, 0.000, 2.550])
			{
				color(c=[1.000, 0.784, 0.000])
				{
					cylinder(3.000, 2.300, 2.300, true);
				}
			}
		}
	}
// WireHole
	translate(v=[250.000, 40.000, 2.000])
	{
		translate(v=[0.000, 0.000, 0.000])
		{
			minkowski()
			{
				cube(size=[6.000, 16.000, 8.000], center=true);
				rotate(a=[0.000, 0.000, 90.000])
				{
					cylinder(0.010, 2.000, 2.000, false);
				}
			}
		}
	}
	union()
	{
		translate(v=[350.000, 0.000, 0.000])
		{
			translate(v=[0.000, 0.000, 2.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						color(c=[0.000, 0.000, 1.000])
						{
							cube(size=[90.000, 3.000, 5.000], center=true);
						}
						translate(v=[45.000, 0.000, 2.500])
						{
							color(c=[0.000, 1.000, 0.000])
							{
								color(c=[1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -2.500])
									{
										cylinder(5.100, 1.500, 1.500, true);
									}
								}
							}
						}
						translate(v=[-45.000, 0.000, 2.500])
						{
							color(c=[0.000, 1.000, 0.000])
							{
								color(c=[1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -2.500])
									{
										cylinder(5.100, 1.500, 1.500, true);
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v=[20.000, 0.000, 0.000])
		{
			translate(v=[0.000, 0.000, 2.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						color(c=[0.000, 0.000, 1.000])
						{
							cube(size=[90.000, 3.000, 5.000], center=true);
						}
						translate(v=[45.000, 0.000, 2.500])
						{
							color(c=[0.000, 1.000, 0.000])
							{
								color(c=[1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -2.500])
									{
										cylinder(5.100, 1.500, 1.500, true);
									}
								}
							}
						}
						translate(v=[-45.000, 0.000, 2.500])
						{
							color(c=[0.000, 1.000, 0.000])
							{
								color(c=[1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -2.500])
									{
										cylinder(5.100, 1.500, 1.500, true);
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


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


