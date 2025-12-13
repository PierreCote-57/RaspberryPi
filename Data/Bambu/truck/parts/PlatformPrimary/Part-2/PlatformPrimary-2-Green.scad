$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Part-2/PlatformPrimary-2-Green
intersection()
{
// Full/PlatformPrimary-Green
	color([0.000, 1.000, 0.000])
	{
		difference()
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
						translate(v=[137.500, 0.000, 0.000])
						{
							rotate(a=[0.000, 0.000, 90.000])
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
						translate(v=[137.500, 37.500, 0.000])
						{
							rotate(a=[0.000, 0.000, 90.000])
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
										cube(size=[85.000, 53.000, 0.250], center=true);
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
										cube(size=[83.500, 51.500, 0.350], center=true);
										rotate(a=[0.000, 0.000, 90.000])
										{
											cylinder(0.010, 3.000, 3.000, false);
										}
									}
								}
							}
						}
						translate(v=[370.000, 0.000, 0.000])
						{
							rotate(a=[0.000, 0.000, -90.000])
							{
								union()
								{
									difference()
									{
										translate(v=[0.000, 0.000, 0.000])
										{
											minkowski()
											{
												cube(size=[42.000, 17.000, 0.250], center=true);
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
												cube(size=[40.500, 15.500, 0.350], center=true);
												rotate(a=[0.000, 0.000, 90.000])
												{
													cylinder(0.010, 3.000, 3.000, false);
												}
											}
										}
									}
									translate(v=[23.500, 0.000, 10.000])
									{
										rotate(a=[0.000, 0.000, 180.000])
										{
											difference()
											{
												translate(v=[0.250, 0.000, 0.000])
												{
													cube(size=[4.500, 8.000, 20.000], center=true);
												}
												translate(v=[1.350, 0.000, 0.000])
												{
													cube(size=[2.500, 4.000, 40.000], center=true);
												}
											}
										}
									}
									translate(v=[-23.500, 0.000, 10.000])
									{
										difference()
										{
											translate(v=[0.250, 0.000, 0.000])
											{
												cube(size=[4.500, 6.000, 20.000], center=true);
											}
											translate(v=[1.350, 0.000, 0.000])
											{
												cube(size=[2.500, 2.000, 40.000], center=true);
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
									text(text=" ", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
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
									text(text=" ", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
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
									text(text=" ", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
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
								text(text="H", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
							}
						}
					}
					translate(v=[-5.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -0.125])
						{
							linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
							{
								text(text="I", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
							}
						}
					}
					translate(v=[-5.000, 40.000, 0.000])
					{
						translate(v=[0.000, 0.000, -0.125])
						{
							linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
							{
								text(text="B", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
							}
						}
					}
					translate(v=[25.000, 20.000, 0.000])
					{
						translate(v=[0.000, 0.000, -0.125])
						{
							linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
							{
								text(text="G", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
							}
						}
					}
					translate(v=[25.000, -20.000, 0.000])
					{
						translate(v=[0.000, 0.000, -0.125])
						{
							linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
							{
								text(text="C", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
							}
						}
					}
					translate(v=[210.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -0.125])
						{
							linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
							{
								text(text="Pi", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
							}
						}
					}
					translate(v=[370.000, 0.000, 0.000])
					{
						rotate(a=[0.000, 0.000, -90.000])
						{
							translate(v=[0.000, 0.000, -0.125])
							{
								linear_extrude(height=0.250, center=false, scale=[1.000, 1.000])
								{
									text(text="Sonar", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
								}
							}
						}
					}
				}
			}
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
								text(text="GPS", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
							}
						}
					}
				}
			}
		}
	}
	translate(v=[5137.500, 0.000, 0.000])
	{
		cube(size=[9725.000, 2000.000, 2000.000], center=true);
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


