$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Bread/Bread-Full
union()
{
// Bread/Bread-Gray
	color([0.502, 0.502, 0.502])
	{
		difference()
		{
			difference()
			{
				cube(size=[50.000, 40.000, 5.000], center=true);
// Bread
				union()
				{
					translate(v=[5.000, 0.000, 0.000])
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
					translate(v=[5.000, -0.000, 0.000])
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
					translate(v=[-5.000, 0.000, 0.000])
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
					translate(v=[-5.000, -0.000, 0.000])
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
				union()
				{
					difference()
					{
						translate(v=[0.000, 0.000, 0.000])
						{
							minkowski()
							{
								cube(size=[27.000, 17.000, 0.200], center=true);
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
								cube(size=[25.500, 15.500, 0.300], center=true);
								rotate(a=[0.000, 0.000, 90.000])
								{
									cylinder(0.010, 3.000, 3.000, false);
								}
							}
						}
					}
					union()
					{
						cube(size=[27.000, 12.000, 1.000], center=true);
						cube(size=[21.000, 18.000, 1.000], center=true);
					}
					translate(v=[0.000, 8.500, 0.000])
					{
						translate(v=[0.000, 0.000, 2.500])
						{
							cube(size=[21.000, 1.000, 5.000], center=true);
						}
					}
					translate(v=[0.000, -8.500, 0.000])
					{
						translate(v=[0.000, 0.000, 2.500])
						{
							cube(size=[21.000, 1.000, 5.000], center=true);
						}
					}
				}
			}
		}
	}
// Bread/Bread-Green
	color([0.000, 1.000, 0.000])
	{
		translate(v=[0.000, 0.000, 2.600])
		{
			union()
			{
				difference()
				{
					translate(v=[0.000, 0.000, 0.000])
					{
						minkowski()
						{
							cube(size=[27.000, 17.000, 0.200], center=true);
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
							cube(size=[25.500, 15.500, 0.300], center=true);
							rotate(a=[0.000, 0.000, 90.000])
							{
								cylinder(0.010, 3.000, 3.000, false);
							}
						}
					}
				}
				union()
				{
					cube(size=[27.000, 12.000, 1.000], center=true);
					cube(size=[21.000, 18.000, 1.000], center=true);
				}
				translate(v=[0.000, 8.500, 0.000])
				{
					translate(v=[0.000, 0.000, 2.500])
					{
						cube(size=[21.000, 1.000, 5.000], center=true);
					}
				}
				translate(v=[0.000, -8.500, 0.000])
				{
					translate(v=[0.000, 0.000, 2.500])
					{
						cube(size=[21.000, 1.000, 5.000], center=true);
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


