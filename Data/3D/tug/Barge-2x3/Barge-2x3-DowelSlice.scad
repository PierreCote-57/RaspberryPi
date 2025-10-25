$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Barge-2x3-DowelSlice
intersection()
{
	intersection()
	{
// Barge-2x3
		difference()
		{
			translate(v=[0.000, 0.000, 153.000])
			{
				rotate(a=[0.000, 90.000, 0.000])
				{
					union()
					{
						difference()
						{
							translate(v=[0.000, 0.000, 23.813])
							{
								union()
								{
									cube(size=[306.000, 191.000, 47.625], center=true);
									color(c=[0.000, 0.000, 1.000])
									{
										translate(v=[-153.000, 0.000, 43.539])
										{
											intersection()
											{
												rotate(a=[90.000, 0.000, 0.000])
												{
													cylinder(191.000, 67.352, 67.352, true, $fn=180);
												}
												translate(v=[0.000, 0.000, -43.539])
												{
													cube(size=[2000.000, 2000.000, 47.625], center=true);
												}
											}
										}
									}
								}
							}
							translate(v=[-2.500, 0.000, 5.100])
							{
								scale(v=[0.984, 0.948, 1.000])
								{
									translate(v=[0.000, 0.000, 23.813])
									{
										union()
										{
											cube(size=[306.000, 191.000, 47.625], center=true);
											color(c=[0.000, 0.000, 1.000])
											{
												translate(v=[-153.000, 0.000, 43.539])
												{
													intersection()
													{
														rotate(a=[90.000, 0.000, 0.000])
														{
															cylinder(191.000, 67.352, 67.352, true, $fn=180);
														}
														translate(v=[0.000, 0.000, -43.539])
														{
															cube(size=[2000.000, 2000.000, 47.625], center=true);
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v=[150.500, 47.750, 0.000])
						{
							translate(v=[0.000, 0.000, 47.625])
							{
								scale(v=[1.000, 1.000, 1.000])
								{
									rotate(a=[0.000, 0.000, 90.000])
									{
										color(c=[0.000, 1.000, 0.000])
										{
											rotate(a=[0.000, 0.000, 0.000])
											{
// Bollar
												union()
												{
													translate(v=[0.000, 0.000, 0.000])
													{
														minkowski()
														{
															cube(size=[13.000, 0.500, 1.000], center=true);
															rotate(a=[0.000, 0.000, 90.000])
															{
																cylinder(0.010, 1.000, 1.000, false);
															}
														}
													}
													translate(v=[-3.750, 0.000, 5.000])
													{
														cylinder(10.000, 1.250, 1.250, true);
													}
													translate(v=[3.750, 0.000, 5.000])
													{
														cylinder(10.000, 1.250, 1.250, true);
													}
													translate(v=[0.000, 0.000, 6.660])
													{
														rotate(a=[0.000, 90.000, 0.000])
														{
															cylinder(15.000, 1.250, 1.250, true);
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v=[150.500, -47.750, 0.000])
						{
							translate(v=[0.000, 0.000, 47.625])
							{
								scale(v=[1.000, 1.000, 1.000])
								{
									rotate(a=[0.000, 0.000, 90.000])
									{
										color(c=[0.000, 1.000, 0.000])
										{
											rotate(a=[0.000, 0.000, 0.000])
											{
// Bollar
												union()
												{
													translate(v=[0.000, 0.000, 0.000])
													{
														minkowski()
														{
															cube(size=[13.000, 0.500, 1.000], center=true);
															rotate(a=[0.000, 0.000, 90.000])
															{
																cylinder(0.010, 1.000, 1.000, false);
															}
														}
													}
													translate(v=[-3.750, 0.000, 5.000])
													{
														cylinder(10.000, 1.250, 1.250, true);
													}
													translate(v=[3.750, 0.000, 5.000])
													{
														cylinder(10.000, 1.250, 1.250, true);
													}
													translate(v=[0.000, 0.000, 6.660])
													{
														rotate(a=[0.000, 90.000, 0.000])
														{
															cylinder(15.000, 1.250, 1.250, true);
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v=[-215.802, 47.750, 0.000])
						{
							translate(v=[0.000, 0.000, 47.625])
							{
								scale(v=[1.000, 1.000, 1.000])
								{
									rotate(a=[0.000, 0.000, 90.000])
									{
										color(c=[0.000, 1.000, 0.000])
										{
											rotate(a=[0.000, 0.000, 0.000])
											{
// Bollar
												union()
												{
													translate(v=[0.000, 0.000, 0.000])
													{
														minkowski()
														{
															cube(size=[13.000, 0.500, 1.000], center=true);
															rotate(a=[0.000, 0.000, 90.000])
															{
																cylinder(0.010, 1.000, 1.000, false);
															}
														}
													}
													translate(v=[-3.750, 0.000, 5.000])
													{
														cylinder(10.000, 1.250, 1.250, true);
													}
													translate(v=[3.750, 0.000, 5.000])
													{
														cylinder(10.000, 1.250, 1.250, true);
													}
													translate(v=[0.000, 0.000, 6.660])
													{
														rotate(a=[0.000, 90.000, 0.000])
														{
															cylinder(15.000, 1.250, 1.250, true);
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v=[-215.802, -47.750, 0.000])
						{
							translate(v=[0.000, 0.000, 47.625])
							{
								scale(v=[1.000, 1.000, 1.000])
								{
									rotate(a=[0.000, 0.000, 90.000])
									{
										color(c=[0.000, 1.000, 0.000])
										{
											rotate(a=[0.000, 0.000, 0.000])
											{
// Bollar
												union()
												{
													translate(v=[0.000, 0.000, 0.000])
													{
														minkowski()
														{
															cube(size=[13.000, 0.500, 1.000], center=true);
															rotate(a=[0.000, 0.000, 90.000])
															{
																cylinder(0.010, 1.000, 1.000, false);
															}
														}
													}
													translate(v=[-3.750, 0.000, 5.000])
													{
														cylinder(10.000, 1.250, 1.250, true);
													}
													translate(v=[3.750, 0.000, 5.000])
													{
														cylinder(10.000, 1.250, 1.250, true);
													}
													translate(v=[0.000, 0.000, 6.660])
													{
														rotate(a=[0.000, 90.000, 0.000])
														{
															cylinder(15.000, 1.250, 1.250, true);
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v=[75.000, 93.000, 0.000])
						{
							rotate(a=[0.000, 0.000, 90.000])
							{
								translate(v=[0.000, 0.000, 47.625])
								{
									scale(v=[1.000, 1.000, 1.000])
									{
										rotate(a=[0.000, 0.000, 90.000])
										{
											color(c=[0.000, 1.000, 0.000])
											{
												rotate(a=[0.000, 0.000, 0.000])
												{
// Bollar
													union()
													{
														translate(v=[0.000, 0.000, 0.000])
														{
															minkowski()
															{
																cube(size=[13.000, 0.500, 1.000], center=true);
																rotate(a=[0.000, 0.000, 90.000])
																{
																	cylinder(0.010, 1.000, 1.000, false);
																}
															}
														}
														translate(v=[-3.750, 0.000, 5.000])
														{
															cylinder(10.000, 1.250, 1.250, true);
														}
														translate(v=[3.750, 0.000, 5.000])
														{
															cylinder(10.000, 1.250, 1.250, true);
														}
														translate(v=[0.000, 0.000, 6.660])
														{
															rotate(a=[0.000, 90.000, 0.000])
															{
																cylinder(15.000, 1.250, 1.250, true);
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
						translate(v=[75.000, -93.000, 0.000])
						{
							rotate(a=[0.000, 0.000, 90.000])
							{
								translate(v=[0.000, 0.000, 47.625])
								{
									scale(v=[1.000, 1.000, 1.000])
									{
										rotate(a=[0.000, 0.000, 90.000])
										{
											color(c=[0.000, 1.000, 0.000])
											{
												rotate(a=[0.000, 0.000, 0.000])
												{
// Bollar
													union()
													{
														translate(v=[0.000, 0.000, 0.000])
														{
															minkowski()
															{
																cube(size=[13.000, 0.500, 1.000], center=true);
																rotate(a=[0.000, 0.000, 90.000])
																{
																	cylinder(0.010, 1.000, 1.000, false);
																}
															}
														}
														translate(v=[-3.750, 0.000, 5.000])
														{
															cylinder(10.000, 1.250, 1.250, true);
														}
														translate(v=[3.750, 0.000, 5.000])
														{
															cylinder(10.000, 1.250, 1.250, true);
														}
														translate(v=[0.000, 0.000, 6.660])
														{
															rotate(a=[0.000, 90.000, 0.000])
															{
																cylinder(15.000, 1.250, 1.250, true);
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
						translate(v=[-75.000, 93.000, 0.000])
						{
							rotate(a=[0.000, 0.000, 90.000])
							{
								translate(v=[0.000, 0.000, 47.625])
								{
									scale(v=[1.000, 1.000, 1.000])
									{
										rotate(a=[0.000, 0.000, 90.000])
										{
											color(c=[0.000, 1.000, 0.000])
											{
												rotate(a=[0.000, 0.000, 0.000])
												{
// Bollar
													union()
													{
														translate(v=[0.000, 0.000, 0.000])
														{
															minkowski()
															{
																cube(size=[13.000, 0.500, 1.000], center=true);
																rotate(a=[0.000, 0.000, 90.000])
																{
																	cylinder(0.010, 1.000, 1.000, false);
																}
															}
														}
														translate(v=[-3.750, 0.000, 5.000])
														{
															cylinder(10.000, 1.250, 1.250, true);
														}
														translate(v=[3.750, 0.000, 5.000])
														{
															cylinder(10.000, 1.250, 1.250, true);
														}
														translate(v=[0.000, 0.000, 6.660])
														{
															rotate(a=[0.000, 90.000, 0.000])
															{
																cylinder(15.000, 1.250, 1.250, true);
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
						translate(v=[-75.000, -93.000, 0.000])
						{
							rotate(a=[0.000, 0.000, 90.000])
							{
								translate(v=[0.000, 0.000, 47.625])
								{
									scale(v=[1.000, 1.000, 1.000])
									{
										rotate(a=[0.000, 0.000, 90.000])
										{
											color(c=[0.000, 1.000, 0.000])
											{
												rotate(a=[0.000, 0.000, 0.000])
												{
// Bollar
													union()
													{
														translate(v=[0.000, 0.000, 0.000])
														{
															minkowski()
															{
																cube(size=[13.000, 0.500, 1.000], center=true);
																rotate(a=[0.000, 0.000, 90.000])
																{
																	cylinder(0.010, 1.000, 1.000, false);
																}
															}
														}
														translate(v=[-3.750, 0.000, 5.000])
														{
															cylinder(10.000, 1.250, 1.250, true);
														}
														translate(v=[3.750, 0.000, 5.000])
														{
															cylinder(10.000, 1.250, 1.250, true);
														}
														translate(v=[0.000, 0.000, 6.660])
														{
															rotate(a=[0.000, 90.000, 0.000])
															{
																cylinder(15.000, 1.250, 1.250, true);
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
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[2.500, 0.000, 156.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[2.500, -0.000, 156.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[2.500, 47.750, 156.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[2.500, -47.750, 156.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[2.500, 85.950, 156.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[2.500, -85.950, 156.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[35.719, 93.000, 156.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[35.719, -93.000, 156.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[2.500, 0.000, 306.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[2.500, -0.000, 306.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[2.500, 47.750, 306.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[2.500, -47.750, 306.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[2.500, 85.950, 306.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[2.500, -85.950, 306.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[35.719, 93.000, 306.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
			color(c=[0.000, 1.000, 0.000])
			{
				translate(v=[35.719, -93.000, 306.000])
				{
					cylinder(20.000, 1.300, 1.300, true);
				}
			}
		}
		translate(v=[0.000, 0.000, 148.500])
		{
			cube(size=[2000.000, 2000.000, 15.000], center=true);
		}
	}
	translate(v=[0.000, 0.000, 0.000])
	{
		cube(size=[2000.000, 14.000, 2000.000], center=true);
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


