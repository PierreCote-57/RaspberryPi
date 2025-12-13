$fs = 1.000;
$fa=1.000;
$fn=36.000;


// DisplayTray-Gray
color([0.502, 0.502, 0.502])
{
	difference()
	{
// DisplayTray
		intersection()
		{
			rotate(a=[40.000, 0.000, 0.000])
			{
				difference()
				{
					translate(v=[0.000, 0.000, 0.000])
					{
						minkowski()
						{
							cube(size=[104.000, 64.000, 60.000], center=true);
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
							cube(size=[92.000, 40.000, 80.000], center=true);
							rotate(a=[0.000, 0.000, 90.000])
							{
								cylinder(0.010, 3.000, 3.000, false);
							}
						}
					}
					translate(v=[-11.000, 20.500, 22.000])
					{
						cube(size=[59.000, 30.000, 20.000], center=true);
					}
					translate(v=[-60.000, -7.000, 15.000])
					{
						cube(size=[20.000, 30.000, 19.000], center=false);
					}
					translate(v=[46.500, 27.500, 27.000])
					{
						union()
						{
							color([0.000, 1.000, 0.000])
							{
								translate(v=[0.000, 0.000, 1.000])
								{
									cylinder(2.100, 3.100, 3.100, true, $fn=6);
								}
							}
							translate(v=[0.000, 0.000, 5.000])
							{
								color([1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -5.000])
									{
										cylinder(10.100, 1.600, 1.600, true);
									}
								}
							}
						}
					}
					translate(v=[46.500, -27.500, 27.000])
					{
						union()
						{
							color([0.000, 1.000, 0.000])
							{
								translate(v=[0.000, 0.000, 1.000])
								{
									cylinder(2.100, 3.100, 3.100, true, $fn=6);
								}
							}
							translate(v=[0.000, 0.000, 5.000])
							{
								color([1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -5.000])
									{
										cylinder(10.100, 1.600, 1.600, true);
									}
								}
							}
						}
					}
					translate(v=[-46.500, 27.500, 27.000])
					{
						union()
						{
							color([0.000, 1.000, 0.000])
							{
								translate(v=[0.000, 0.000, 1.000])
								{
									cylinder(2.100, 3.100, 3.100, true, $fn=6);
								}
							}
							translate(v=[0.000, 0.000, 5.000])
							{
								color([1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -5.000])
									{
										cylinder(10.100, 1.600, 1.600, true);
									}
								}
							}
						}
					}
					translate(v=[-46.500, -27.500, 27.000])
					{
						union()
						{
							color([0.000, 1.000, 0.000])
							{
								translate(v=[0.000, 0.000, 1.000])
								{
									cylinder(2.100, 3.100, 3.100, true, $fn=6);
								}
							}
							translate(v=[0.000, 0.000, 5.000])
							{
								color([1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -5.000])
									{
										cylinder(10.100, 1.600, 1.600, true);
									}
								}
							}
						}
					}
				}
			}
			translate(v=[0.000, 0.000, 49.000])
			{
				cube(size=[2000.000, 2000.000, 102.000], center=true);
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


