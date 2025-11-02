$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TruckSupport
difference()
{
	intersection()
	{
// TruckSupport
		union()
		{
			translate(v=[-50.000, 0.000, 0.000])
			{
				union()
				{
					union()
					{
						translate(v=[0.000, 0.000, 2.500])
						{
							cube(size=[20.000, 40.000, 5.000], center=true);
						}
						translate(v=[0.000, 0.000, 15.000])
						{
							cube(size=[10.000, 20.000, 30.000], center=true);
						}
					}
					translate(v=[0.000, 0.000, 30.000])
					{
						union()
						{
							difference()
							{
								cube(size=[20.000, 60.000, 10.000], center=true);
								translate(v=[0.000, 0.000, 5.000])
								{
									cube(size=[20.010, 40.000, 10.000], center=true);
								}
							}
							translate(v=[-6.667, 0.000, 0.000])
							{
// Triangle
								scale(v=[6.667, 40.000, 5.000])
								{
									translate(v=[0.000, 0.000, 0.500])
									{
										difference()
										{
											cube(size=[1.000, 1.000, 1.000], center=true);
											rotate(a=[0.000, 45.000, 0.000])
											{
												translate(v=[0.000, 0.000, 2.500])
												{
													cube(size=[5.000, 5.000, 5.000], center=true);
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
			translate(v=[50.000, 0.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 180.000])
				{
					union()
					{
						union()
						{
							translate(v=[0.000, 0.000, 2.500])
							{
								cube(size=[20.000, 40.000, 5.000], center=true);
							}
							translate(v=[0.000, 0.000, 15.000])
							{
								cube(size=[10.000, 20.000, 30.000], center=true);
							}
						}
						translate(v=[0.000, 0.000, 30.000])
						{
							union()
							{
								difference()
								{
									cube(size=[20.000, 60.000, 10.000], center=true);
									translate(v=[0.000, 0.000, 5.000])
									{
										cube(size=[20.010, 40.000, 10.000], center=true);
									}
								}
								translate(v=[-6.667, 0.000, 0.000])
								{
// Triangle
									scale(v=[6.667, 40.000, 5.000])
									{
										translate(v=[0.000, 0.000, 0.500])
										{
											difference()
											{
												cube(size=[1.000, 1.000, 1.000], center=true);
												rotate(a=[0.000, 45.000, 0.000])
												{
													translate(v=[0.000, 0.000, 2.500])
													{
														cube(size=[5.000, 5.000, 5.000], center=true);
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
			}
			translate(v=[0.000, 0.000, 2.500])
			{
				cube(size=[100.000, 10.000, 5.000], center=true);
			}
		}
		translate(v=[500.000, 0.000, 0.000])
		{
			cube(size=[1000.000, 2000.000, 2000.000], center=true);
		}
	}
	color(c=[1.000, 0.000, 0.000])
	{
		translate(v=[0.000, -2.500, 2.500])
		{
			rotate(a=[0.000, 90.000, 0.000])
			{
				cylinder(20.000, 1.300, 1.300, true);
			}
		}
	}
	color(c=[1.000, 0.000, 0.000])
	{
		translate(v=[0.000, 2.500, 2.500])
		{
			rotate(a=[0.000, 90.000, 0.000])
			{
				cylinder(20.000, 1.300, 1.300, true);
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


