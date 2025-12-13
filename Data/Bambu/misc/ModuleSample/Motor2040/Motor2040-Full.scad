$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Motor2040/Motor2040-Full
union()
{
// Motor2040/Motor2040-Gray
	color([0.502, 0.502, 0.502])
	{
		difference()
		{
			difference()
			{
				cube(size=[72.000, 58.000, 5.000], center=true);
// Motor2040
				union()
				{
					translate(v=[23.300, 16.300, 0.000])
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
					translate(v=[23.300, -16.300, 0.000])
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
					translate(v=[-23.300, 16.300, 0.000])
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
					translate(v=[-23.300, -16.300, 0.000])
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
							cube(size=[49.000, 35.000, 0.200], center=true);
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
							cube(size=[47.500, 33.500, 0.300], center=true);
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
// Motor2040/Motor2040-Green
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
						cube(size=[49.000, 35.000, 0.200], center=true);
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
						cube(size=[47.500, 33.500, 0.300], center=true);
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


