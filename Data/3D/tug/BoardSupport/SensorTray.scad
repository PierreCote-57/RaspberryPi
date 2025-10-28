$fs = 1.000;
$fa=1.000;
$fn=36.000;


// SensorTray
difference()
{
	translate(v=[0.000, 0.000, -5.000])
	{
		translate(v=[0.000, 0.000, 0.000])
		{
			minkowski()
			{
				cube(size=[54.000, 74.000, 10.000], center=true);
				rotate(a=[0.000, 0.000, 90.000])
				{
					cylinder(0.010, 3.000, 3.000, false);
				}
			}
		}
	}
	translate(v=[14.000, 20.000, 0.000])
	{
		union()
		{
			translate(v=[-7.500, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, -2.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 0.000])
						{
							translate(v=[0.000, 0.000, 1.000])
							{
								cylinder(2.100, 3.000, 3.000, true, $fn=6);
							}
						}
						translate(v=[0.000, 0.000, -2.000])
						{
							color(c=[1.000, 0.000, 0.000])
							{
								cylinder(6.000, 1.500, 1.500, true);
							}
						}
					}
				}
			}
			translate(v=[7.500, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, -2.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 0.000])
						{
							translate(v=[0.000, 0.000, 1.000])
							{
								cylinder(2.100, 3.000, 3.000, true, $fn=6);
							}
						}
						translate(v=[0.000, 0.000, -2.000])
						{
							color(c=[1.000, 0.000, 0.000])
							{
								cylinder(6.000, 1.500, 1.500, true);
							}
						}
					}
				}
			}
		}
	}
	translate(v=[14.000, -20.000, 0.000])
	{
		union()
		{
			translate(v=[-7.500, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, -2.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 0.000])
						{
							translate(v=[0.000, 0.000, 1.000])
							{
								cylinder(2.100, 3.000, 3.000, true, $fn=6);
							}
						}
						translate(v=[0.000, 0.000, -2.000])
						{
							color(c=[1.000, 0.000, 0.000])
							{
								cylinder(6.000, 1.500, 1.500, true);
							}
						}
					}
				}
			}
			translate(v=[7.500, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, -2.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 0.000])
						{
							translate(v=[0.000, 0.000, 1.000])
							{
								cylinder(2.100, 3.000, 3.000, true, $fn=6);
							}
						}
						translate(v=[0.000, 0.000, -2.000])
						{
							color(c=[1.000, 0.000, 0.000])
							{
								cylinder(6.000, 1.500, 1.500, true);
							}
						}
					}
				}
			}
		}
	}
	translate(v=[-14.000, 20.000, 0.000])
	{
		union()
		{
			translate(v=[-7.500, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, -2.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 0.000])
						{
							translate(v=[0.000, 0.000, 1.000])
							{
								cylinder(2.100, 3.000, 3.000, true, $fn=6);
							}
						}
						translate(v=[0.000, 0.000, -2.000])
						{
							color(c=[1.000, 0.000, 0.000])
							{
								cylinder(6.000, 1.500, 1.500, true);
							}
						}
					}
				}
			}
			translate(v=[7.500, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, -2.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 0.000])
						{
							translate(v=[0.000, 0.000, 1.000])
							{
								cylinder(2.100, 3.000, 3.000, true, $fn=6);
							}
						}
						translate(v=[0.000, 0.000, -2.000])
						{
							color(c=[1.000, 0.000, 0.000])
							{
								cylinder(6.000, 1.500, 1.500, true);
							}
						}
					}
				}
			}
		}
	}
	translate(v=[-14.000, -20.000, 0.000])
	{
		union()
		{
			translate(v=[-7.500, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, -2.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 0.000])
						{
							translate(v=[0.000, 0.000, 1.000])
							{
								cylinder(2.100, 3.000, 3.000, true, $fn=6);
							}
						}
						translate(v=[0.000, 0.000, -2.000])
						{
							color(c=[1.000, 0.000, 0.000])
							{
								cylinder(6.000, 1.500, 1.500, true);
							}
						}
					}
				}
			}
			translate(v=[7.500, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, -2.000])
				{
					union()
					{
						color(c=[0.000, 1.000, 0.000])
						{
							translate(v=[0.000, 0.000, 1.000])
							{
								cylinder(2.100, 3.000, 3.000, true, $fn=6);
							}
						}
						translate(v=[0.000, 0.000, -2.000])
						{
							color(c=[1.000, 0.000, 0.000])
							{
								cylinder(6.000, 1.500, 1.500, true);
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


