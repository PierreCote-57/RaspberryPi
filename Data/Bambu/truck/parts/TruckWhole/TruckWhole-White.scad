$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TruckWhole-White
color([1.000, 1.000, 1.000])
{
	difference()
	{
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


