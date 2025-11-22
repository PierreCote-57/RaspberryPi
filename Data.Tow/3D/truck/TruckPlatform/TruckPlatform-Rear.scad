$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TruckPlatform-Rear
intersection()
{
// TruckPlatform
	difference()
	{
		union()
		{
// TruckPlatform-Base
			difference()
			{
				union()
				{
					translate(v=[20.000, 0.000, 2.000])
					{
						cube(size=[40.000, 130.000, 4.000], center=true);
					}
					translate(v=[75.000, 0.000, 2.000])
					{
						cube(size=[70.000, 25.000, 4.000], center=true);
					}
					translate(v=[190.000, 0.000, 2.000])
					{
						cube(size=[160.000, 150.000, 4.000], center=true);
					}
					translate(v=[302.500, 0.000, 2.000])
					{
						cube(size=[65.000, 25.000, 4.000], center=true);
					}
					translate(v=[350.000, 0.000, 2.000])
					{
						cube(size=[30.000, 110.000, 4.000], center=true);
					}
				}
				translate(v=[287.000, 0.000, 6.000])
				{
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -4.000])
						{
							cylinder(8.100, 1.600, 1.600, true);
						}
					}
				}
			}
			union()
			{
				translate(v=[165.000, 0.000, 0.000])
				{
					color(c=[1.000, 1.000, 0.000])
					{
						scale(v=[0.250, 1.000, 1.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								rotate(a=[0.000, 0.000, 90.000])
								{
									union()
									{
										color(c=[0.000, 0.000, 1.000])
										{
											cube(size=[135.000, 3.200, 4.000], center=true);
										}
										translate(v=[67.500, 0.000, 2.000])
										{
											color(c=[0.000, 1.000, 0.000])
											{
												color(c=[1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -2.000])
													{
														cylinder(4.100, 1.600, 1.600, true);
													}
												}
											}
										}
										translate(v=[-67.500, 0.000, 2.000])
										{
											color(c=[0.000, 1.000, 0.000])
											{
												color(c=[1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -2.000])
													{
														cylinder(4.100, 1.600, 1.600, true);
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
				translate(v=[265.000, 0.000, 0.000])
				{
					color(c=[1.000, 1.000, 0.000])
					{
						scale(v=[0.250, 1.000, 1.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								rotate(a=[0.000, 0.000, 90.000])
								{
									union()
									{
										color(c=[0.000, 0.000, 1.000])
										{
											cube(size=[135.000, 3.200, 4.000], center=true);
										}
										translate(v=[67.500, 0.000, 2.000])
										{
											color(c=[0.000, 1.000, 0.000])
											{
												color(c=[1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -2.000])
													{
														cylinder(4.100, 1.600, 1.600, true);
													}
												}
											}
										}
										translate(v=[-67.500, 0.000, 2.000])
										{
											color(c=[0.000, 1.000, 0.000])
											{
												color(c=[1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -2.000])
													{
														cylinder(4.100, 1.600, 1.600, true);
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
				translate(v=[180.000, 0.000, 0.000])
				{
					color(c=[1.000, 0.000, 0.000])
					{
						scale(v=[0.250, 1.000, 1.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								rotate(a=[0.000, 0.000, 90.000])
								{
									union()
									{
										color(c=[0.000, 0.000, 1.000])
										{
											cube(size=[135.000, 3.200, 4.000], center=true);
										}
										translate(v=[67.500, 0.000, 2.000])
										{
											color(c=[0.000, 1.000, 0.000])
											{
												color(c=[1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -2.000])
													{
														cylinder(4.100, 1.600, 1.600, true);
													}
												}
											}
										}
										translate(v=[-67.500, 0.000, 2.000])
										{
											color(c=[0.000, 1.000, 0.000])
											{
												color(c=[1.000, 0.000, 0.000])
												{
													translate(v=[0.000, 0.000, -2.000])
													{
														cylinder(4.100, 1.600, 1.600, true);
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
			translate(v=[61.000, 0.000, 0.000])
			{
				union()
				{
					translate(v=[0.000, 0.000, 2.000])
					{
						cube(size=[9.300, 50.300, 4.000], center=true);
					}
					translate(v=[0.000, 20.500, 0.000])
					{
						translate(v=[0.000, 0.000, -2.000])
						{
							cylinder(4.000, 4.650, 4.650, true);
						}
					}
					translate(v=[0.000, -20.500, 0.000])
					{
						translate(v=[0.000, 0.000, -2.000])
						{
							cylinder(4.000, 4.650, 4.650, true);
						}
					}
				}
			}
			translate(v=[180.000, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, 2.000])
				{
					cube(size=[22.500, 150.000, 4.000], center=true);
				}
			}
		}
		translate(v=[25.000, -62.000, 2.000])
		{
			translate(v=[-2.000, -0.500, 0.100])
			{
				scale(v=[1.100, 1.200, 1.000])
				{
// TrackingBracket
					union()
					{
						translate(v=[20.000, 2.000, 0.000])
						{
							difference()
							{
								translate(v=[0.000, 0.000, -30.000])
								{
									cube(size=[10.000, 4.000, 60.000], center=true);
								}
								translate(v=[0.000, 0.000, -42.000])
								{
									rotate(a=[90.000, 0.000, 180.000])
									{
										union()
										{
											color(c=[0.000, 1.000, 0.000])
											{
												translate(v=[0.000, 0.000, 2.000])
												{
													cylinder(4.100, 3.100, 3.100, true, $fn=6);
												}
											}
											color(c=[1.000, 0.000, 0.000])
											{
												translate(v=[0.000, 0.000, -2.000])
												{
													cylinder(4.100, 1.600, 1.600, true);
												}
											}
										}
									}
								}
								translate(v=[0.000, 0.000, -54.000])
								{
									rotate(a=[90.000, 0.000, 180.000])
									{
										union()
										{
											color(c=[0.000, 1.000, 0.000])
											{
												translate(v=[0.000, 0.000, 2.000])
												{
													cylinder(4.100, 3.100, 3.100, true, $fn=6);
												}
											}
											color(c=[1.000, 0.000, 0.000])
											{
												translate(v=[0.000, 0.000, -2.000])
												{
													cylinder(4.100, 1.600, 1.600, true);
												}
											}
										}
									}
								}
							}
						}
						translate(v=[45.000, 2.000, 1.000])
						{
							cube(size=[90.000, 4.000, 2.000], center=true);
						}
					}
				}
			}
		}
		translate(v=[61.000, 0.000, 0.000])
		{
			union()
			{
				translate(v=[0.000, 20.500, 0.000])
				{
					translate(v=[0.000, 0.000, 1.900])
					{
						rotate(a=[180.000, 0.000, 0.000])
						{
							union()
							{
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 3.000])
									{
										cylinder(6.100, 3.100, 3.100, true, $fn=6);
									}
								}
								color(c=[1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -3.000])
									{
										cylinder(6.100, 1.600, 1.600, true);
									}
								}
							}
						}
					}
				}
				translate(v=[0.000, -20.500, 0.000])
				{
					translate(v=[0.000, 0.000, 1.900])
					{
						rotate(a=[180.000, 0.000, 0.000])
						{
							union()
							{
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 3.000])
									{
										cylinder(6.100, 3.100, 3.100, true, $fn=6);
									}
								}
								color(c=[1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -3.000])
									{
										cylinder(6.100, 1.600, 1.600, true);
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v=[180.000, 0.000, 0.000])
		{
			color(c=[1.000, 0.000, 0.000])
			{
				union()
				{
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							rotate(a=[0.000, 90.000, 0.000])
							{
								cylinder(15.000, 1.300, 1.300, true);
							}
						}
					}
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, -0.000, 2.000])
						{
							rotate(a=[0.000, 90.000, 0.000])
							{
								cylinder(15.000, 1.300, 1.300, true);
							}
						}
					}
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 20.000, 2.000])
						{
							rotate(a=[0.000, 90.000, 0.000])
							{
								cylinder(15.000, 1.300, 1.300, true);
							}
						}
					}
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, -20.000, 2.000])
						{
							rotate(a=[0.000, 90.000, 0.000])
							{
								cylinder(15.000, 1.300, 1.300, true);
							}
						}
					}
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 40.000, 2.000])
						{
							rotate(a=[0.000, 90.000, 0.000])
							{
								cylinder(15.000, 1.300, 1.300, true);
							}
						}
					}
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, -40.000, 2.000])
						{
							rotate(a=[0.000, 90.000, 0.000])
							{
								cylinder(15.000, 1.300, 1.300, true);
							}
						}
					}
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 60.000, 2.000])
						{
							rotate(a=[0.000, 90.000, 0.000])
							{
								cylinder(15.000, 1.300, 1.300, true);
							}
						}
					}
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, -60.000, 2.000])
						{
							rotate(a=[0.000, 90.000, 0.000])
							{
								cylinder(15.000, 1.300, 1.300, true);
							}
						}
					}
				}
			}
		}
