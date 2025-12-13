$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Sonar/Sonar-Gray
color([0.502, 0.502, 0.502])
{
	difference()
	{
		difference()
		{
			cube(size=[65.000, 40.000, 5.000], center=true);
// Sonar
			union()
			{
				translate(v=[20.000, 7.500, 0.000])
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
				translate(v=[20.000, -7.500, 0.000])
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
				translate(v=[-20.000, 7.500, 0.000])
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
				translate(v=[-20.000, -7.500, 0.000])
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
							cube(size=[42.000, 17.000, 0.200], center=true);
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
							cube(size=[40.500, 15.500, 0.300], center=true);
							rotate(a=[0.000, 0.000, 90.000])
							{
								cylinder(0.010, 3.000, 3.000, false);
							}
						}
					}
				}
				translate(v=[23.500, 0.000, 10.000])
				{
					rotate(a=[0.000, 0.000, 180.000])
					{
						difference()
						{
							translate(v=[0.250, 0.000, 0.000])
							{
								cube(size=[4.500, 8.000, 20.000], center=true);
							}
							translate(v=[1.350, 0.000, 0.000])
							{
								cube(size=[2.500, 4.000, 40.000], center=true);
							}
						}
					}
				}
				translate(v=[-23.500, 0.000, 10.000])
				{
					difference()
					{
						translate(v=[0.250, 0.000, 0.000])
						{
							cube(size=[4.500, 6.000, 20.000], center=true);
						}
						translate(v=[1.350, 0.000, 0.000])
						{
							cube(size=[2.500, 2.000, 40.000], center=true);
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


