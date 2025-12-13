$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Cab/Cab-Full
union()
{
// Cab/Cab-Gray
	color([0.502, 0.502, 0.502])
	{
		difference()
		{
			difference()
			{
				cube(size=[145.000, 170.000, 5.000], center=true);
// Cab
				union()
				{
					translate(v=[62.500, 75.000, 0.000])
					{
						color([1.000, 0.784, 0.000])
						{
							union()
							{
								color([0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 2.500])
									{
										cylinder(5.100, 3.100, 3.100, true, $fn=6);
									}
								}
								color([1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -2.500])
									{
										cylinder(5.100, 1.600, 1.600, true);
									}
								}
							}
						}
					}
					translate(v=[62.500, -75.000, 0.000])
					{
						color([1.000, 0.784, 0.000])
						{
							union()
							{
								color([0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 2.500])
									{
										cylinder(5.100, 3.100, 3.100, true, $fn=6);
									}
								}
								color([1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -2.500])
									{
										cylinder(5.100, 1.600, 1.600, true);
									}
								}
							}
						}
					}
					translate(v=[-62.500, 75.000, 0.000])
					{
						color([1.000, 0.784, 0.000])
						{
							union()
							{
								color([0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 2.500])
									{
										cylinder(5.100, 3.100, 3.100, true, $fn=6);
									}
								}
								color([1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -2.500])
									{
										cylinder(5.100, 1.600, 1.600, true);
									}
								}
							}
						}
					}
					translate(v=[-62.500, -75.000, 0.000])
					{
						color([1.000, 0.784, 0.000])
						{
							union()
							{
								color([0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 2.500])
									{
										cylinder(5.100, 3.100, 3.100, true, $fn=6);
									}
								}
								color([1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -2.500])
									{
										cylinder(5.100, 1.600, 1.600, true);
									}
								}
							}
						}
					}
				}
			}
			translate(v=[0.000, 0.000, 2.600])
			{
				difference()
				{
					translate(v=[0.000, 0.000, 0.000])
					{
						minkowski()
						{
							cube(size=[122.000, 147.000, 0.200], center=true);
							rotate(a=[0.000, 0.000, 90.000])
							{
								cylinder(0.010, 3.000, 3.000, false);
							}
						}
					}
					translate(v=[0.000, 0.000, 0.000])
					{
						minkowski()
						{
							cube(size=[120.500, 145.500, 0.300], center=true);
							rotate(a=[0.000, 0.000, 90.000])
							{
								cylinder(0.010, 3.000, 3.000, false);
							}
						}
					}
				}
			}
		}
	}
// Cab/Cab-Green
	color([0.000, 1.000, 0.000])
	{
		translate(v=[0.000, 0.000, 2.600])
		{
			difference()
			{
				translate(v=[0.000, 0.000, 0.000])
				{
					minkowski()
					{
						cube(size=[122.000, 147.000, 0.200], center=true);
						rotate(a=[0.000, 0.000, 90.000])
						{
							cylinder(0.010, 3.000, 3.000, false);
						}
					}
				}
				translate(v=[0.000, 0.000, 0.000])
				{
					minkowski()
					{
						cube(size=[120.500, 145.500, 0.300], center=true);
						rotate(a=[0.000, 0.000, 90.000])
						{
							cylinder(0.010, 3.000, 3.000, false);
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


