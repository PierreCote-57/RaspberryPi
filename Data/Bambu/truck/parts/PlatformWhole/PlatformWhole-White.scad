$fs = 1.000;
$fa=1.000;
$fn=36.000;


// PlatformWhole-White
color([1.000, 1.000, 1.000])
{
	difference()
	{
// Union-White
		union()
		{
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
			}
			translate(v=[322.500, 0.000, 30.000])
			{
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
// Union-Black
		union()
		{
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
									text(text="GPS", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
								}
							}
						}
					}
				}
			}
			translate(v=[30.000, -52.000, 0.050])
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
							}
							translate(v=[0.000, 0.000, -54.000])
							{
								rotate(a=[90.000, 0.000, 180.000])
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
							}
						}
					}
					translate(v=[50.000, 2.000, 1.000])
					{
						cube(size=[100.000, 4.000, 2.000], center=true);
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