// PiHoleSet
		translate(v=[217.000, -55.000, 0.000])
		{
			rotate(a=[0.000, 0.000, 90.000])
			{
				union()
				{
					translate(v=[3.500, 24.500, 0.000])
					{
						color(c=[1.000, 0.000, 1.000])
						{
							cylinder(20.000, 1.600, 1.600, true);
						}
					}
					translate(v=[3.500, -24.500, 0.000])
					{
						color(c=[1.000, 0.000, 1.000])
						{
							cylinder(20.000, 1.600, 1.600, true);
						}
					}
					translate(v=[85.000, 24.500, 0.000])
					{
						color(c=[1.000, 0.000, 1.000])
						{
							cylinder(20.000, 1.600, 1.600, true);
						}
					}
					translate(v=[85.000, -24.500, 0.000])
					{
						color(c=[1.000, 0.000, 1.000])
						{
							cylinder(20.000, 1.600, 1.600, true);
						}
					}
				}
			}
		}
		translate(v=[315.000, 0.000, 28.000])
		{
			union()
			{
				translate(v=[-10.000, 0.000, 0.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 1.000])
						{
							translate(v=[0.000, 0.000, 24.000])
							{
								color(c=[1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -36.000])
									{
										cylinder(72.100, 1.600, 1.600, true);
									}
								}
							}
						}
						color(c=[0.000, 0.000, 1.000])
						{
							translate(v=[0.000, 0.000, -2.900])
							{
								cylinder(14.000, 3.100, 3.100, true);
							}
						}
						color(c=[0.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -36.000])
							{
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 5.000])
									{
										cylinder(10.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
					}
				}
				translate(v=[35.700, 40.200, 0.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 1.000])
						{
							translate(v=[0.000, 0.000, 24.000])
							{
								color(c=[1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -36.000])
									{
										cylinder(72.100, 1.600, 1.600, true);
									}
								}
							}
						}
						color(c=[0.000, 0.000, 1.000])
						{
							translate(v=[0.000, 0.000, -2.900])
							{
								cylinder(14.000, 3.100, 3.100, true);
							}
						}
						color(c=[0.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -36.000])
							{
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 5.000])
									{
										cylinder(10.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
					}
				}
				translate(v=[35.700, -40.200, 0.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 1.000])
						{
							translate(v=[0.000, 0.000, 24.000])
							{
								color(c=[1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -36.000])
									{
										cylinder(72.100, 1.600, 1.600, true);
									}
								}
							}
						}
						color(c=[0.000, 0.000, 1.000])
						{
							translate(v=[0.000, 0.000, -2.900])
							{
								cylinder(14.000, 3.100, 3.100, true);
							}
						}
						color(c=[0.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -36.000])
							{
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 5.000])
									{
										cylinder(10.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
					}
				}
			}
		}
