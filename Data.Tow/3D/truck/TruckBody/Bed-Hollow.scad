$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Bed-Hollow
union()
{
	difference()
	{
		rotate(a=[0.000, 0.000, 180.000])
		{
			difference()
			{
				color(c=[1.000, 0.784, 0.000])
				{
					scale(v=[1.000, 1.000, 2.000])
					{
						translate(v=[-82.500, 0.000, 0.000])
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
												cube(size=[310.000, 132.000, 45.000], center=true);
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
												cube(size=[310.000, 152.000, 25.000], center=true);
												rotate(a=[90.000, 0.000, 0.000])
												{
													cylinder(0.010, 10.000, 10.000, false);
												}
											}
										}
									}
									translate(v=[90.750, 0.000, 0.000])
									{
										cube(size=[181.500, 2000.000, 2000.000], center=true);
									}
								}
								translate(v=[0.000, 0.000, 24.750])
								{
									cube(size=[2000.000, 2000.000, 49.500], center=true);
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
									translate(v=[-82.500, 0.000, 0.000])
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
															cube(size=[310.000, 132.000, 45.000], center=true);
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
															cube(size=[310.000, 152.000, 25.000], center=true);
															rotate(a=[90.000, 0.000, 0.000])
															{
																cylinder(0.010, 10.000, 10.000, false);
															}
														}
													}
												}
												translate(v=[90.750, 0.000, 0.000])
												{
													cube(size=[181.500, 2000.000, 2000.000], center=true);
												}
											}
											translate(v=[0.000, 0.000, 24.750])
											{
												cube(size=[2000.000, 2000.000, 49.500], center=true);
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
		union()
		{
			translate(v=[69.500, 30.000, 44.000])
			{
				rotate(a=[180.000, 0.000, 0.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 0.000])
						{
							translate(v=[0.000, 0.000, 1.000])
							{
								cylinder(2.100, 3.100, 3.100, true, $fn=6);
							}
						}
						color(c=[1.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -1.000])
							{
								cylinder(2.100, 1.600, 1.600, true);
							}
						}
					}
				}
			}
			translate(v=[69.500, -30.000, 44.000])
			{
				rotate(a=[180.000, 0.000, 0.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 0.000])
						{
							translate(v=[0.000, 0.000, 1.000])
							{
								cylinder(2.100, 3.100, 3.100, true, $fn=6);
							}
						}
						color(c=[1.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -1.000])
							{
								cylinder(2.100, 1.600, 1.600, true);
							}
						}
					}
				}
			}
			translate(v=[49.500, 30.000, 44.000])
			{
				rotate(a=[180.000, 0.000, 0.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 0.000])
						{
							translate(v=[0.000, 0.000, 1.000])
							{
								cylinder(2.100, 3.100, 3.100, true, $fn=6);
							}
						}
						color(c=[1.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -1.000])
							{
								cylinder(2.100, 1.600, 1.600, true);
							}
						}
					}
				}
			}
			translate(v=[49.500, -30.000, 44.000])
			{
				rotate(a=[180.000, 0.000, 0.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 0.000])
						{
							translate(v=[0.000, 0.000, 1.000])
							{
								cylinder(2.100, 3.100, 3.100, true, $fn=6);
							}
						}
						color(c=[1.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -1.000])
							{
								cylinder(2.100, 1.600, 1.600, true);
							}
						}
					}
				}
			}
			translate(v=[59.500, 57.000, 44.000])
			{
				cube(size=[12.000, 5.000, 2.100], center=true);
			}
			translate(v=[59.500, -57.000, 44.000])
			{
				cube(size=[12.000, 5.000, 2.100], center=true);
			}
		}
		color(c=[0.000, 1.000, 1.000])
		{
			translate(v=[-80.500, 0.000, 11.250])
			{
				cube(size=[8.000, 50.000, 45.000], center=true);
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
	translate(v=[-82.500, 47.500, 0.000])
	{
		color(c=[0.000, 0.000, 1.000])
		{
			translate(v=[3.000, 0.000, 21.000])
			{
				rotate(a=[180.000, 0.000, 0.000])
				{
// Wedge
					scale(v=[6.000, 35.000, 30.000])
					{
						rotate(a=[0.000, -45.000, 0.000])
						{
							intersection()
							{
								rotate(a=[0.000, 45.000, 0.000])
								{
									cube(size=[1.000, 1.000, 1.000], center=true);
								}
								translate(v=[0.000, 0.000, 5.000])
								{
									cube(size=[2000.000, 2000.000, 10.000], center=true);
								}
							}
						}
					}
				}
			}
		}
	}
	translate(v=[-82.500, -47.500, 0.000])
	{
		color(c=[0.000, 0.000, 1.000])
		{
			translate(v=[3.000, 0.000, 21.000])
			{
				rotate(a=[180.000, 0.000, 0.000])
				{
// Wedge
					scale(v=[6.000, 35.000, 30.000])
					{
						rotate(a=[0.000, -45.000, 0.000])
						{
							intersection()
							{
								rotate(a=[0.000, 45.000, 0.000])
								{
									cube(size=[1.000, 1.000, 1.000], center=true);
								}
								translate(v=[0.000, 0.000, 5.000])
								{
									cube(size=[2000.000, 2000.000, 10.000], center=true);
								}
							}
						}
					}
				}
			}
		}
	}
	translate(v=[58.000, 76.000, 0.000])
	{
		rotate(a=[0.000, 0.000, -90.000])
		{
			color(c=[0.000, 0.000, 1.000])
			{
				translate(v=[3.000, 0.000, 21.000])
				{
					rotate(a=[180.000, 0.000, 0.000])
					{
// Wedge
						scale(v=[6.000, 40.000, 30.000])
						{
							rotate(a=[0.000, -45.000, 0.000])
							{
								intersection()
								{
									rotate(a=[0.000, 45.000, 0.000])
									{
										cube(size=[1.000, 1.000, 1.000], center=true);
									}
									translate(v=[0.000, 0.000, 5.000])
									{
										cube(size=[2000.000, 2000.000, 10.000], center=true);
									}
								}
							}
						}
					}
				}
			}
		}
	}
	translate(v=[58.000, -76.000, 0.000])
	{
		rotate(a=[0.000, 0.000, 90.000])
		{
			color(c=[0.000, 0.000, 1.000])
			{
				translate(v=[3.000, 0.000, 21.000])
				{
					rotate(a=[180.000, 0.000, 0.000])
					{
// Wedge
						scale(v=[6.000, 40.000, 30.000])
						{
							rotate(a=[0.000, -45.000, 0.000])
							{
								intersection()
								{
									rotate(a=[0.000, 45.000, 0.000])
									{
										cube(size=[1.000, 1.000, 1.000], center=true);
									}
									translate(v=[0.000, 0.000, 5.000])
									{
										cube(size=[2000.000, 2000.000, 10.000], center=true);
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


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


