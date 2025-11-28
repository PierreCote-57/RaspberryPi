$fs = 1.000;
$fa=1.000;
$fn=36.000;


// CabSection
intersection()
{
	intersection()
	{
// Cab-Hollow
		union()
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
												cube(size=[180.000, 132.000, 120.000], center=true);
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
												cube(size=[180.000, 152.000, 100.000], center=true);
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
								translate(v=[0.000, 0.000, 66.000])
								{
									cube(size=[2000.000, 2000.000, 132.000], center=true);
								}
							}
						}
					}
				}
				translate(v=[2.000, 0.000, 0.000])
				{
					scale(v=[0.960, 1.000, 1.000])
					{
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
																	cube(size=[180.000, 132.000, 120.000], center=true);
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
																	cube(size=[180.000, 152.000, 100.000], center=true);
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
													translate(v=[0.000, 0.000, 66.000])
													{
														cube(size=[2000.000, 2000.000, 132.000], center=true);
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
				translate(v=[-122.500, 0.000, 0.000])
				{
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
				translate(v=[100.000, 0.000, 0.000])
				{
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
																cube(size=[180.000, 132.000, 75.000], center=true);
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
																cube(size=[180.000, 152.000, 55.000], center=true);
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
				translate(v=[0.000, 0.000, 67.000])
				{
					scale(v=[0.950, 1.100, 0.400])
					{
						translate(v=[2.000, 0.000, 0.000])
						{
							scale(v=[0.960, 1.000, 1.000])
							{
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
																			cube(size=[180.000, 132.000, 120.000], center=true);
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
																			cube(size=[180.000, 152.000, 100.000], center=true);
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
															translate(v=[0.000, 0.000, 66.000])
															{
																cube(size=[2000.000, 2000.000, 132.000], center=true);
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
				translate(v=[10.000, 0.000, 67.000])
				{
					scale(v=[0.950, 0.900, 0.350])
					{
						translate(v=[2.000, 0.000, 0.000])
						{
							scale(v=[0.960, 1.000, 1.000])
							{
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
																			cube(size=[180.000, 132.000, 120.000], center=true);
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
																			cube(size=[180.000, 152.000, 100.000], center=true);
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
															translate(v=[0.000, 0.000, 66.000])
															{
																cube(size=[2000.000, 2000.000, 132.000], center=true);
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
				translate(v=[-50.000, 0.000, 82.000])
				{
					cube(size=[5.000, 100.000, 44.000], center=true);
				}
				union()
				{
					translate(v=[-50.000, 46.750, 109.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							translate(v=[0.000, 0.000, 5.000])
							{
								color(c=[1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -5.000])
									{
										cylinder(10.100, 1.600, 1.600, true);
									}
								}
							}
						}
					}
					translate(v=[-50.000, -46.750, 109.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							translate(v=[0.000, 0.000, 5.000])
							{
								color(c=[1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -5.000])
									{
										cylinder(10.100, 1.600, 1.600, true);
									}
								}
							}
						}
					}
					translate(v=[-50.000, 46.750, 55.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							translate(v=[0.000, 0.000, 5.000])
							{
								color(c=[1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -5.000])
									{
										cylinder(10.100, 1.600, 1.600, true);
									}
								}
							}
						}
					}
					translate(v=[-50.000, -46.750, 55.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							translate(v=[0.000, 0.000, 5.000])
							{
								color(c=[1.000, 0.000, 0.000])
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
				union()
				{
					translate(v=[-10.000, 10.000, 0.000])
					{
						translate(v=[0.000, 0.000, 122.000])
						{
							color(c=[1.000, 0.000, 0.000])
							{
								translate(v=[0.000, 0.000, -5.000])
								{
									cylinder(10.100, 1.600, 1.600, true);
								}
							}
						}
					}
					translate(v=[-10.000, -10.000, 0.000])
					{
						translate(v=[0.000, 0.000, 122.000])
						{
							color(c=[1.000, 0.000, 0.000])
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
			color(c=[0.000, 0.000, 0.000])
			{
				translate(v=[20.000, 0.000, 6.000])
				{
					union()
					{
						translate(v=[0.000, 75.000, 0.000])
						{
							rotate(a=[0.000, 0.000, -90.000])
							{
// ClickTabFull
								union()
								{
									translate(v=[6.750, 0.000, 10.000])
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
										translate(v=[1.500, 0.000, 0.000])
										{
											union()
											{
												color(c=[0.000, 0.000, 1.000])
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
												color(c=[0.000, 1.000, 0.000])
												{
													translate(v=[1.000, 0.000, -5.000])
													{
														cube(size=[2.000, 10.000, 10.000], center=true);
													}
												}
												color(c=[0.000, 1.000, 0.000])
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
						translate(v=[0.000, -75.000, 0.000])
						{
							rotate(a=[0.000, 0.000, 90.000])
							{
// ClickTabFull
								union()
								{
									translate(v=[6.750, 0.000, 10.000])
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
										translate(v=[1.500, 0.000, 0.000])
										{
											union()
											{
												color(c=[0.000, 0.000, 1.000])
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
												color(c=[0.000, 1.000, 0.000])
												{
													translate(v=[1.000, 0.000, -5.000])
													{
														cube(size=[2.000, 10.000, 10.000], center=true);
													}
												}
												color(c=[0.000, 1.000, 0.000])
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
				}
			}
			translate(v=[0.000, 76.000, 0.000])
			{
				rotate(a=[0.000, 0.000, -90.000])
				{
					color(c=[0.000, 0.000, 1.000])
					{
						translate(v=[3.000, 0.000, 12.000])
						{
							rotate(a=[180.000, 0.000, 0.000])
							{
// Wedge
								scale(v=[6.000, 50.000, 12.000])
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
			translate(v=[0.000, -76.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					color(c=[0.000, 0.000, 1.000])
					{
						translate(v=[3.000, 0.000, 12.000])
						{
							rotate(a=[180.000, 0.000, 0.000])
							{
// Wedge
								scale(v=[6.000, 50.000, 12.000])
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
		translate(v=[0.000, 0.000, 85.500])
		{
			cube(size=[2000.000, 2000.000, 71.000], center=true);
		}
	}
	translate(v=[-50.000, 0.000, 0.000])
	{
		cube(size=[10.000, 2000.000, 2000.000], center=true);
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


