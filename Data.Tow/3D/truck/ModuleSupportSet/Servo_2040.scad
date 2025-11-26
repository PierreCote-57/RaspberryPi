$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Servo_2040
union()
{
	translate(v=[2.700, 2.700, 0.000])
	{
		color(c=[1.000, 0.784, 0.000])
		{
			translate(v=[0.000, 0.000, 4.000])
			{
				rotate(a=[180.000, 0.000, 0.000])
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
	translate(v=[2.700, 39.300, 0.000])
	{
		color(c=[1.000, 0.784, 0.000])
		{
			translate(v=[0.000, 0.000, 4.000])
			{
				rotate(a=[180.000, 0.000, 0.000])
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
	translate(v=[59.300, 2.700, 0.000])
	{
		color(c=[1.000, 0.784, 0.000])
		{
			translate(v=[0.000, 0.000, 4.000])
			{
				rotate(a=[180.000, 0.000, 0.000])
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
	translate(v=[59.300, 39.300, 0.000])
	{
		color(c=[1.000, 0.784, 0.000])
		{
			translate(v=[0.000, 0.000, 4.000])
			{
				rotate(a=[180.000, 0.000, 0.000])
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


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


