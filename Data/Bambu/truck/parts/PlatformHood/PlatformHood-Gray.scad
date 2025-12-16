$fs = 1.000;
$fa=1.000;
$fn=36.000;


// PlatformHood-Gray
color([0.502, 0.502, 0.502])
{
	difference()
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
					translate(v=[-25.000, -45.000, 0.000])
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
					translate(v=[-20.000, 40.000, 0.000])
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
					translate(v=[-40.000, -5.000, 0.000])
					{
						rotate(a=[0.000, 0.000, 0.000])
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
												translate(v=[0.000, 0.000, 0.500])
												{
													cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
								translate(v=[5.000, -0.000, 0.000])
								{
									color([1.000, 0.784, 0.000])
									{
										union()
										{
											color([0.000, 1.000, 0.000])
											{
												translate(v=[0.000, 0.000, 0.500])
												{
													cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
								translate(v=[-5.000, 0.000, 0.000])
								{
									color([1.000, 0.784, 0.000])
									{
										union()
										{
											color([0.000, 1.000, 0.000])
											{
												translate(v=[0.000, 0.000, 0.500])
												{
													cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
								translate(v=[-5.000, -0.000, 0.000])
								{
									color([1.000, 0.784, 0.000])
									{
										union()
										{
											color([0.000, 1.000, 0.000])
											{
												translate(v=[0.000, 0.000, 0.500])
												{
													cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
					translate(v=[10.000, -5.000, 0.000])
					{
						rotate(a=[0.000, 0.000, 0.000])
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
												translate(v=[0.000, 0.000, 0.500])
												{
													cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
								translate(v=[5.000, -0.000, 0.000])
								{
									color([1.000, 0.784, 0.000])
									{
										union()
										{
											color([0.000, 1.000, 0.000])
											{
												translate(v=[0.000, 0.000, 0.500])
												{
													cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
								translate(v=[-5.000, 0.000, 0.000])
								{
									color([1.000, 0.784, 0.000])
									{
										union()
										{
											color([0.000, 1.000, 0.000])
											{
												translate(v=[0.000, 0.000, 0.500])
												{
													cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
								translate(v=[-5.000, -0.000, 0.000])
								{
									color([1.000, 0.784, 0.000])
									{
										union()
										{
											color([0.000, 1.000, 0.000])
											{
												translate(v=[0.000, 0.000, 0.500])
												{
													cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
					translate(v=[40.000, -52.500, 0.000])
					{
						rotate(a=[0.000, 0.000, -45.000])
						{
// IR_Obstacle
							union()
							{
								translate(v=[9.500, 0.000, 0.000])
								{
									color([1.000, 0.784, 0.000])
									{
										union()
										{
											color([0.000, 1.000, 0.000])
											{
												translate(v=[0.000, 0.000, 0.500])
												{
													cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
								translate(v=[9.500, -0.000, 0.000])
								{
									color([1.000, 0.784, 0.000])
									{
										union()
										{
											color([0.000, 1.000, 0.000])
											{
												translate(v=[0.000, 0.000, 0.500])
												{
													cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
								translate(v=[-9.500, 0.000, 0.000])
								{
									color([1.000, 0.784, 0.000])
									{
										union()
										{
											color([0.000, 1.000, 0.000])
											{
												translate(v=[0.000, 0.000, 0.500])
												{
													cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
								translate(v=[-9.500, -0.000, 0.000])
								{
									color([1.000, 0.784, 0.000])
									{
										union()
										{
											color([0.000, 1.000, 0.000])
											{
												translate(v=[0.000, 0.000, 0.500])
												{
													cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
					translate(v=[40.000, 52.500, 0.000])
					{
						rotate(a=[0.000, 0.000, 45.000])
						{
// IR_Obstacle
							union()
							{
								translate(v=[9.500, 0.000, 0.000])
								{
									color([1.000, 0.784, 0.000])
									{
										union()
										{
											color([0.000, 1.000, 0.000])
											{
												translate(v=[0.000, 0.000, 0.500])
												{
													cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
								translate(v=[9.500, -0.000, 0.000])
								{
									color([1.000, 0.784, 0.000])
									{
										union()
										{
											color([0.000, 1.000, 0.000])
											{
												translate(v=[0.000, 0.000, 0.500])
												{
													cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
								translate(v=[-9.500, 0.000, 0.000])
								{
									color([1.000, 0.784, 0.000])
									{
										union()
										{
											color([0.000, 1.000, 0.000])
											{
												translate(v=[0.000, 0.000, 0.500])
												{
													cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
								translate(v=[-9.500, -0.000, 0.000])
								{
									color([1.000, 0.784, 0.000])
									{
										union()
										{
											color([0.000, 1.000, 0.000])
											{
												translate(v=[0.000, 0.000, 0.500])
												{
													cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
			scale(v=[1.000, 1.000, 25.000])
			{
				union()
				{
					translate(v=[-15.000, 0.000, 0.000])
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
					translate(v=[24.000, -40.000, 0.000])
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
					translate(v=[23.000, 40.000, 0.000])
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
												cylinder(1.100, 2.950, 2.950, true, $fn=6);
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
		translate(v=[0.000, 0.000, 2.000])
		{
			union()
			{
				translate(v=[-25.000, -45.000, 0.000])
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
				translate(v=[-20.000, 40.000, 0.000])
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
				translate(v=[-40.000, -5.000, 0.000])
				{
					rotate(a=[0.000, 0.000, 0.000])
					{
						union()
						{
							difference()
							{
								translate(v=[0.000, 0.000, 0.000])
								{
									minkowski()
									{
										cube(size=[27.000, 17.000, 0.200], center=true);
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
										cube(size=[25.500, 15.500, 0.300], center=true);
										rotate(a=[0.000, 0.000, 90.000])
										{
											cylinder(0.010, 3.000, 3.000, false);
										}
									}
								}
							}
							union()
							{
								cube(size=[27.000, 12.000, 1.000], center=true);
								cube(size=[21.000, 18.000, 1.000], center=true);
							}
							translate(v=[0.000, 8.500, 0.000])
							{
								translate(v=[0.000, 0.000, 2.500])
								{
									cube(size=[21.000, 1.000, 5.000], center=true);
								}
							}
							translate(v=[0.000, -8.500, 0.000])
							{
								translate(v=[0.000, 0.000, 2.500])
								{
									cube(size=[21.000, 1.000, 5.000], center=true);
								}
							}
						}
					}
				}
				translate(v=[10.000, -5.000, 0.000])
				{
					rotate(a=[0.000, 0.000, 0.000])
					{
						union()
						{
							difference()
							{
								translate(v=[0.000, 0.000, 0.000])
								{
									minkowski()
									{
										cube(size=[27.000, 17.000, 0.200], center=true);
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
										cube(size=[25.500, 15.500, 0.300], center=true);
										rotate(a=[0.000, 0.000, 90.000])
										{
											cylinder(0.010, 3.000, 3.000, false);
										}
									}
								}
							}
							union()
							{
								cube(size=[27.000, 12.000, 1.000], center=true);
								cube(size=[21.000, 18.000, 1.000], center=true);
							}
							translate(v=[0.000, 8.500, 0.000])
							{
								translate(v=[0.000, 0.000, 2.500])
								{
									cube(size=[21.000, 1.000, 5.000], center=true);
								}
							}
							translate(v=[0.000, -8.500, 0.000])
							{
								translate(v=[0.000, 0.000, 2.500])
								{
									cube(size=[21.000, 1.000, 5.000], center=true);
								}
							}
						}
					}
				}
				translate(v=[40.000, -52.500, 0.000])
				{
					rotate(a=[0.000, 0.000, -45.000])
					{
						difference()
						{
							translate(v=[0.000, 0.000, 0.000])
							{
								minkowski()
								{
									cube(size=[28.000, 11.000, 1.000], center=true);
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
									cube(size=[26.500, 9.500, 1.100], center=true);
									rotate(a=[0.000, 0.000, 90.000])
									{
										cylinder(0.010, 3.000, 3.000, false);
									}
								}
							}
						}
					}
				}
				translate(v=[40.000, 52.500, 0.000])
				{
					rotate(a=[0.000, 0.000, 45.000])
					{
						difference()
						{
							translate(v=[0.000, 0.000, 0.000])
							{
								minkowski()
								{
									cube(size=[28.000, 11.000, 1.000], center=true);
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
									cube(size=[26.500, 9.500, 1.100], center=true);
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
		translate(v=[0.000, 0.000, 2.000])
		{
			union()
			{
				translate(v=[-25.000, -45.000, 0.000])
				{
					translate(v=[0.000, 0.000, -0.500])
					{
						linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
						{
							text(text="Motor", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
						}
					}
				}
				translate(v=[-20.000, 40.000, 0.000])
				{
					translate(v=[0.000, 0.000, -0.500])
					{
						linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
						{
							text(text="Servo", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
						}
					}
				}
				translate(v=[-40.000, -5.000, 0.000])
				{
					rotate(a=[0.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -0.500])
						{
							linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
							{
								text(text=" ", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
							}
						}
					}
				}
				translate(v=[10.000, -5.000, 0.000])
				{
					rotate(a=[0.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -0.500])
						{
							linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
							{
								text(text=" ", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
							}
						}
					}
				}
				translate(v=[40.000, -52.500, 0.000])
				{
					rotate(a=[0.000, 0.000, -45.000])
					{
						translate(v=[0.000, 0.000, -0.500])
						{
							linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
							{
								text(text="IR", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
							}
						}
					}
				}
				translate(v=[40.000, 52.500, 0.000])
				{
					rotate(a=[0.000, 0.000, 45.000])
					{
						translate(v=[0.000, 0.000, -0.500])
						{
							linear_extrude(height=1.000, center=false, scale=[1.000, 1.000])
							{
								text(text="IR", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
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

// ***** Module OpenScad.BOSL2/gears
use <BOSL2/gears.scad>

// ***** Module OpenScad.BOSL2/std
use <BOSL2/std.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


