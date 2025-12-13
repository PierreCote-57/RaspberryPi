$fs = 1.000;
$fa=1.000;
$fn=36.000;


// ShellCab-White
color([1.000, 1.000, 1.000])
{
	difference()
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


