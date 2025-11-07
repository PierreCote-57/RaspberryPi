$fs = 1.000;
$fa=1.000;
$fn=36.000;


// HoodPart
intersection()
{
	difference()
	{
// Shell
		difference()
		{
			union()
			{
				translate(v=[-45.000, 0.000, 0.000])
				{
					cube(size=[360.000, 150.000, 1.500], center=true);
				}
				translate(v=[90.000, 0.000, 0.000])
				{
// Hood
					difference()
					{
						translate(v=[-45.000, 0.000, 0.000])
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
												cube(size=[160.000, 130.000, 100.000], center=true);
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
												cube(size=[160.000, 150.000, 80.000], center=true);
												rotate(a=[90.000, 0.000, 0.000])
												{
													cylinder(0.010, 10.000, 10.000, false);
												}
											}
										}
									}
									translate(v=[49.500, 0.000, 0.000])
									{
										cube(size=[99.000, 2000.000, 2000.000], center=true);
									}
								}
								translate(v=[0.000, 0.000, 27.500])
								{
									cube(size=[2000.000, 2000.000, 55.000], center=true);
								}
							}
						}
						translate(v=[0.000, 0.000, -2.000])
						{
							scale(v=[0.950, 0.950, 1.000])
							{
								translate(v=[-45.000, 0.000, 0.000])
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
														cube(size=[160.000, 130.000, 100.000], center=true);
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
														cube(size=[160.000, 150.000, 80.000], center=true);
														rotate(a=[90.000, 0.000, 0.000])
														{
															cylinder(0.010, 10.000, 10.000, false);
														}
													}
												}
											}
											translate(v=[49.500, 0.000, 0.000])
											{
												cube(size=[99.000, 2000.000, 2000.000], center=true);
											}
										}
										translate(v=[0.000, 0.000, 27.500])
										{
											cube(size=[2000.000, 2000.000, 55.000], center=true);
										}
									}
								}
							}
						}
					}
				}
// Cab
				difference()
				{
					translate(v=[-45.000, 0.000, 0.000])
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
											cube(size=[160.000, 130.000, 200.000], center=true);
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
											cube(size=[160.000, 150.000, 180.000], center=true);
											rotate(a=[90.000, 0.000, 0.000])
											{
												cylinder(0.010, 10.000, 10.000, false);
											}
										}
									}
								}
								translate(v=[49.500, 0.000, 0.000])
								{
									cube(size=[99.000, 2000.000, 2000.000], center=true);
								}
							}
							translate(v=[0.000, 0.000, 55.000])
							{
								cube(size=[2000.000, 2000.000, 110.000], center=true);
							}
						}
					}
					translate(v=[0.000, 0.000, -2.000])
					{
						scale(v=[0.950, 0.950, 1.000])
						{
							translate(v=[-45.000, 0.000, 0.000])
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
													cube(size=[160.000, 130.000, 200.000], center=true);
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
													cube(size=[160.000, 150.000, 180.000], center=true);
													rotate(a=[90.000, 0.000, 0.000])
													{
														cylinder(0.010, 10.000, 10.000, false);
													}
												}
											}
										}
										translate(v=[49.500, 0.000, 0.000])
										{
											cube(size=[99.000, 2000.000, 2000.000], center=true);
										}
									}
									translate(v=[0.000, 0.000, 55.000])
									{
										cube(size=[2000.000, 2000.000, 110.000], center=true);
									}
								}
							}
						}
					}
				}
				translate(v=[-135.000, 0.000, 0.000])
				{
// Bed
					union()
					{
						translate(v=[0.000, 0.000, 1.500])
						{
							cube(size=[180.000, 150.000, 3.000], center=true);
						}
						translate(v=[80.000, 0.000, 10.000])
						{
							cube(size=[20.000, 135.000, 20.000], center=true);
						}
					}
				}
			}
			color(c=[1.000, 0.000, 0.000])
			{
				cube(size=[85.000, 145.000, 4.000], center=true);
			}
		}
		color(c=[1.000, 0.000, 0.000])
		{
			translate(v=[45.000, 37.500, 10.000])
			{
				rotate(a=[0.000, 90.000, 0.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
		}
		color(c=[1.000, 0.000, 0.000])
		{
			translate(v=[45.000, -37.500, 10.000])
			{
				rotate(a=[0.000, 90.000, 0.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
		}
		color(c=[1.000, 0.000, 0.000])
		{
			translate(v=[-45.000, 37.500, 10.000])
			{
				rotate(a=[0.000, 90.000, 0.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
		}
		color(c=[1.000, 0.000, 0.000])
		{
			translate(v=[-45.000, -37.500, 10.000])
			{
				rotate(a=[0.000, 90.000, 0.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
		}
	}
	translate(v=[202.505, 0.000, 0.000])
	{
		cube(size=[314.990, 2000.000, 2000.000], center=true);
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


