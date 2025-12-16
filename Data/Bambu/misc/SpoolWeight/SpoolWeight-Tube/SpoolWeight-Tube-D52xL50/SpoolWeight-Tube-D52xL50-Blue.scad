$fs = 1.000;
$fa=1.000;
$fn=72.000;


// SpoolWeight-Tube/SpoolWeight-Tube-D52xL50/SpoolWeight-Tube-D52xL50-Blue
color([0.000, 0.000, 1.000])
{
	difference()
	{
		difference()
		{
			union()
			{
				intersection()
				{
					difference()
					{
						cylinder(60.000, 45.000, 45.000, false, $fn=6);
						translate(v=[0.000, 0.000, 59.995])
						{
							translate(v=[0.000, 0.000, -59.995])
							{
								union()
								{
									trapezoid_thread_negative_space(length=60.0, pitchRadius=22.5, threadHeightToPitch=0.5, profileRatio=0.4, threadAngle=170.0, clearance=0.15, backlash=0.1, stepsPerTurn=36.0, pitch=2.0);
									translate(v=[0.000, 0.000, -0.866])
									{
										cylinder(3.464, 23.366, 20.768, false);
									}
									translate(v=[0.000, 0.000, 60.866])
									{
										rotate(a=[180.000, 0.000, 0.000])
										{
											cylinder(3.464, 23.366, 20.768, false);
										}
									}
								}
							}
						}
					}
					cylinder(60.000, 26.000, 26.000, false);
				}
				translate(v=[0.000, 0.000, -1.000])
				{
					minkowski()
					{
						difference()
						{
							cylinder(1.000, 38.000, 38.000, true);
							translate(v=[41.000, 0.000, 0.000])
							{
								cylinder(3.000, 6.000, 6.000, true);
							}
							translate(v=[35.507, 20.500, 0.000])
							{
								cylinder(3.000, 6.000, 6.000, true);
							}
							translate(v=[20.500, 35.507, 0.000])
							{
								cylinder(3.000, 6.000, 6.000, true);
							}
							translate(v=[0.000, 41.000, 0.000])
							{
								cylinder(3.000, 6.000, 6.000, true);
							}
							translate(v=[-20.500, 35.507, 0.000])
							{
								cylinder(3.000, 6.000, 6.000, true);
							}
							translate(v=[-35.507, 20.500, 0.000])
							{
								cylinder(3.000, 6.000, 6.000, true);
							}
							translate(v=[-41.000, 0.000, 0.000])
							{
								cylinder(3.000, 6.000, 6.000, true);
							}
							translate(v=[-35.507, -20.500, 0.000])
							{
								cylinder(3.000, 6.000, 6.000, true);
							}
							translate(v=[-20.500, -35.507, 0.000])
							{
								cylinder(3.000, 6.000, 6.000, true);
							}
							translate(v=[-0.000, -41.000, 0.000])
							{
								cylinder(3.000, 6.000, 6.000, true);
							}
							translate(v=[20.500, -35.507, 0.000])
							{
								cylinder(3.000, 6.000, 6.000, true);
							}
							translate(v=[35.507, -20.500, 0.000])
							{
								cylinder(3.000, 6.000, 6.000, true);
							}
						}
						cylinder(1.000, 2.000, 2.000, true);
					}
				}
			}
			difference()
			{
				union()
				{
					difference()
					{
						cylinder(100.000, 4.000, 4.000, true);
						cylinder(100.010, 3.000, 3.000, true);
					}
					difference()
					{
						cylinder(100.000, 6.000, 6.000, true);
						cylinder(100.010, 5.000, 5.000, true);
					}
					difference()
					{
						cylinder(100.000, 8.000, 8.000, true);
						cylinder(100.010, 7.000, 7.000, true);
					}
					difference()
					{
						cylinder(100.000, 10.000, 10.000, true);
						cylinder(100.010, 9.000, 9.000, true);
					}
					difference()
					{
						cylinder(100.000, 12.000, 12.000, true);
						cylinder(100.010, 11.000, 11.000, true);
					}
					difference()
					{
						cylinder(100.000, 14.000, 14.000, true);
						cylinder(100.010, 13.000, 13.000, true);
					}
					difference()
					{
						cylinder(100.000, 16.000, 16.000, true);
						cylinder(100.010, 15.000, 15.000, true);
					}
					difference()
					{
						cylinder(100.000, 18.000, 18.000, true);
						cylinder(100.010, 17.000, 17.000, true);
					}
					difference()
					{
						cylinder(100.000, 20.000, 20.000, true);
						cylinder(100.010, 19.000, 19.000, true);
					}
				}
				union()
				{
					rotate(a=[0.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -1.000])
						{
							cube(size=[45.000, 2.000, 2.000], center=true);
						}
					}
					rotate(a=[0.000, 0.000, 45.000])
					{
						translate(v=[0.000, 0.000, -1.000])
						{
							cube(size=[45.000, 2.000, 2.000], center=true);
						}
					}
					rotate(a=[0.000, 0.000, 90.000])
					{
						translate(v=[0.000, 0.000, -1.000])
						{
							cube(size=[45.000, 2.000, 2.000], center=true);
						}
					}
					rotate(a=[0.000, 0.000, 135.000])
					{
						translate(v=[0.000, 0.000, -1.000])
						{
							cube(size=[45.000, 2.000, 2.000], center=true);
						}
					}
				}
			}
		}
// Union-Yellow
		union()
		{
			translate(v=[0.000, -20.000, -1.500])
			{
				rotate(a=[180.000, 0.000, 0.000])
				{
					linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
					{
						text(text="Ø 52mm", size=6.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
					}
				}
			}
			translate(v=[0.000, 20.000, -1.500])
			{
				rotate(a=[180.000, 0.000, 0.000])
				{
					linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
					{
						text(text="L 50mm", size=6.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
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


