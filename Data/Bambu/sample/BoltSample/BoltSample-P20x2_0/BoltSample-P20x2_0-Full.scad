$fs = 1.000;
$fa=1.000;
$fn=36.000;


// BoltSample-P20x2_0/BoltSample-P20x2_0-Full
union()
{
// BoltSample-P20x2_0/BoltSample-P20x2_0-Blue
	color([0.000, 0.000, 1.000])
	{
		difference()
		{
			translate(v=[75.000, 0.000, 0.000])
			{
				union()
				{
					difference()
					{
						translate(v=[0.000, 0.000, -2.000])
						{
							trapezoid_thread(pitchRadius=10.0, threadHeightToPitch=0.5, profileRatio=0.6, threadAngle=170.0, clearance=0.15, backlash=0.1, stepsPerTurn=24.0, pitch=2.0, length=32.0);
						}
						translate(v=[0.000, 0.000, -45.000])
						{
							cube(size=[90.000, 90.000, 90.000], center=true);
						}
					}
					translate(v=[0.000, 0.000, -10.000])
					{
						difference()
						{
							cylinder(10.000, 10.000, 10.000, false);
							translate(v=[0.000, 0.000, -0.005])
							{
								cylinder(10.010, 6.700, 6.700, false, $fn=6);
							}
						}
					}
				}
			}
			translate(v=[0.000, 0.000, 0.000])
			{
				difference()
				{
					cylinder(20.000, 20.000, 20.000, false, $fn=6);
					translate(v=[0.000, 0.000, 19.995])
					{
						translate(v=[0.000, 0.000, -19.995])
						{
							union()
							{
								trapezoid_thread_negative_space(pitchRadius=10.0, threadHeightToPitch=0.5, profileRatio=0.4, threadAngle=170.0, clearance=0.15, backlash=0.1, stepsPerTurn=24.0, pitch=2.0, length=20.0);
								translate(v=[0.000, 0.000, -0.866])
								{
									cylinder(3.464, 10.866, 8.268, false);
								}
								translate(v=[0.000, 0.000, 20.866])
								{
									rotate(a=[180.000, 0.000, 0.000])
									{
										cylinder(3.464, 10.866, 8.268, false);
									}
								}
							}
						}
					}
				}
			}
			translate(v=[-75.000, 0.000, 0.000])
			{
				intersection()
				{
					difference()
					{
						cylinder(20.000, 20.000, 20.000, false, $fn=6);
						translate(v=[0.000, 0.000, 19.995])
						{
							translate(v=[0.000, 0.000, -19.995])
							{
								union()
								{
									trapezoid_thread_negative_space(pitchRadius=10.0, threadHeightToPitch=0.5, profileRatio=0.4, threadAngle=170.0, clearance=0.15, backlash=0.1, stepsPerTurn=24.0, pitch=2.0, length=20.0);
									translate(v=[0.000, 0.000, -0.866])
									{
										cylinder(3.464, 10.866, 8.268, false);
									}
									translate(v=[0.000, 0.000, 20.866])
									{
										rotate(a=[180.000, 0.000, 0.000])
										{
											cylinder(3.464, 10.866, 8.268, false);
										}
									}
								}
							}
						}
					}
					translate(v=[-500.000, 0.000, 0.000])
					{
						cube(size=[1000.000, 2000.000, 2000.000], center=true);
					}
				}
			}
		}
	}
// BoltSample-P20x2_0/BoltSample-P20x2_0-Yellow
	color([1.000, 1.000, 0.000])
	{
		difference()
		{
			translate(v=[0.000, 0.000, 0.000])
			{
				difference()
				{
					cylinder(20.000, 20.000, 20.000, false, $fn=6);
					translate(v=[0.000, 0.000, 19.995])
					{
						translate(v=[0.000, 0.000, -19.995])
						{
							union()
							{
								trapezoid_thread_negative_space(pitchRadius=10.0, threadHeightToPitch=0.5, profileRatio=0.4, threadAngle=170.0, clearance=0.15, backlash=0.1, stepsPerTurn=24.0, pitch=2.0, length=20.0);
								translate(v=[0.000, 0.000, -0.866])
								{
									cylinder(3.464, 10.866, 8.268, false);
								}
								translate(v=[0.000, 0.000, 20.866])
								{
									rotate(a=[180.000, 0.000, 0.000])
									{
										cylinder(3.464, 10.866, 8.268, false);
									}
								}
							}
						}
					}
				}
			}
			translate(v=[-75.000, 0.000, 0.000])
			{
				intersection()
				{
					difference()
					{
						cylinder(20.000, 20.000, 20.000, false, $fn=6);
						translate(v=[0.000, 0.000, 19.995])
						{
							translate(v=[0.000, 0.000, -19.995])
							{
								union()
								{
									trapezoid_thread_negative_space(pitchRadius=10.0, threadHeightToPitch=0.5, profileRatio=0.4, threadAngle=170.0, clearance=0.15, backlash=0.1, stepsPerTurn=24.0, pitch=2.0, length=20.0);
									translate(v=[0.000, 0.000, -0.866])
									{
										cylinder(3.464, 10.866, 8.268, false);
									}
									translate(v=[0.000, 0.000, 20.866])
									{
										rotate(a=[180.000, 0.000, 0.000])
										{
											cylinder(3.464, 10.866, 8.268, false);
										}
									}
								}
							}
						}
					}
					translate(v=[-500.000, 0.000, 0.000])
					{
						cube(size=[1000.000, 2000.000, 2000.000], center=true);
					}
				}
			}
		}
	}
// BoltSample-P20x2_0/BoltSample-P20x2_0-Green
	color([0.000, 1.000, 0.000])
	{
		translate(v=[-75.000, 0.000, 0.000])
		{
			intersection()
			{
				difference()
				{
					cylinder(20.000, 20.000, 20.000, false, $fn=6);
					translate(v=[0.000, 0.000, 19.995])
					{
						translate(v=[0.000, 0.000, -19.995])
						{
							union()
							{
								trapezoid_thread_negative_space(pitchRadius=10.0, threadHeightToPitch=0.5, profileRatio=0.4, threadAngle=170.0, clearance=0.15, backlash=0.1, stepsPerTurn=24.0, pitch=2.0, length=20.0);
								translate(v=[0.000, 0.000, -0.866])
								{
									cylinder(3.464, 10.866, 8.268, false);
								}
								translate(v=[0.000, 0.000, 20.866])
								{
									rotate(a=[180.000, 0.000, 0.000])
									{
										cylinder(3.464, 10.866, 8.268, false);
									}
								}
							}
						}
					}
				}
				translate(v=[-500.000, 0.000, 0.000])
				{
					cube(size=[1000.000, 2000.000, 2000.000], center=true);
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


