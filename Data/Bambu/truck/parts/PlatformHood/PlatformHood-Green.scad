$fs = 1.000;
$fa=1.000;
$fn=36.000;


// PlatformHood-Green
color([0.000, 1.000, 0.000])
{
	difference()
	{
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

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


