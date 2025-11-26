$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Hood-Hollow
difference()
{
	difference()
	{
		color(c=[1.000, 0.784, 0.000])
		{
			scale(v=[1.000, 1.000, 2.000])
			{
				translate(v=[-50.000, 0.000, 0.000])
				{
					intersection()
					{
						intersection()
						{
							intersection()
							{
								translate(v=[0.000, 0.000, 0.000])
								{
									minkowski()
									{
										cube(size=[180.000, 132.000, 55.000], center=true);
										rotate(a=[0.000, 0.000, 90.000])
										{
											cylinder(0.010, 10.000, 10.000, false);
										}
									}
								}
								translate(v=[0.000, 0.000, 0.000])
								{
									minkowski()
									{
										cube(size=[180.000, 152.000, 35.000], center=true);
										rotate(a=[90.000, 0.000, 0.000])
										{
											cylinder(0.010, 10.000, 10.000, false);
										}
									}
								}
							}
							translate(v=[55.000, 0.000, 0.000])
							{
								cube(size=[110.000, 2000.000, 2000.000], center=true);
							}
						}
						translate(v=[0.000, 0.000, 30.250])
						{
							cube(size=[2000.000, 2000.000, 60.500], center=true);
						}
					}
				}
			}
		}
		color(c=[1.000, 0.000, 0.000])
		{
			translate(v=[-2.000, 0.000, -2.000])
			{
				scale(v=[1.000, 0.974, 1.000])
				{
					color(c=[1.000, 0.784, 0.000])
					{
						scale(v=[1.000, 1.000, 2.000])
						{
							translate(v=[-50.000, 0.000, 0.000])
							{
								intersection()
								{
									intersection()
									{
										intersection()
										{
											translate(v=[0.000, 0.000, 0.000])
											{
												minkowski()
												{
													cube(size=[180.000, 132.000, 55.000], center=true);
													rotate(a=[0.000, 0.000, 90.000])
													{
														cylinder(0.010, 10.000, 10.000, false);
													}
												}
											}
											translate(v=[0.000, 0.000, 0.000])
											{
												minkowski()
												{
													cube(size=[180.000, 152.000, 35.000], center=true);
													rotate(a=[90.000, 0.000, 0.000])
													{
														cylinder(0.010, 10.000, 10.000, false);
													}
												}
											}
										}
										translate(v=[55.000, 0.000, 0.000])
										{
											cube(size=[110.000, 2000.000, 2000.000], center=true);
										}
									}
									translate(v=[0.000, 0.000, 30.250])
									{
										cube(size=[2000.000, 2000.000, 60.500], center=true);
									}
								}
							}
						}
					}
				}
			}
		}
	}
	translate(v=[-10.000, 0.000, 0.000])
	{
		translate(v=[0.000, 0.000, -27.500])
		{
			rotate(a=[90.000, 0.000, 0.000])
			{
				cylinder(162.000, 50.000, 50.000, true);
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


