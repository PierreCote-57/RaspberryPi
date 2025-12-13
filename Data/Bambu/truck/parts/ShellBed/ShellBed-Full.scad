$fs = 1.000;
$fa=1.000;
$fn=36.000;


// ShellBed-Full
union()
{
// ShellBed-Blue
	color([0.000, 0.000, 1.000])
	{
		difference()
		{
// ShellBed
			difference()
			{
// Shell-Bed
				difference()
				{
					rotate(a=[0.000, 0.000, 180.000])
					{
						difference()
						{
							scale(v=[1.000, 1.000, 2.000])
							{
								translate(v=[-87.500, 0.000, 0.000])
								{
									intersection()
									{
										intersection()
										{
											cube(size=[350.000, 150.000, 50.000], center=true);
											translate(v=[96.250, 0.000, 0.000])
											{
												cube(size=[192.500, 2000.000, 2000.000], center=true);
											}
										}
										translate(v=[0.000, 0.000, 27.500])
										{
											cube(size=[2000.000, 2000.000, 55.000], center=true);
										}
									}
								}
							}
							translate(v=[0.000, 0.000, -2.000])
							{
								scale(v=[0.973, 0.973, 1.000])
								{
									scale(v=[1.000, 1.000, 2.000])
									{
										translate(v=[-87.500, 0.000, 0.000])
										{
											intersection()
											{
												intersection()
												{
													cube(size=[350.000, 150.000, 50.000], center=true);
													translate(v=[96.250, 0.000, 0.000])
													{
														cube(size=[192.500, 2000.000, 2000.000], center=true);
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
					}
					translate(v=[10.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -2.000])
						{
							scale(v=[0.973, 0.973, 1.000])
							{
								scale(v=[1.000, 1.000, 2.000])
								{
									translate(v=[-87.500, 0.000, 0.000])
									{
										intersection()
										{
											intersection()
											{
												cube(size=[350.000, 150.000, 50.000], center=true);
												translate(v=[96.250, 0.000, 0.000])
												{
													cube(size=[192.500, 2000.000, 2000.000], center=true);
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
					translate(v=[0.000, 0.000, -25.000])
					{
						rotate(a=[90.000, 0.000, 0.000])
						{
							cylinder(263.000, 50.000, 50.000, true);
						}
					}
				}
				translate(v=[59.500, 0.000, 50.000])
				{
					union()
					{
						rotate(a=[0.000, 0.000, 90.000])
						{
							union()
							{
								translate(v=[45.500, 0.000, -2.500])
								{
									cube(size=[5.000, 18.000, 10.000], center=true);
								}
								translate(v=[30.000, 10.000, 5.000])
								{
									color([1.000, 0.000, 0.000])
									{
										translate(v=[0.000, 0.000, -5.000])
										{
											cylinder(10.100, 1.600, 1.600, true);
										}
									}
								}
								translate(v=[30.000, -10.000, 5.000])
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
						rotate(a=[0.000, 0.000, -90.000])
						{
							union()
							{
								translate(v=[45.500, 0.000, -2.500])
								{
									cube(size=[5.000, 18.000, 10.000], center=true);
								}
								translate(v=[30.000, 10.000, 5.000])
								{
									color([1.000, 0.000, 0.000])
									{
										translate(v=[0.000, 0.000, -5.000])
										{
											cylinder(10.100, 1.600, 1.600, true);
										}
									}
								}
								translate(v=[30.000, -10.000, 5.000])
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
				translate(v=[-85.500, 0.000, 12.500])
				{
					cube(size=[8.000, 50.000, 50.000], center=true);
				}
			}
			union()
			{
				translate(v=[-65.000, 74.000, 5.000])
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
										translate(v=[1.000, 0.000, -5.000])
										{
											cube(size=[2.000, 10.000, 10.000], center=true);
										}
										translate(v=[-4.000, 0.000, -10.000])
										{
											cube(size=[2.000, 10.000, 20.000], center=true);
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
				translate(v=[-65.000, -74.000, 5.000])
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
										translate(v=[1.000, 0.000, -5.000])
										{
											cube(size=[2.000, 10.000, 10.000], center=true);
										}
										translate(v=[-4.000, 0.000, -10.000])
										{
											cube(size=[2.000, 10.000, 20.000], center=true);
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
		}
	}
// ShellBed-Gray
	color([0.502, 0.502, 0.502])
	{
		union()
		{
			translate(v=[-65.000, 74.000, 5.000])
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
									translate(v=[1.000, 0.000, -5.000])
									{
										cube(size=[2.000, 10.000, 10.000], center=true);
									}
									translate(v=[-4.000, 0.000, -10.000])
									{
										cube(size=[2.000, 10.000, 20.000], center=true);
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
			translate(v=[-65.000, -74.000, 5.000])
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
									translate(v=[1.000, 0.000, -5.000])
									{
										cube(size=[2.000, 10.000, 10.000], center=true);
									}
									translate(v=[-4.000, 0.000, -10.000])
									{
										cube(size=[2.000, 10.000, 20.000], center=true);
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
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


