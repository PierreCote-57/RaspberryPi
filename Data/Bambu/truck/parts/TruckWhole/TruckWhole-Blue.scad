$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TruckWhole-Blue
color([0.000, 0.000, 1.000])
{
	difference()
	{
		translate(v=[57.500, 0.000, 0.000])
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
		}
// Union-Red
		union()
		{
			translate(v=[202.500, 0.000, 0.000])
			{
				difference()
				{
					difference()
					{
						difference()
						{
							scale(v=[1.000, 1.000, 2.000])
							{
								translate(v=[-57.500, 0.000, 0.000])
								{
									intersection()
									{
										intersection()
										{
											cube(size=[230.000, 150.000, 150.000], center=true);
											translate(v=[63.250, 0.000, 0.000])
											{
												cube(size=[126.500, 2000.000, 2000.000], center=true);
											}
										}
										translate(v=[0.000, 0.000, 82.500])
										{
											cube(size=[2000.000, 2000.000, 165.000], center=true);
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
										translate(v=[-57.500, 0.000, 0.000])
										{
											intersection()
											{
												intersection()
												{
													cube(size=[230.000, 150.000, 150.000], center=true);
													translate(v=[63.250, 0.000, 0.000])
													{
														cube(size=[126.500, 2000.000, 2000.000], center=true);
													}
												}
												translate(v=[0.000, 0.000, 82.500])
												{
													cube(size=[2000.000, 2000.000, 165.000], center=true);
												}
											}
										}
									}
								}
							}
						}
						translate(v=[-87.500, 0.000, 0.000])
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
						translate(v=[62.500, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -2.000])
							{
								scale(v=[0.973, 0.973, 1.000])
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
					translate(v=[0.000, 0.000, 87.500])
					{
						scale(v=[0.800, 2.000, 0.350])
						{
							scale(v=[1.000, 1.000, 2.000])
							{
								translate(v=[-57.500, 0.000, 0.000])
								{
									intersection()
									{
										intersection()
										{
											cube(size=[230.000, 150.000, 150.000], center=true);
											translate(v=[63.250, 0.000, 0.000])
											{
												cube(size=[126.500, 2000.000, 2000.000], center=true);
											}
										}
										translate(v=[0.000, 0.000, 82.500])
										{
											cube(size=[2000.000, 2000.000, 165.000], center=true);
										}
									}
								}
							}
						}
					}
					translate(v=[25.000, 0.000, 87.500])
					{
						scale(v=[0.800, 0.800, 0.350])
						{
							scale(v=[1.000, 1.000, 2.000])
							{
								translate(v=[-57.500, 0.000, 0.000])
								{
									intersection()
									{
										intersection()
										{
											cube(size=[230.000, 150.000, 150.000], center=true);
											translate(v=[63.250, 0.000, 0.000])
											{
												cube(size=[126.500, 2000.000, 2000.000], center=true);
											}
										}
										translate(v=[0.000, 0.000, 82.500])
										{
											cube(size=[2000.000, 2000.000, 165.000], center=true);
										}
									}
								}
							}
						}
					}
					translate(v=[-57.500, 0.000, 112.500])
					{
						rotate(a=[90.000, 0.000, 90.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 0.000])
								{
									minkowski()
									{
										cube(size=[92.000, 40.000, 10.000], center=true);
										rotate(a=[0.000, 0.000, 90.000])
										{
											cylinder(0.010, 3.000, 3.000, false);
										}
									}
								}
								translate(v=[0.000, 0.000, 5.000])
								{
// Display
									union()
									{
										translate(v=[49.500, 27.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 5.000])
														{
															cylinder(10.100, 3.100, 3.100, true, $fn=6);
														}
													}
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
										translate(v=[49.500, -27.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 5.000])
														{
															cylinder(10.100, 3.100, 3.100, true, $fn=6);
														}
													}
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
										translate(v=[-49.500, 27.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 5.000])
														{
															cylinder(10.100, 3.100, 3.100, true, $fn=6);
														}
													}
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
										translate(v=[-49.500, -27.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 5.000])
														{
															cylinder(10.100, 3.100, 3.100, true, $fn=6);
														}
													}
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
							}
						}
					}
					translate(v=[0.000, 0.000, 151.000])
					{
						union()
						{
							scale(v=[1.000, 1.000, 25.000])
							{
								translate(v=[0.000, 0.000, 0.000])
								{
// RGB
									union()
									{
										translate(v=[7.500, 7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.500])
														{
															cylinder(1.100, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.500])
														{
															cylinder(1.100, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[7.500, -7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.500])
														{
															cylinder(1.100, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.500])
														{
															cylinder(1.100, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[-7.500, 7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.500])
														{
															cylinder(1.100, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.500])
														{
															cylinder(1.100, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[-7.500, -7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.500])
														{
															cylinder(1.100, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.500])
														{
															cylinder(1.100, 1.600, 1.600, true);
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v=[0.000, 0.000, -2.000])
							{
								scale(v=[0.550, 0.550, 1.000])
								{
									translate(v=[0.000, 0.000, 0.000])
									{
										minkowski()
										{
											cube(size=[15.000, 15.000, 3.000], center=true);
											rotate(a=[0.000, 0.000, 90.000])
											{
												cylinder(0.010, 3.000, 3.000, false);
											}
										}
									}
								}
							}
						}
					}
				}
			}
			translate(v=[322.500, 0.000, 0.000])
			{
// Shell-Hood
				difference()
				{
					difference()
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
						translate(v=[0.000, 0.000, -2.000])
						{
							scale(v=[0.973, 0.973, 1.000])
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
					translate(v=[-10.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -2.000])
						{
							scale(v=[0.973, 0.973, 1.000])
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
// Union-Red
		union()
		{
			translate(v=[202.500, 0.000, 0.000])
			{
				difference()
				{
					difference()
					{
						difference()
						{
							scale(v=[1.000, 1.000, 2.000])
							{
								translate(v=[-57.500, 0.000, 0.000])
								{
									intersection()
									{
										intersection()
										{
											cube(size=[230.000, 150.000, 150.000], center=true);
											translate(v=[63.250, 0.000, 0.000])
											{
												cube(size=[126.500, 2000.000, 2000.000], center=true);
											}
										}
										translate(v=[0.000, 0.000, 82.500])
										{
											cube(size=[2000.000, 2000.000, 165.000], center=true);
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
										translate(v=[-57.500, 0.000, 0.000])
										{
											intersection()
											{
												intersection()
												{
													cube(size=[230.000, 150.000, 150.000], center=true);
													translate(v=[63.250, 0.000, 0.000])
													{
														cube(size=[126.500, 2000.000, 2000.000], center=true);
													}
												}
												translate(v=[0.000, 0.000, 82.500])
												{
													cube(size=[2000.000, 2000.000, 165.000], center=true);
												}
											}
										}
									}
								}
							}
						}
						translate(v=[-87.500, 0.000, 0.000])
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
						translate(v=[62.500, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -2.000])
							{
								scale(v=[0.973, 0.973, 1.000])
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
					translate(v=[0.000, 0.000, 87.500])
					{
						scale(v=[0.800, 2.000, 0.350])
						{
							scale(v=[1.000, 1.000, 2.000])
							{
								translate(v=[-57.500, 0.000, 0.000])
								{
									intersection()
									{
										intersection()
										{
											cube(size=[230.000, 150.000, 150.000], center=true);
											translate(v=[63.250, 0.000, 0.000])
											{
												cube(size=[126.500, 2000.000, 2000.000], center=true);
											}
										}
										translate(v=[0.000, 0.000, 82.500])
										{
											cube(size=[2000.000, 2000.000, 165.000], center=true);
										}
									}
								}
							}
						}
					}
					translate(v=[25.000, 0.000, 87.500])
					{
						scale(v=[0.800, 0.800, 0.350])
						{
							scale(v=[1.000, 1.000, 2.000])
							{
								translate(v=[-57.500, 0.000, 0.000])
								{
									intersection()
									{
										intersection()
										{
											cube(size=[230.000, 150.000, 150.000], center=true);
											translate(v=[63.250, 0.000, 0.000])
											{
												cube(size=[126.500, 2000.000, 2000.000], center=true);
											}
										}
										translate(v=[0.000, 0.000, 82.500])
										{
											cube(size=[2000.000, 2000.000, 165.000], center=true);
										}
									}
								}
							}
						}
					}
					translate(v=[-57.500, 0.000, 112.500])
					{
						rotate(a=[90.000, 0.000, 90.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 0.000])
								{
									minkowski()
									{
										cube(size=[92.000, 40.000, 10.000], center=true);
										rotate(a=[0.000, 0.000, 90.000])
										{
											cylinder(0.010, 3.000, 3.000, false);
										}
									}
								}
								translate(v=[0.000, 0.000, 5.000])
								{
// Display
									union()
									{
										translate(v=[49.500, 27.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 5.000])
														{
															cylinder(10.100, 3.100, 3.100, true, $fn=6);
														}
													}
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
										translate(v=[49.500, -27.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 5.000])
														{
															cylinder(10.100, 3.100, 3.100, true, $fn=6);
														}
													}
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
										translate(v=[-49.500, 27.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 5.000])
														{
															cylinder(10.100, 3.100, 3.100, true, $fn=6);
														}
													}
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
										translate(v=[-49.500, -27.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 5.000])
														{
															cylinder(10.100, 3.100, 3.100, true, $fn=6);
														}
													}
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
							}
						}
					}
					translate(v=[0.000, 0.000, 151.000])
					{
						union()
						{
							scale(v=[1.000, 1.000, 25.000])
							{
								translate(v=[0.000, 0.000, 0.000])
								{
// RGB
									union()
									{
										translate(v=[7.500, 7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.500])
														{
															cylinder(1.100, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.500])
														{
															cylinder(1.100, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[7.500, -7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.500])
														{
															cylinder(1.100, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.500])
														{
															cylinder(1.100, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[-7.500, 7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.500])
														{
															cylinder(1.100, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.500])
														{
															cylinder(1.100, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[-7.500, -7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.500])
														{
															cylinder(1.100, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.500])
														{
															cylinder(1.100, 1.600, 1.600, true);
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v=[0.000, 0.000, -2.000])
							{
								scale(v=[0.550, 0.550, 1.000])
								{
									translate(v=[0.000, 0.000, 0.000])
									{
										minkowski()
										{
											cube(size=[15.000, 15.000, 3.000], center=true);
											rotate(a=[0.000, 0.000, 90.000])
											{
												cylinder(0.010, 3.000, 3.000, false);
											}
										}
									}
								}
							}
						}
					}
				}
			}
			translate(v=[322.500, 0.000, 0.000])
			{
// Shell-Hood
				difference()
				{
					difference()
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
						translate(v=[0.000, 0.000, -2.000])
						{
							scale(v=[0.973, 0.973, 1.000])
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
					translate(v=[-10.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -2.000])
						{
							scale(v=[0.973, 0.973, 1.000])
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
// Union-Gray
		union()
		{
			translate(v=[57.500, 0.000, 0.000])
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
			translate(v=[202.500, 0.000, 0.000])
			{
				union()
				{
					translate(v=[35.000, 74.000, 5.000])
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
					translate(v=[35.000, -74.000, 5.000])
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
			translate(v=[322.500, 0.000, 0.000])
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
			translate(v=[0.000, 0.000, 0.000])
			{
// PlatformPrimary-Base
				union()
				{
					difference()
					{
						translate(v=[178.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, 0.000])
							{
								minkowski()
								{
									cube(size=[389.000, 124.000, 4.000], center=true);
									rotate(a=[0.000, 0.000, 90.000])
									{
										cylinder(0.010, 10.000, 10.000, false);
									}
								}
							}
						}
// PlatformPrimary-DowelList
						union()
						{
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, 5.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, -5.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, 15.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, -15.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, 25.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, -25.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, 35.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, -35.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, 45.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, -45.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, 55.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, -55.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, 65.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, -65.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, 75.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, -75.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, 85.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, -85.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, 95.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, -95.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, 105.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, -105.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, 115.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, -115.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, 125.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, -125.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, 135.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, -135.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, 145.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[100.000, -145.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, 5.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, -5.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, 15.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, -15.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, 25.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, -25.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, 35.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, -35.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, 45.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, -45.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, 55.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, -55.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, 65.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, -65.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, 75.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, -75.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, 85.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, -85.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, 95.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, -95.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, 105.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, -105.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, 115.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, -115.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, 125.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, -125.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, 135.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, -135.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, 145.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[275.000, -145.000, 0.000])
								{
									rotate(a=[0.000, 90.000, 0.000])
									{
										cylinder(20.000, 1.300, 1.300, true);
									}
								}
							}
						}
// PlatformPrimary-WheelCutout
						union()
						{
							translate(v=[80.000, 0.000, 0.000])
							{
								scale(v=[1.000, 1.000, 1.500])
								{
									union()
									{
										translate(v=[0.000, 100.000, 0.000])
										{
											cube(size=[100.000, 90.000, 10.000], center=true);
										}
										translate(v=[0.000, -100.000, 0.000])
										{
											cube(size=[100.000, 90.000, 10.000], center=true);
										}
									}
								}
							}
							translate(v=[302.000, 0.000, 0.000])
							{
								scale(v=[1.000, 1.000, 1.500])
								{
									union()
									{
										translate(v=[0.000, 100.000, 0.000])
										{
											cube(size=[100.000, 90.000, 10.000], center=true);
										}
										translate(v=[0.000, -100.000, 0.000])
										{
											cube(size=[100.000, 90.000, 10.000], center=true);
										}
									}
								}
							}
						}
// PlatformPrimary-PostCutout
						union()
						{
							translate(v=[75.000, 0.000, 0.000])
							{
								difference()
								{
									cube(size=[70.000, 151.000, 8.000], center=true);
									cube(size=[70.000, 25.000, 12.000], center=true);
								}
							}
							translate(v=[300.000, 0.000, 0.000])
							{
								difference()
								{
									cube(size=[70.000, 151.000, 8.000], center=true);
									cube(size=[70.000, 25.000, 12.000], center=true);
								}
							}
						}
// PlatformPrimary-ClickTabHoles
						union()
						{
							translate(v=[57.500, 0.000, 0.000])
							{
								union()
								{
									translate(v=[-65.000, 64.000, -4.000])
									{
										rotate(a=[0.000, 0.000, 90.000])
										{
// ClickHole-8.0
											translate(v=[0.000, 0.000, 4.000])
											{
												cube(size=[9.000, 12.000, 8.100], center=true);
											}
										}
									}
									translate(v=[-65.000, -64.000, -4.000])
									{
										rotate(a=[0.000, 0.000, 90.000])
										{
// ClickHole-8.0
											translate(v=[0.000, 0.000, 4.000])
											{
												cube(size=[9.000, 12.000, 8.100], center=true);
											}
										}
									}
								}
							}
							translate(v=[202.500, 0.000, 0.000])
							{
								union()
								{
									translate(v=[35.000, 64.000, -4.000])
									{
										rotate(a=[0.000, 0.000, 90.000])
										{
// ClickHole-8.0
											translate(v=[0.000, 0.000, 4.000])
											{
												cube(size=[9.000, 12.000, 8.100], center=true);
											}
										}
									}
									translate(v=[35.000, -64.000, -4.000])
									{
										rotate(a=[0.000, 0.000, 90.000])
										{
// ClickHole-8.0
											translate(v=[0.000, 0.000, 4.000])
											{
												cube(size=[9.000, 12.000, 8.100], center=true);
											}
										}
									}
								}
							}
							translate(v=[322.500, 0.000, 0.000])
							{
								union()
								{
									translate(v=[45.000, 64.000, -4.000])
									{
										rotate(a=[0.000, 0.000, 90.000])
										{
// ClickHole-8.0
											translate(v=[0.000, 0.000, 4.000])
											{
												cube(size=[9.000, 12.000, 8.100], center=true);
											}
										}
									}
									translate(v=[45.000, -64.000, -4.000])
									{
										rotate(a=[0.000, 0.000, 90.000])
										{
// ClickHole-8.0
											translate(v=[0.000, 0.000, 4.000])
											{
												cube(size=[9.000, 12.000, 8.100], center=true);
											}
										}
									}
								}
							}
						}
// PlatformPrimary-SupportHoles
						union()
						{
							translate(v=[61.000, 20.500, 0.000])
							{
								translate(v=[0.000, 0.000, 4.000])
								{
									color([1.000, 0.000, 0.000])
									{
										translate(v=[0.000, 0.000, -4.000])
										{
											cylinder(8.100, 1.600, 1.600, true);
										}
									}
								}
							}
							translate(v=[61.000, -20.500, 0.000])
							{
								translate(v=[0.000, 0.000, 4.000])
								{
									color([1.000, 0.000, 0.000])
									{
										translate(v=[0.000, 0.000, -4.000])
										{
											cylinder(8.100, 1.600, 1.600, true);
										}
									}
								}
							}
							translate(v=[193.000, 10.000, 0.000])
							{
								union()
								{
									color([0.000, 1.000, 0.000])
									{
										translate(v=[0.000, 0.000, 2.000])
										{
											cylinder(4.100, 3.100, 3.100, true, $fn=6);
										}
									}
									color([1.000, 0.000, 0.000])
									{
										translate(v=[0.000, 0.000, -2.000])
										{
											cylinder(4.100, 1.600, 1.600, true);
										}
									}
								}
							}
							translate(v=[287.000, 0.000, 0.000])
							{
								translate(v=[0.000, 0.000, 4.000])
								{
									color([1.000, 0.000, 0.000])
									{
										translate(v=[0.000, 0.000, -4.000])
										{
											cylinder(8.100, 1.600, 1.600, true);
										}
									}
								}
							}
							translate(v=[322.500, 0.000, 0.000])
							{
								scale(v=[1.000, 1.000, 25.000])
								{
									union()
									{
										translate(v=[-10.000, 0.000, 0.000])
										{
// Post
											union()
											{
												translate(v=[0.000, 0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[0.000, -0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[-0.000, 0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[-0.000, -0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
											}
										}
										translate(v=[35.000, -52.000, 0.000])
										{
// Post
											union()
											{
												translate(v=[0.000, 0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[0.000, -0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[-0.000, 0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[-0.000, -0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
											}
										}
										translate(v=[35.000, 52.000, 0.000])
										{
// Post
											union()
											{
												translate(v=[0.000, 0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[0.000, -0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[-0.000, 0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[-0.000, -0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
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
						scale(v=[1.000, 1.000, 25.000])
						{
							union()
							{
								translate(v=[137.500, -37.500, 0.000])
								{
									rotate(a=[0.000, 0.000, 90.000])
									{
// Bread
										union()
										{
											translate(v=[5.000, 0.000, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.125])
															{
																cylinder(0.350, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.125])
															{
																cylinder(0.350, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[5.000, -0.000, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.125])
															{
																cylinder(0.350, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.125])
															{
																cylinder(0.350, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[-5.000, 0.000, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.125])
															{
																cylinder(0.350, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.125])
															{
																cylinder(0.350, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[-5.000, -0.000, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.125])
															{
																cylinder(0.350, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.125])
															{
																cylinder(0.350, 1.600, 1.600, true);
															}
														}
													}
												}
											}
										}
									}
								}
								translate(v=[137.500, 0.000, 0.000])
								{
									rotate(a=[0.000, 0.000, 90.000])
									{
// Bread
										union()
										{
											translate(v=[5.000, 0.000, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.125])
															{
																cylinder(0.350, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.125])
															{
																cylinder(0.350, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[5.000, -0.000, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.125])
															{
																cylinder(0.350, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.125])
															{
																cylinder(0.350, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[-5.000, 0.000, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.125])
															{
																cylinder(0.350, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.125])
															{
																cylinder(0.350, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[-5.000, -0.000, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.125])
															{
																cylinder(0.350, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.125])
															{
																cylinder(0.350, 1.600, 1.600, true);
															}
														}
													}
												}
											}
										}
									}
								}
								translate(v=[137.500, 37.500, 0.000])
								{
									rotate(a=[0.000, 0.000, 90.000])
									{
// Bread
										union()
										{
											translate(v=[5.000, 0.000, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.125])
															{
																cylinder(0.350, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.125])
															{
																cylinder(0.350, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[5.000, -0.000, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.125])
															{
																cylinder(0.350, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.125])
															{
																cylinder(0.350, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[-5.000, 0.000, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.125])
															{
																cylinder(0.350, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.125])
															{
																cylinder(0.350, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[-5.000, -0.000, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.125])
															{
																cylinder(0.350, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.125])
															{
																cylinder(0.350, 1.600, 1.600, true);
															}
														}
													}
												}
											}
										}
									}
								}
								translate(v=[-5.000, -40.000, 0.000])
								{
// Humiture
									union()
									{
										translate(v=[7.500, 7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[7.500, -7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[-7.500, 7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[-7.500, -7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
									}
								}
								translate(v=[-5.000, 0.000, 0.000])
								{
// IR
									union()
									{
										translate(v=[7.500, 7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[7.500, -7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[-7.500, 7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[-7.500, -7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
									}
								}
								translate(v=[-5.000, 40.000, 0.000])
								{
// Barometer
									union()
									{
										translate(v=[8.500, 8.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[8.500, -8.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[-8.500, 8.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[-8.500, -8.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
									}
								}
								translate(v=[25.000, 20.000, 0.000])
								{
// Gyro
									union()
									{
										translate(v=[7.500, 7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[7.500, -7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[-7.500, 7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[-7.500, -7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
									}
								}
								translate(v=[25.000, -20.000, 0.000])
								{
// Compass
									union()
									{
										translate(v=[7.500, 7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[7.500, -7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[-7.500, 7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[-7.500, -7.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
									}
								}
								translate(v=[210.000, 0.000, 0.000])
								{
// Pi
									union()
									{
										translate(v=[39.000, 24.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[39.000, -24.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[-39.000, 24.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
										translate(v=[-39.000, -24.500, 0.000])
										{
											color([1.000, 0.784, 0.000])
											{
												union()
												{
													color([0.000, 1.000, 0.000])
													{
														translate(v=[0.000, 0.000, 0.125])
														{
															cylinder(0.350, 3.100, 3.100, true, $fn=6);
														}
													}
													color([1.000, 0.000, 0.000])
													{
														translate(v=[0.000, 0.000, -0.125])
														{
															cylinder(0.350, 1.600, 1.600, true);
														}
													}
												}
											}
										}
									}
								}
								translate(v=[360.000, 0.000, 0.000])
								{
									rotate(a=[0.000, 0.000, 90.000])
									{
// Sonar
										union()
										{
											translate(v=[22.500, 10.000, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.125])
															{
																cylinder(0.350, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.125])
															{
																cylinder(0.350, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[22.500, -10.000, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.125])
															{
																cylinder(0.350, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.125])
															{
																cylinder(0.350, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[-22.500, 10.000, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.125])
															{
																cylinder(0.350, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.125])
															{
																cylinder(0.350, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[-22.500, -10.000, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.125])
															{
																cylinder(0.350, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.125])
															{
																cylinder(0.350, 1.600, 1.600, true);
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
// PlatformPrimary-TieWrapHoles
						union()
						{
							translate(v=[120.000, 18.500, 0.000])
							{
								rotate(a=[0.000, 0.000, 90.000])
								{
									translate(v=[0.000, 0.000, -4.000])
									{
										union()
										{
											translate(v=[0.000, -5.000, 0.000])
											{
												translate(v=[0.000, 0.000, 4.000])
												{
													cube(size=[4.000, 2.000, 8.100], center=true);
												}
											}
											translate(v=[0.000, 5.000, 0.000])
											{
												translate(v=[0.000, 0.000, 4.000])
												{
													cube(size=[4.000, 2.000, 8.100], center=true);
												}
											}
										}
									}
								}
							}
							translate(v=[120.000, -18.500, 0.000])
							{
								rotate(a=[0.000, 0.000, 90.000])
								{
									translate(v=[0.000, 0.000, -4.000])
									{
										union()
										{
											translate(v=[0.000, -5.000, 0.000])
											{
												translate(v=[0.000, 0.000, 4.000])
												{
													cube(size=[4.000, 2.000, 8.100], center=true);
												}
											}
											translate(v=[0.000, 5.000, 0.000])
											{
												translate(v=[0.000, 0.000, 4.000])
												{
													cube(size=[4.000, 2.000, 8.100], center=true);
												}
											}
										}
									}
								}
							}
							translate(v=[155.000, 18.500, 0.000])
							{
								rotate(a=[0.000, 0.000, 90.000])
								{
									translate(v=[0.000, 0.000, -4.000])
									{
										union()
										{
											translate(v=[0.000, -5.000, 0.000])
											{
												translate(v=[0.000, 0.000, 4.000])
												{
													cube(size=[4.000, 2.000, 8.100], center=true);
												}
											}
											translate(v=[0.000, 5.000, 0.000])
											{
												translate(v=[0.000, 0.000, 4.000])
												{
													cube(size=[4.000, 2.000, 8.100], center=true);
												}
											}
										}
									}
								}
							}
							translate(v=[155.000, -18.500, 0.000])
							{
								rotate(a=[0.000, 0.000, 90.000])
								{
									translate(v=[0.000, 0.000, -4.000])
									{
										union()
										{
											translate(v=[0.000, -5.000, 0.000])
											{
												translate(v=[0.000, 0.000, 4.000])
												{
													cube(size=[4.000, 2.000, 8.100], center=true);
												}
											}
											translate(v=[0.000, 5.000, 0.000])
											{
												translate(v=[0.000, 0.000, 4.000])
												{
													cube(size=[4.000, 2.000, 8.100], center=true);
												}
											}
										}
									}
								}
							}
							translate(v=[170.000, -40.000, 0.000])
							{
								rotate(a=[0.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -4.000])
									{
										union()
										{
											translate(v=[0.000, -5.000, 0.000])
											{
												translate(v=[0.000, 0.000, 4.000])
												{
													cube(size=[4.000, 2.000, 8.100], center=true);
												}
											}
											translate(v=[0.000, 5.000, 0.000])
											{
												translate(v=[0.000, 0.000, 4.000])
												{
													cube(size=[4.000, 2.000, 8.100], center=true);
												}
											}
										}
									}
								}
							}
							translate(v=[250.000, -40.000, 0.000])
							{
								rotate(a=[0.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -4.000])
									{
										union()
										{
											translate(v=[0.000, -5.000, 0.000])
											{
												translate(v=[0.000, 0.000, 4.000])
												{
													cube(size=[4.000, 2.000, 8.100], center=true);
												}
											}
											translate(v=[0.000, 5.000, 0.000])
											{
												translate(v=[0.000, 0.000, 4.000])
												{
													cube(size=[4.000, 2.000, 8.100], center=true);
												}
											}
										}
									}
								}
							}
							translate(v=[255.000, 35.000, 0.000])
							{
								rotate(a=[0.000, 0.000, 90.000])
								{
									translate(v=[0.000, 0.000, -4.000])
									{
										union()
										{
											translate(v=[0.000, -5.000, 0.000])
											{
												translate(v=[0.000, 0.000, 4.000])
												{
													cube(size=[4.000, 2.000, 8.100], center=true);
												}
											}
											translate(v=[0.000, 5.000, 0.000])
											{
												translate(v=[0.000, 0.000, 4.000])
												{
													cube(size=[4.000, 2.000, 8.100], center=true);
												}
											}
										}
									}
								}
							}
							translate(v=[262.500, 0.000, 0.000])
							{
								rotate(a=[0.000, 0.000, 90.000])
								{
									translate(v=[0.000, 0.000, -4.000])
									{
										union()
										{
											translate(v=[0.000, -5.000, 0.000])
											{
												translate(v=[0.000, 0.000, 4.000])
												{
													cube(size=[4.000, 2.000, 8.100], center=true);
												}
											}
											translate(v=[0.000, 5.000, 0.000])
											{
												translate(v=[0.000, 0.000, 4.000])
												{
													cube(size=[4.000, 2.000, 8.100], center=true);
												}
											}
										}
									}
								}
							}
						}
					}
// PlatformPrimary-SupportExtraRear
					difference()
					{
						translate(v=[61.000, 0.000, 0.000])
						{
							cube(size=[9.300, 54.950, 4.000], center=true);
						}
// PlatformPrimary-SupportHoles
						union()
						{
							translate(v=[61.000, 20.500, 0.000])
							{
								translate(v=[0.000, 0.000, 4.000])
								{
									color([1.000, 0.000, 0.000])
									{
										translate(v=[0.000, 0.000, -4.000])
										{
											cylinder(8.100, 1.600, 1.600, true);
										}
									}
								}
							}
							translate(v=[61.000, -20.500, 0.000])
							{
								translate(v=[0.000, 0.000, 4.000])
								{
									color([1.000, 0.000, 0.000])
									{
										translate(v=[0.000, 0.000, -4.000])
										{
											cylinder(8.100, 1.600, 1.600, true);
										}
									}
								}
							}
							translate(v=[193.000, 10.000, 0.000])
							{
								union()
								{
									color([0.000, 1.000, 0.000])
									{
										translate(v=[0.000, 0.000, 2.000])
										{
											cylinder(4.100, 3.100, 3.100, true, $fn=6);
										}
									}
									color([1.000, 0.000, 0.000])
									{
										translate(v=[0.000, 0.000, -2.000])
										{
											cylinder(4.100, 1.600, 1.600, true);
										}
									}
								}
							}
							translate(v=[287.000, 0.000, 0.000])
							{
								translate(v=[0.000, 0.000, 4.000])
								{
									color([1.000, 0.000, 0.000])
									{
										translate(v=[0.000, 0.000, -4.000])
										{
											cylinder(8.100, 1.600, 1.600, true);
										}
									}
								}
							}
							translate(v=[322.500, 0.000, 0.000])
							{
								scale(v=[1.000, 1.000, 25.000])
								{
									union()
									{
										translate(v=[-10.000, 0.000, 0.000])
										{
// Post
											union()
											{
												translate(v=[0.000, 0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[0.000, -0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[-0.000, 0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[-0.000, -0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
											}
										}
										translate(v=[35.000, -52.000, 0.000])
										{
// Post
											union()
											{
												translate(v=[0.000, 0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[0.000, -0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[-0.000, 0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[-0.000, -0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
											}
										}
										translate(v=[35.000, 52.000, 0.000])
										{
// Post
											union()
											{
												translate(v=[0.000, 0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[0.000, -0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[-0.000, 0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
																}
															}
														}
													}
												}
												translate(v=[-0.000, -0.000, 0.000])
												{
													color([1.000, 0.784, 0.000])
													{
														union()
														{
															color([0.000, 1.000, 0.000])
															{
																translate(v=[0.000, 0.000, 0.500])
																{
																	cylinder(1.100, 3.100, 3.100, true, $fn=6);
																}
															}
															color([1.000, 0.000, 0.000])
															{
																translate(v=[0.000, 0.000, -0.500])
																{
																	cylinder(1.100, 1.600, 1.600, true);
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
			}
			translate(v=[322.500, 0.000, 30.000])
			{
				difference()
				{
					translate(v=[0.000, 0.000, 0.000])
					{
						minkowski()
						{
							cube(size=[99.000, 124.000, 4.000], center=true);
							rotate(a=[0.000, 0.000, 90.000])
							{
								cylinder(0.010, 10.000, 10.000, false);
							}
						}
					}
					scale(v=[1.000, 1.000, 25.000])
					{
						union()
						{
							translate(v=[-20.000, -40.000, 0.000])
							{
// Motor2040
								union()
								{
									translate(v=[23.300, 16.300, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
									translate(v=[23.300, -16.300, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
									translate(v=[-23.300, 16.300, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
									translate(v=[-23.300, -16.300, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
								}
							}
							translate(v=[-10.000, 20.000, 0.000])
							{
// Servo2040
								union()
								{
									translate(v=[28.300, 18.300, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
									translate(v=[28.300, -18.300, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
									translate(v=[-28.300, 18.300, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
									translate(v=[-28.300, -18.300, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
								}
							}
							translate(v=[40.000, -52.500, 0.000])
							{
								rotate(a=[0.000, 0.000, -30.000])
								{
									rotate(a=[180.000, 0.000, 0.000])
									{
// Obstacle
										union()
										{
											translate(v=[7.500, 7.500, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.500])
															{
																cylinder(1.100, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.500])
															{
																cylinder(1.100, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[7.500, -7.500, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.500])
															{
																cylinder(1.100, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.500])
															{
																cylinder(1.100, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[-7.500, 7.500, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.500])
															{
																cylinder(1.100, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.500])
															{
																cylinder(1.100, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[-7.500, -7.500, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.500])
															{
																cylinder(1.100, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.500])
															{
																cylinder(1.100, 1.600, 1.600, true);
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v=[40.000, 52.500, 0.000])
							{
								rotate(a=[0.000, 0.000, 30.000])
								{
									rotate(a=[180.000, 0.000, 0.000])
									{
// Obstacle
										union()
										{
											translate(v=[7.500, 7.500, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.500])
															{
																cylinder(1.100, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.500])
															{
																cylinder(1.100, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[7.500, -7.500, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.500])
															{
																cylinder(1.100, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.500])
															{
																cylinder(1.100, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[-7.500, 7.500, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.500])
															{
																cylinder(1.100, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.500])
															{
																cylinder(1.100, 1.600, 1.600, true);
															}
														}
													}
												}
											}
											translate(v=[-7.500, -7.500, 0.000])
											{
												color([1.000, 0.784, 0.000])
												{
													union()
													{
														color([0.000, 1.000, 0.000])
														{
															translate(v=[0.000, 0.000, 0.500])
															{
																cylinder(1.100, 3.100, 3.100, true, $fn=6);
															}
														}
														color([1.000, 0.000, 0.000])
														{
															translate(v=[0.000, 0.000, -0.500])
															{
																cylinder(1.100, 1.600, 1.600, true);
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
					scale(v=[1.000, 1.000, 25.000])
					{
						union()
						{
							translate(v=[-10.000, 0.000, 0.000])
							{
// Post
								union()
								{
									translate(v=[0.000, 0.000, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
									translate(v=[0.000, -0.000, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
									translate(v=[-0.000, 0.000, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
									translate(v=[-0.000, -0.000, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
								}
							}
							translate(v=[35.000, -52.000, 0.000])
							{
// Post
								union()
								{
									translate(v=[0.000, 0.000, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
									translate(v=[0.000, -0.000, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
									translate(v=[-0.000, 0.000, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
									translate(v=[-0.000, -0.000, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
								}
							}
							translate(v=[35.000, 52.000, 0.000])
							{
// Post
								union()
								{
									translate(v=[0.000, 0.000, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
									translate(v=[0.000, -0.000, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
									translate(v=[-0.000, 0.000, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
									translate(v=[-0.000, -0.000, 0.000])
									{
										color([1.000, 0.784, 0.000])
										{
											union()
											{
												color([0.000, 1.000, 0.000])
												{
													translate(v=[0.000, 0.000, 0.500])
													{
														cylinder(1.100, 3.100, 3.100, true, $fn=6);
													}
												}
												color([1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -0.500])
													{
														cylinder(1.100, 1.600, 1.600, true);
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v=[56.500, 0.000, 0.000])
					{
						cube(size=[50.000, 40.000, 8.000], center=true);
					}
				}
			}
		}
// Union-White
		union()
		{
			translate(v=[202.500, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, 50.000])
				{
					union()
					{
						translate(v=[0.000, 74.000, 0.000])
						{
							rotate(a=[0.000, 0.000, 180.000])
							{
								rotate(a=[90.000, 0.000, 0.000])
								{
									union()
									{
										translate(v=[0.000, 0.000, 0.000])
										{
											linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
											{
												text(text="Cote Towing", size=12.000, , font="Brush Script MT:style=Regular", , halign="center", , valign="center");
											}
										}
										translate(v=[0.000, -15.000, 0.000])
										{
											linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
											{
												text(text="Campbell River, BC", size=6.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
											}
										}
									}
								}
							}
						}
						translate(v=[0.000, -74.000, 0.000])
						{
							rotate(a=[90.000, 0.000, 0.000])
							{
								union()
								{
									translate(v=[0.000, 0.000, 0.000])
									{
										linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
										{
											text(text="Cote Towing", size=12.000, , font="Brush Script MT:style=Regular", , halign="center", , valign="center");
										}
									}
									translate(v=[0.000, -15.000, 0.000])
									{
										linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
										{
											text(text="Campbell River, BC", size=6.000, , font="LiberationSans:style=Regular", , halign="center", , valign="center");
										}
									}
								}
							}
						}
					}
				}
			}
			translate(v=[0.000, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, 2.000])
				{
					union()
					{
						translate(v=[137.500, -37.500, 0.000])
						{
							rotate(a=[0.000, 0.000, 90.000])
							{
								translate(v=[0.000, 0.000, -0.125])
								{
									linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
									{
										text(text=" ", size=10.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
									}
								}
							}
						}
						translate(v=[137.500, 0.000, 0.000])
						{
							rotate(a=[0.000, 0.000, 90.000])
							{
								translate(v=[0.000, 0.000, -0.125])
								{
									linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
									{
										text(text=" ", size=10.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
									}
								}
							}
						}
						translate(v=[137.500, 37.500, 0.000])
						{
							rotate(a=[0.000, 0.000, 90.000])
							{
								translate(v=[0.000, 0.000, -0.125])
								{
									linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
									{
										text(text=" ", size=10.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
									}
								}
							}
						}
						translate(v=[-5.000, -40.000, 0.000])
						{
							translate(v=[0.000, 0.000, -0.125])
							{
								linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
								{
									text(text="H", size=10.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
								}
							}
						}
						translate(v=[-5.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -0.125])
							{
								linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
								{
									text(text="I", size=10.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
								}
							}
						}
						translate(v=[-5.000, 40.000, 0.000])
						{
							translate(v=[0.000, 0.000, -0.125])
							{
								linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
								{
									text(text="B", size=10.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
								}
							}
						}
						translate(v=[25.000, 20.000, 0.000])
						{
							translate(v=[0.000, 0.000, -0.125])
							{
								linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
								{
									text(text="G", size=10.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
								}
							}
						}
						translate(v=[25.000, -20.000, 0.000])
						{
							translate(v=[0.000, 0.000, -0.125])
							{
								linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
								{
									text(text="C", size=10.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
								}
							}
						}
						translate(v=[210.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -0.125])
							{
								linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
								{
									text(text="Pi", size=10.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
								}
							}
						}
						translate(v=[360.000, 0.000, 0.000])
						{
							rotate(a=[0.000, 0.000, 90.000])
							{
								translate(v=[0.000, 0.000, -0.125])
								{
									linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
									{
										text(text="Sonar", size=10.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
									}
								}
							}
						}
					}
				}
			}
			translate(v=[322.500, 0.000, 30.000])
			{
				translate(v=[0.000, 0.000, 2.000])
				{
					union()
					{
						translate(v=[-20.000, -40.000, 0.000])
						{
							translate(v=[0.000, 0.000, -0.500])
							{
								linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
								{
									text(text="Motor", size=10.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
								}
							}
						}
						translate(v=[-10.000, 20.000, 0.000])
						{
							translate(v=[0.000, 0.000, -0.500])
							{
								linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
								{
									text(text="Servo", size=10.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
								}
							}
						}
						translate(v=[40.000, -52.500, 0.000])
						{
							rotate(a=[0.000, 0.000, -30.000])
							{
								translate(v=[0.000, 0.000, -0.500])
								{
									linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
									{
										text(text="O", size=10.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
									}
								}
							}
						}
						translate(v=[40.000, 52.500, 0.000])
						{
							rotate(a=[0.000, 0.000, 30.000])
							{
								translate(v=[0.000, 0.000, -0.500])
								{
									linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
									{
										text(text="O", size=10.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
									}
								}
							}
						}
					}
				}
			}
		}
// Union-Green
		union()
		{
			translate(v=[0.000, 0.000, 0.000])
			{
// Union-Green
				union()
				{
					translate(v=[0.000, 0.000, 2.000])
					{
						union()
						{
							translate(v=[137.500, -37.500, 0.000])
							{
								rotate(a=[0.000, 0.000, 90.000])
								{
									difference()
									{
										translate(v=[0.000, 0.000, 0.000])
										{
											minkowski()
											{
												cube(size=[27.000, 17.000, 0.250], center=true);
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
												cube(size=[25.500, 15.500, 0.350], center=true);
												rotate(a=[0.000, 0.000, 90.000])
												{
													cylinder(0.010, 3.000, 3.000, false);
												}
											}
										}
									}
								}
							}
							translate(v=[137.500, 0.000, 0.000])
							{
								rotate(a=[0.000, 0.000, 90.000])
								{
									difference()
									{
										translate(v=[0.000, 0.000, 0.000])
										{
											minkowski()
											{
												cube(size=[27.000, 17.000, 0.250], center=true);
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
												cube(size=[25.500, 15.500, 0.350], center=true);
												rotate(a=[0.000, 0.000, 90.000])
												{
													cylinder(0.010, 3.000, 3.000, false);
												}
											}
										}
									}
								}
							}
							translate(v=[137.500, 37.500, 0.000])
							{
								rotate(a=[0.000, 0.000, 90.000])
								{
									difference()
									{
										translate(v=[0.000, 0.000, 0.000])
										{
											minkowski()
											{
												cube(size=[27.000, 17.000, 0.250], center=true);
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
												cube(size=[25.500, 15.500, 0.350], center=true);
												rotate(a=[0.000, 0.000, 90.000])
												{
													cylinder(0.010, 3.000, 3.000, false);
												}
											}
										}
									}
								}
							}
							translate(v=[-5.000, -40.000, 0.000])
							{
								difference()
								{
									translate(v=[0.000, 0.000, 0.000])
									{
										minkowski()
										{
											cube(size=[17.000, 17.000, 0.250], center=true);
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
											cube(size=[15.500, 15.500, 0.350], center=true);
											rotate(a=[0.000, 0.000, 90.000])
											{
												cylinder(0.010, 3.000, 3.000, false);
											}
										}
									}
								}
							}
							translate(v=[-5.000, 0.000, 0.000])
							{
								difference()
								{
									translate(v=[0.000, 0.000, 0.000])
									{
										minkowski()
										{
											cube(size=[17.000, 17.000, 0.250], center=true);
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
											cube(size=[15.500, 15.500, 0.350], center=true);
											rotate(a=[0.000, 0.000, 90.000])
											{
												cylinder(0.010, 3.000, 3.000, false);
											}
										}
									}
								}
							}
							translate(v=[-5.000, 40.000, 0.000])
							{
								difference()
								{
									translate(v=[0.000, 0.000, 0.000])
									{
										minkowski()
										{
											cube(size=[19.000, 19.000, 0.250], center=true);
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
											cube(size=[17.500, 17.500, 0.350], center=true);
											rotate(a=[0.000, 0.000, 90.000])
											{
												cylinder(0.010, 3.000, 3.000, false);
											}
										}
									}
								}
							}
							translate(v=[25.000, 20.000, 0.000])
							{
								difference()
								{
									translate(v=[0.000, 0.000, 0.000])
									{
										minkowski()
										{
											cube(size=[17.000, 17.000, 0.250], center=true);
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
											cube(size=[15.500, 15.500, 0.350], center=true);
											rotate(a=[0.000, 0.000, 90.000])
											{
												cylinder(0.010, 3.000, 3.000, false);
											}
										}
									}
								}
							}
							translate(v=[25.000, -20.000, 0.000])
							{
								difference()
								{
									translate(v=[0.000, 0.000, 0.000])
									{
										minkowski()
										{
											cube(size=[17.000, 17.000, 0.250], center=true);
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
											cube(size=[15.500, 15.500, 0.350], center=true);
											rotate(a=[0.000, 0.000, 90.000])
											{
												cylinder(0.010, 3.000, 3.000, false);
											}
										}
									}
								}
							}
							translate(v=[210.000, 0.000, 0.000])
							{
								difference()
								{
									translate(v=[0.000, 0.000, 0.000])
									{
										minkowski()
										{
											cube(size=[82.000, 53.000, 0.250], center=true);
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
											cube(size=[80.500, 51.500, 0.350], center=true);
											rotate(a=[0.000, 0.000, 90.000])
											{
												cylinder(0.010, 3.000, 3.000, false);
											}
										}
									}
								}
							}
							translate(v=[360.000, 0.000, 0.000])
							{
								rotate(a=[0.000, 0.000, 90.000])
								{
									difference()
									{
										translate(v=[0.000, 0.000, 0.000])
										{
											minkowski()
											{
												cube(size=[47.000, 22.000, 0.250], center=true);
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
												cube(size=[45.500, 20.500, 0.350], center=true);
												rotate(a=[0.000, 0.000, 90.000])
												{
													cylinder(0.010, 3.000, 3.000, false);
												}
											}
										}
									}
								}
							}
						}
					}
// PlatformPrimary-lines
					union()
					{
						translate(v=[145.000, 0.000, 2.000])
						{
							cube(size=[0.800, 20.000, 0.250], center=true);
						}
						translate(v=[100.000, 0.000, 2.000])
						{
							cube(size=[0.800, 20.000, 0.250], center=true);
						}
						translate(v=[275.000, 0.000, 2.000])
						{
							cube(size=[0.800, 20.000, 0.250], center=true);
						}
						translate(v=[260.000, 0.000, 2.000])
						{
							cube(size=[0.800, 20.000, 0.250], center=true);
						}
					}
				}
			}
			translate(v=[322.500, 0.000, 30.000])
			{
				translate(v=[0.000, 0.000, 2.000])
				{
					union()
					{
						translate(v=[-20.000, -40.000, 0.000])
						{
							difference()
							{
								translate(v=[0.000, 0.000, 0.000])
								{
									minkowski()
									{
										cube(size=[49.000, 35.000, 1.000], center=true);
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
										cube(size=[47.500, 33.500, 1.100], center=true);
										rotate(a=[0.000, 0.000, 90.000])
										{
											cylinder(0.010, 3.000, 3.000, false);
										}
									}
								}
							}
						}
						translate(v=[-10.000, 20.000, 0.000])
						{
							difference()
							{
								translate(v=[0.000, 0.000, 0.000])
								{
									minkowski()
									{
										cube(size=[59.000, 39.000, 1.000], center=true);
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
										cube(size=[57.500, 37.500, 1.100], center=true);
										rotate(a=[0.000, 0.000, 90.000])
										{
											cylinder(0.010, 3.000, 3.000, false);
										}
									}
								}
							}
						}
						translate(v=[40.000, -52.500, 0.000])
						{
							rotate(a=[0.000, 0.000, -30.000])
							{
								rotate(a=[180.000, 0.000, 0.000])
								{
									difference()
									{
										translate(v=[0.000, 0.000, 0.000])
										{
											minkowski()
											{
												cube(size=[17.000, 17.000, 1.000], center=true);
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
												cube(size=[15.500, 15.500, 1.100], center=true);
												rotate(a=[0.000, 0.000, 90.000])
												{
													cylinder(0.010, 3.000, 3.000, false);
												}
											}
										}
									}
								}
							}
						}
						translate(v=[40.000, 52.500, 0.000])
						{
							rotate(a=[0.000, 0.000, 30.000])
							{
								rotate(a=[180.000, 0.000, 0.000])
								{
									difference()
									{
										translate(v=[0.000, 0.000, 0.000])
										{
											minkowski()
											{
												cube(size=[17.000, 17.000, 1.000], center=true);
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
												cube(size=[15.500, 15.500, 1.100], center=true);
												rotate(a=[0.000, 0.000, 90.000])
												{
													cylinder(0.010, 3.000, 3.000, false);
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
		translate(v=[0.000, 0.000, 0.000])
		{
// PlatformPrimary-GpsFrame
			union()
			{
				translate(v=[200.000, 49.500, 0.000])
				{
					difference()
					{
						translate(v=[0.000, 0.000, 6.000])
						{
							difference()
							{
								translate(v=[0.000, 0.000, 0.000])
								{
									minkowski()
									{
										cube(size=[47.000, 34.000, 12.000], center=true);
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
										cube(size=[45.500, 32.500, 12.100], center=true);
										rotate(a=[0.000, 0.000, 90.000])
										{
											cylinder(0.010, 3.000, 3.000, false);
										}
									}
								}
							}
						}
						translate(v=[25.000, 0.000, 0.000])
						{
							cube(size=[10.000, 5.000, 36.000], center=true);
						}
					}
				}
				translate(v=[200.000, 49.500, 0.000])
				{
					translate(v=[0.000, 0.000, 2.000])
					{
						translate(v=[0.000, 0.000, -0.125])
						{
							linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
							{
								text(text="GPS", size=10.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
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


