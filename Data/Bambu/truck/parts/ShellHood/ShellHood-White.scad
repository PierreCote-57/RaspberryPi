$fs = 1.000;
$fa=1.000;
$fn=36.000;


// ShellHood-White
color([1.000, 1.000, 1.000])
{
	difference()
	{
		union()
		{
			translate(v=[45.000, 74.000, 5.000])
			{
				rotate(a=[0.000, 0.000, -90.000])
				{
// ClickTabFull
					union()
					{
						translate(v=[6.750, 0.000, 20.000])
						{
							rotate(a=[180.000, 0.000, 0.000])
							{
// Wedge
								scale(v=[13.500, 10.000, 20.000])
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
						translate(v=[10.000, 0.000, 0.000])
						{
// ClickTab
							translate(v=[1.500, 0.000, 10.000])
							{
								union()
								{
									color([0.000, 0.000, 1.000])
									{
										translate(v=[2.000, 0.000, -15.000])
										{
// Wedge
											scale(v=[4.000, 10.000, 10.000])
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
									color([0.000, 1.000, 0.000])
									{
										translate(v=[1.000, 0.000, -5.000])
										{
											cube(size=[2.000, 10.000, 10.000], center=true);
										}
									}
									color([0.000, 1.000, 0.000])
									{
										translate(v=[-4.000, 0.000, -10.000])
										{
											cube(size=[2.000, 10.000, 20.000], center=true);
										}
									}
									translate(v=[-1.500, 0.000, -1.000])
									{
										cube(size=[7.000, 10.000, 2.000], center=true);
									}
								}
							}
						}
					}
				}
			}
			translate(v=[45.000, -74.000, 5.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
// ClickTabFull
					union()
					{
						translate(v=[6.750, 0.000, 20.000])
						{
							rotate(a=[180.000, 0.000, 0.000])
							{
// Wedge
								scale(v=[13.500, 10.000, 20.000])
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
						translate(v=[10.000, 0.000, 0.000])
						{
// ClickTab
							translate(v=[1.500, 0.000, 10.000])
							{
								union()
								{
									color([0.000, 0.000, 1.000])
									{
										translate(v=[2.000, 0.000, -15.000])
										{
// Wedge
											scale(v=[4.000, 10.000, 10.000])
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
									color([0.000, 1.000, 0.000])
									{
										translate(v=[1.000, 0.000, -5.000])
										{
											cube(size=[2.000, 10.000, 10.000], center=true);
										}
									}
									color([0.000, 1.000, 0.000])
									{
										translate(v=[-4.000, 0.000, -10.000])
										{
											cube(size=[2.000, 10.000, 20.000], center=true);
										}
									}
									translate(v=[-1.500, 0.000, -1.000])
									{
										cube(size=[7.000, 10.000, 2.000], center=true);
									}
								}
							}
						}
					}
				}
			}
		}
// Shell-Hood
		color([1.000, 0.000, 0.000])
		{
			difference()
			{
				difference()
				{
					color([1.000, 0.784, 0.000])
					{
						scale(v=[1.000, 1.000, 2.000])
						{
							translate(v=[-62.500, 0.000, 0.000])
							{
								intersection()
								{
									intersection()
									{
										cube(size=[250.000, 150.000, 75.000], center=true);
										translate(v=[68.750, 0.000, 0.000])
										{
											cube(size=[137.500, 2000.000, 2000.000], center=true);
										}
									}
									translate(v=[0.000, 0.000, 41.250])
									{
										cube(size=[2000.000, 2000.000, 82.500], center=true);
									}
								}
							}
						}
					}
					color([1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -2.000])
						{
							scale(v=[0.973, 0.973, 1.000])
							{
								color([1.000, 0.784, 0.000])
								{
									scale(v=[1.000, 1.000, 2.000])
									{
										translate(v=[-62.500, 0.000, 0.000])
										{
											intersection()
											{
												intersection()
												{
													cube(size=[250.000, 150.000, 75.000], center=true);
													translate(v=[68.750, 0.000, 0.000])
													{
														cube(size=[137.500, 2000.000, 2000.000], center=true);
													}
												}
												translate(v=[0.000, 0.000, 41.250])
												{
													cube(size=[2000.000, 2000.000, 82.500], center=true);
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
					color([1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -2.000])
						{
							scale(v=[0.973, 0.973, 1.000])
							{
								color([1.000, 0.784, 0.000])
								{
									scale(v=[1.000, 1.000, 2.000])
									{
										translate(v=[-62.500, 0.000, 0.000])
										{
											intersection()
											{
												intersection()
												{
													cube(size=[250.000, 150.000, 75.000], center=true);
													translate(v=[68.750, 0.000, 0.000])
													{
														cube(size=[137.500, 2000.000, 2000.000], center=true);
													}
												}
												translate(v=[0.000, 0.000, 41.250])
												{
													cube(size=[2000.000, 2000.000, 82.500], center=true);
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v=[0.000, 0.000, -25.000])
				{
					rotate(a=[90.000, 0.000, 0.000])
					{
						cylinder(263.000, 50.000, 50.000, true);
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


