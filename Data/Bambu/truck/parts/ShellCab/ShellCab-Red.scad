$fs = 1.000;
$fa=1.000;
$fn=36.000;


// ShellCab-Red
color([1.000, 0.000, 0.000])
{
	difference()
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
											cube(size=[250.000, 150.000, 95.000], center=true);
											translate(v=[68.750, 0.000, 0.000])
											{
												cube(size=[137.500, 2000.000, 2000.000], center=true);
											}
										}
										translate(v=[0.000, 0.000, 52.250])
										{
											cube(size=[2000.000, 2000.000, 104.500], center=true);
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
			translate(v=[25.000, 0.000, 99.500])
			{
				scale(v=[0.800, 0.800, 0.270])
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
			translate(v=[-57.500, 0.000, 111.500])
			{
				rotate(a=[90.000, 0.000, 90.000])
				{
					union()
					{
						translate(v=[0.000, 0.000, 0.000])
						{
							minkowski()
							{
								cube(size=[93.000, 42.000, 10.000], center=true);
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
								translate(v=[47.000, 27.500, 0.000])
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
								translate(v=[47.000, -27.500, 0.000])
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
								translate(v=[-47.000, 27.500, 0.000])
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
								translate(v=[-47.000, -27.500, 0.000])
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
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


