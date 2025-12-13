$fs = 1.000;
$fa=1.000;
$fn=36.000;


// GPS/GPS-Full
union()
{
// GPS/GPS-Gray
	color([0.502, 0.502, 0.502])
	{
		difference()
		{
			difference()
			{
				cube(size=[70.000, 57.000, 5.000], center=true);
// GPS
				union()
				{
					translate(v=[25.000, 18.500, 0.000])
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
					translate(v=[25.000, -18.500, 0.000])
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
					translate(v=[-25.000, 18.500, 0.000])
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
					translate(v=[-25.000, -18.500, 0.000])
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
							cube(size=[47.000, 34.000, 0.200], center=true);
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
							cube(size=[45.500, 32.500, 0.300], center=true);
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
// GPS/GPS-Green
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
						cube(size=[47.000, 34.000, 0.200], center=true);
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
						cube(size=[45.500, 32.500, 0.300], center=true);
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


