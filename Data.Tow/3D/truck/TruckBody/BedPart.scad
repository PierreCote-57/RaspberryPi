$fs = 1.000;
$fa=1.000;
$fn=36.000;


// BedPart
intersection()
{
// ShellPart
	union()
	{
		translate(v=[100.000, 0.000, 0.000])
		{
// Hood-Hollow
			difference()
			{
				difference()
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
											cube(size=[180.000, 90.000, 100.000], center=true);
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
											cube(size=[180.000, 110.000, 80.000], center=true);
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
							translate(v=[0.000, 0.000, 27.500])
							{
								cube(size=[2000.000, 2000.000, 55.000], center=true);
							}
						}
					}
					translate(v=[0.000, 0.000, -4.000])
					{
						scale(v=[0.950, 0.950, 1.000])
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
													cube(size=[180.000, 90.000, 100.000], center=true);
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
													cube(size=[180.000, 110.000, 80.000], center=true);
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
									translate(v=[0.000, 0.000, 27.500])
									{
										cube(size=[2000.000, 2000.000, 55.000], center=true);
									}
								}
							}
						}
					}
				}
				translate(v=[-10.000, 0.000, 0.000])
				{
					translate(v=[0.000, 0.000, -4.000])
					{
						scale(v=[0.950, 0.950, 1.000])
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
													cube(size=[180.000, 90.000, 100.000], center=true);
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
													cube(size=[180.000, 110.000, 80.000], center=true);
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
// Cab-Hollow
		difference()
		{
			color(c=[0.000, 1.000, 0.000])
			{
				difference()
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
											cube(size=[180.000, 130.000, 200.000], center=true);
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
											cube(size=[180.000, 150.000, 180.000], center=true);
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
							translate(v=[0.000, 0.000, 55.000])
							{
								cube(size=[2000.000, 2000.000, 110.000], center=true);
							}
						}
					}
					translate(v=[0.000, 0.000, -4.000])
					{
						scale(v=[0.950, 0.950, 1.000])
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
													cube(size=[180.000, 130.000, 200.000], center=true);
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
													cube(size=[180.000, 150.000, 180.000], center=true);
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
									translate(v=[0.000, 0.000, 55.000])
									{
										cube(size=[2000.000, 2000.000, 110.000], center=true);
									}
								}
							}
						}
					}
				}
			}
			translate(v=[0.000, 0.000, 55.000])
			{
				scale(v=[0.950, 1.100, 0.400])
				{
					translate(v=[0.000, 0.000, -4.000])
					{
						scale(v=[0.950, 0.950, 1.000])
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
													cube(size=[180.000, 130.000, 200.000], center=true);
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
													cube(size=[180.000, 150.000, 180.000], center=true);
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
									translate(v=[0.000, 0.000, 55.000])
									{
										cube(size=[2000.000, 2000.000, 110.000], center=true);
									}
								}
							}
						}
					}
				}
			}
			translate(v=[-122.500, 10.000, -0.100])
			{
				color(c=[1.000, 0.000, 0.000])
				{
// Bed-Solid
					rotate(a=[0.000, 0.000, 180.000])
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
												cube(size=[310.000, 110.000, 40.000], center=true);
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
												cube(size=[310.000, 130.000, 20.000], center=true);
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
								translate(v=[0.000, 0.000, 11.000])
								{
									cube(size=[2000.000, 2000.000, 22.000], center=true);
								}
							}
						}
					}
				}
			}
			translate(v=[90.000, 0.000, -0.100])
			{
				color(c=[1.000, 0.000, 0.000])
				{
// Hood-Solid
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
											cube(size=[180.000, 90.000, 100.000], center=true);
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
											cube(size=[180.000, 110.000, 80.000], center=true);
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
							translate(v=[0.000, 0.000, 27.500])
							{
								cube(size=[2000.000, 2000.000, 55.000], center=true);
							}
						}
					}
				}
			}
		}
		translate(v=[-132.500, 0.000, 0.000])
		{
// Bed-Hollow
			difference()
			{
				rotate(a=[0.000, 0.000, 180.000])
				{
					difference()
					{
						difference()
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
													cube(size=[310.000, 110.000, 40.000], center=true);
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
													cube(size=[310.000, 130.000, 20.000], center=true);
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
									translate(v=[0.000, 0.000, 11.000])
									{
										cube(size=[2000.000, 2000.000, 22.000], center=true);
									}
								}
							}
							translate(v=[0.000, 0.000, -4.000])
							{
								scale(v=[0.950, 0.950, 1.000])
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
															cube(size=[310.000, 110.000, 40.000], center=true);
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
															cube(size=[310.000, 130.000, 20.000], center=true);
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
											translate(v=[0.000, 0.000, 11.000])
											{
												cube(size=[2000.000, 2000.000, 22.000], center=true);
											}
										}
									}
								}
							}
						}
						translate(v=[-10.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -4.000])
							{
								scale(v=[0.950, 0.950, 1.000])
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
															cube(size=[310.000, 110.000, 40.000], center=true);
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
															cube(size=[310.000, 130.000, 20.000], center=true);
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
											translate(v=[0.000, 0.000, 11.000])
											{
												cube(size=[2000.000, 2000.000, 22.000], center=true);
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v=[62.500, 15.000, 18.000])
				{
					rotate(a=[180.000, 0.000, 0.000])
					{
						union()
						{
							color(c=[0.000, 1.000, 0.000])
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 3.000, 3.000, true, $fn=6);
								}
							}
							color(c=[1.000, 0.000, 0.000])
							{
								translate(v=[0.000, 0.000, -2.000])
								{
									cylinder(4.100, 1.500, 1.500, true);
								}
							}
						}
					}
				}
				translate(v=[62.500, -15.000, 18.000])
				{
					rotate(a=[180.000, 0.000, 0.000])
					{
						union()
						{
							color(c=[0.000, 1.000, 0.000])
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 3.000, 3.000, true, $fn=6);
								}
							}
							color(c=[1.000, 0.000, 0.000])
							{
								translate(v=[0.000, 0.000, -2.000])
								{
									cylinder(4.100, 1.500, 1.500, true);
								}
							}
						}
					}
				}
			}
		}
	}
	translate(v=[-207.500, 0.000, 0.000])
	{
		cube(size=[315.000, 2000.000, 2000.000], center=true);
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