// BreadHoles
		union()
		{
			translate(v=[152.500, 0.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[-5.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.550])
							{
								color(c=[1.000, 0.784, 0.000])
								{
									cylinder(3.000, 2.500, 2.500, true);
								}
							}
						}
						translate(v=[5.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.550])
							{
								color(c=[1.000, 0.784, 0.000])
								{
									cylinder(3.000, 2.500, 2.500, true);
								}
							}
						}
					}
				}
			}
			translate(v=[152.500, 37.500, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[-5.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.550])
							{
								color(c=[1.000, 0.784, 0.000])
								{
									cylinder(3.000, 2.500, 2.500, true);
								}
							}
						}
						translate(v=[5.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.550])
							{
								color(c=[1.000, 0.784, 0.000])
								{
									cylinder(3.000, 2.500, 2.500, true);
								}
							}
						}
					}
				}
			}
			translate(v=[152.500, -37.500, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[-5.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.550])
							{
								color(c=[1.000, 0.784, 0.000])
								{
									cylinder(3.000, 2.500, 2.500, true);
								}
							}
						}
						translate(v=[5.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.550])
							{
								color(c=[1.000, 0.784, 0.000])
								{
									cylinder(3.000, 2.500, 2.500, true);
								}
							}
						}
					}
				}
			}
		}
