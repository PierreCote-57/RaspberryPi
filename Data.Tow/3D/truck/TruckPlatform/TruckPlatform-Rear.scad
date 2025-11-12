$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TruckPlatform-Rear
intersection()
{
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
					translate(v=[192.500, 0.000, 2.000])
					{
						cube(size=[165.000, 150.000, 4.000], center=true);
					}
					translate(v=[303.000, 0.000, 2.000])
					{
						cube(size=[56.000, 25.000, 4.000], center=true);
					}
					translate(v=[348.000, 0.000, 2.000])
					{
						cube(size=[34.000, 110.000, 4.000], center=true);
					}
				}
				translate(v=[287.000, 0.000, 6.000])
				{
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -4.000])
						{
							cylinder(8.100, 1.750, 1.750, true);
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
						cube(size=[12.000, 53.000, 4.000], center=true);
					}
					translate(v=[0.000, 20.500, 0.000])
					{
						translate(v=[0.000, 0.000, -2.000])
						{
							cylinder(4.000, 6.000, 6.000, true);
						}
					}
					translate(v=[0.000, -20.500, 0.000])
					{
						translate(v=[0.000, 0.000, -2.000])
						{
							cylinder(4.000, 6.000, 6.000, true);
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
			translate(v=[193.000, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, -10.000])
				{
					cylinder(20.000, 5.000, 5.000, true);
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
										cylinder(6.100, 4.000, 4.000, true, $fn=6);
									}
								}
								color(c=[1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -3.000])
									{
										cylinder(6.100, 1.750, 1.750, true);
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
										cylinder(6.100, 4.000, 4.000, true, $fn=6);
									}
								}
								color(c=[1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -3.000])
									{
										cylinder(6.100, 1.750, 1.750, true);
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
							cylinder(20.000, 1.350, 1.350, true);
						}
					}
					translate(v=[3.500, -24.500, 0.000])
					{
						color(c=[1.000, 0.000, 1.000])
						{
							cylinder(20.000, 1.350, 1.350, true);
						}
					}
					translate(v=[61.500, 24.500, 0.000])
					{
						color(c=[1.000, 0.000, 1.000])
						{
							cylinder(20.000, 1.350, 1.350, true);
						}
					}
					translate(v=[61.500, -24.500, 0.000])
					{
						color(c=[1.000, 0.000, 1.000])
						{
							cylinder(20.000, 1.350, 1.350, true);
						}
					}
					translate(v=[81.500, 24.500, 0.000])
					{
						color(c=[1.000, 0.000, 1.000])
						{
							cylinder(20.000, 1.350, 1.350, true);
						}
					}
					translate(v=[81.500, -24.500, 0.000])
					{
						color(c=[1.000, 0.000, 1.000])
						{
							cylinder(20.000, 1.350, 1.350, true);
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
										cylinder(72.100, 1.750, 1.750, true);
									}
								}
							}
						}
						color(c=[0.000, 0.000, 1.000])
						{
							translate(v=[0.000, 0.000, -7.900])
							{
								cylinder(24.000, 6.000, 6.000, true);
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
										cylinder(10.100, 4.000, 4.000, true, $fn=6);
									}
								}
							}
						}
					}
				}
				translate(v=[38.000, 43.000, 0.000])
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
										cylinder(72.100, 1.750, 1.750, true);
									}
								}
							}
						}
						color(c=[0.000, 0.000, 1.000])
						{
							translate(v=[0.000, 0.000, -7.900])
							{
								cylinder(24.000, 6.000, 6.000, true);
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
										cylinder(10.100, 4.000, 4.000, true, $fn=6);
									}
								}
							}
						}
					}
				}
				translate(v=[38.000, -43.000, 0.000])
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
										cylinder(72.100, 1.750, 1.750, true);
									}
								}
							}
						}
						color(c=[0.000, 0.000, 1.000])
						{
							translate(v=[0.000, 0.000, -7.900])
							{
								cylinder(24.000, 6.000, 6.000, true);
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
										cylinder(10.100, 4.000, 4.000, true, $fn=6);
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
			translate(v=[255.000, -60.000, 0.000])
			{
				translate(v=[0.000, 0.000, 2.550])
				{
					color(c=[1.000, 0.784, 0.000])
					{
						cylinder(3.000, 2.250, 2.250, true);
					}
				}
			}
			translate(v=[265.000, -60.000, 0.000])
			{
				translate(v=[0.000, 0.000, 2.550])
				{
					color(c=[1.000, 0.784, 0.000])
					{
						cylinder(3.000, 2.250, 2.250, true);
					}
				}
			}
			translate(v=[255.000, -35.000, 0.000])
			{
				translate(v=[0.000, 0.000, 2.550])
				{
					color(c=[1.000, 0.784, 0.000])
					{
						cylinder(3.000, 2.250, 2.250, true);
					}
				}
			}
			translate(v=[265.000, -35.000, 0.000])
			{
				translate(v=[0.000, 0.000, 2.550])
				{
					color(c=[1.000, 0.784, 0.000])
					{
						cylinder(3.000, 2.250, 2.250, true);
					}
				}
			}
		}
// WireHole
		translate(v=[255.000, 50.000, 2.000])
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
	}
	translate(v=[-410.000, 0.000, 0.000])
	{
		cube(size=[1180.000, 2000.000, 2000.000], center=true);
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


