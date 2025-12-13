$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Yukon/Yukon-Full
union()
{
// Yukon/Yukon-Gray
	color([0.502, 0.502, 0.502])
	{
		difference()
		{
			difference()
			{
				cube(size=[104.000, 87.000, 5.000], center=true);
// Yukon
				union()
				{
					translate(v=[39.300, 30.800, 0.000])
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
					translate(v=[39.300, -30.800, 0.000])
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
					translate(v=[-39.300, 30.800, 0.000])
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
					translate(v=[-39.300, -30.800, 0.000])
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
							cube(size=[81.000, 64.000, 0.200], center=true);
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
							cube(size=[79.500, 62.500, 0.300], center=true);
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
// Yukon/Yukon-Green
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
						cube(size=[81.000, 64.000, 0.200], center=true);
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
						cube(size=[79.500, 62.500, 0.300], center=true);
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