// WireHole
		translate(v=[240.000, 45.000, 2.000])
		{
			translate(v=[0.000, 0.000, 0.000])
			{
				minkowski()
				{
					cube(size=[6.000, 16.000, 8.000], center=true);
					rotate(a=[0.000, 0.000, 90.000])
					{
						cylinder(0.010, 2.000, 2.000, false);
					}
				}
			}
		}
		union()
		{
			translate(v=[350.000, 15.000, 0.000])
			{
				translate(v=[-10.000, -10.000, 0.000])
				{
// Humiture
					union()
					{
						translate(v=[2.500, 2.500, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
						translate(v=[2.500, 17.500, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
						translate(v=[17.500, 2.500, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
						translate(v=[17.500, 17.500, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
					}
				}
			}
			translate(v=[350.000, -15.000, 0.000])
			{
				translate(v=[-10.000, -10.000, 0.000])
				{
// Gyro
					union()
					{
						translate(v=[2.500, 2.500, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
						translate(v=[2.500, 17.500, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
						translate(v=[17.500, 2.500, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
						translate(v=[17.500, 17.500, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
					}
				}
			}
			translate(v=[16.000, -35.000, 0.000])
			{
				translate(v=[-11.000, -11.000, 0.000])
				{
// Sound
					union()
					{
						translate(v=[2.500, 2.500, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
						translate(v=[2.500, 19.500, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
						translate(v=[19.500, 2.500, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
						translate(v=[19.500, 19.500, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
					}
				}
			}
			translate(v=[16.000, 35.000, 0.000])
			{
				translate(v=[-10.000, -10.000, 0.000])
				{
// IR
					union()
					{
						translate(v=[2.500, 2.500, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
						translate(v=[2.500, 17.500, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
						translate(v=[17.500, 2.500, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
									}
								}
							}
						}
						translate(v=[17.500, 17.500, 0.000])
						{
							union()
							{
								translate(v=[0.000, 0.000, 2.000])
								{
									cylinder(4.100, 1.600, 1.600, true);
								}
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 1.000])
									{
										cylinder(2.100, 3.100, 3.100, true, $fn=6);
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
			translate(v=[125.000, -50.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[0.000, -5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
						translate(v=[0.000, 5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
					}
				}
			}
			translate(v=[125.000, -20.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[0.000, -5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
						translate(v=[0.000, 5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
					}
				}
			}
			translate(v=[125.000, 20.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[0.000, -5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
						translate(v=[0.000, 5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
					}
				}
			}
			translate(v=[125.000, 50.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[0.000, -5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
						translate(v=[0.000, 5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
					}
				}
			}
			translate(v=[180.000, -50.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[0.000, -5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
						translate(v=[0.000, 5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
					}
				}
			}
			translate(v=[180.000, -20.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[0.000, -5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
						translate(v=[0.000, 5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
					}
				}
			}
			translate(v=[180.000, 20.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[0.000, -5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
						translate(v=[0.000, 5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
					}
				}
			}
			translate(v=[180.000, 50.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[0.000, -5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
						translate(v=[0.000, 5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
					}
				}
			}
			translate(v=[255.000, -50.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[0.000, -5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
						translate(v=[0.000, 5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
					}
				}
			}
			translate(v=[255.000, -20.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[0.000, -5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
						translate(v=[0.000, 5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
					}
				}
			}
			translate(v=[255.000, 20.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[0.000, -5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
						translate(v=[0.000, 5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
					}
				}
			}
			translate(v=[255.000, 50.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[0.000, -5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
						translate(v=[0.000, 5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
					}
				}
			}
			translate(v=[195.000, 65.000, 0.000])
			{
				union()
				{
					translate(v=[0.000, -5.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[5.000, 3.000, 4.100], center=true);
						}
					}
					translate(v=[0.000, 5.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[5.000, 3.000, 4.100], center=true);
						}
					}
				}
			}
			translate(v=[195.000, -65.000, 0.000])
			{
				union()
				{
					translate(v=[0.000, -5.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[5.000, 3.000, 4.100], center=true);
						}
					}
					translate(v=[0.000, 5.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[5.000, 3.000, 4.100], center=true);
						}
					}
				}
			}
			translate(v=[240.000, 65.000, 0.000])
			{
				union()
				{
					translate(v=[0.000, -5.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[5.000, 3.000, 4.100], center=true);
						}
					}
					translate(v=[0.000, 5.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[5.000, 3.000, 4.100], center=true);
						}
					}
				}
			}
			translate(v=[240.000, -65.000, 0.000])
			{
				union()
				{
					translate(v=[0.000, -5.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[5.000, 3.000, 4.100], center=true);
						}
					}
					translate(v=[0.000, 5.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[5.000, 3.000, 4.100], center=true);
						}
					}
				}
			}
			translate(v=[42.500, 0.000, 0.000])
			{
				union()
				{
					translate(v=[0.000, -5.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[5.000, 3.000, 4.100], center=true);
						}
					}
					translate(v=[0.000, 5.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[5.000, 3.000, 4.100], center=true);
						}
					}
				}
			}
			translate(v=[100.000, 0.000, 0.000])
			{
				union()
				{
					translate(v=[0.000, -5.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[5.000, 3.000, 4.100], center=true);
						}
					}
					translate(v=[0.000, 5.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[5.000, 3.000, 4.100], center=true);
						}
					}
				}
			}
			translate(v=[270.000, 0.000, 0.000])
			{
				union()
				{
					translate(v=[0.000, -5.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[5.000, 3.000, 4.100], center=true);
						}
					}
					translate(v=[0.000, 5.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[5.000, 3.000, 4.100], center=true);
						}
					}
				}
			}
			translate(v=[335.000, 0.000, 0.000])
			{
				union()
				{
					translate(v=[0.000, -5.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[5.000, 3.000, 4.100], center=true);
						}
					}
					translate(v=[0.000, 5.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[5.000, 3.000, 4.100], center=true);
						}
					}
				}
			}
			translate(v=[30.000, -15.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[0.000, -5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
						translate(v=[0.000, 5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
					}
				}
			}
			translate(v=[30.000, 15.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[0.000, -5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
						translate(v=[0.000, 5.000, 0.000])
						{
							translate(v=[0.000, 0.000, 2.000])
							{
								cube(size=[5.000, 3.000, 4.100], center=true);
							}
						}
					}
				}
			}
		}
		translate(v=[193.000, 5.000, 2.000])
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
					translate(v=[0.000, 0.000, -2.000])
					{
						cylinder(4.100, 1.600, 1.600, true);
					}
				}
			}
		}
		union()
		{
			translate(v=[10.000, 55.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
// ClickHole
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[7.500, 10.500, 4.100], center=true);
						}
					}
				}
			}
			translate(v=[10.000, -55.000, 0.000])
			{
				rotate(a=[0.000, 0.000, 90.000])
				{
// ClickHole
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							cube(size=[7.500, 10.500, 4.100], center=true);
						}
					}
				}
			}
		}
	}
	translate(v=[-410.000, 0.000, 0.000])
	{
		cube(size=[1180.000, 2000.000, 2000.000], center=true);
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


