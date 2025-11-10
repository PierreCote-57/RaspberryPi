$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TruckPlatform-base2
intersection()
{
// TruckPlatform
	difference()
	{
		union()
		{
// TruckPlatform-Base
			difference()
			{
				union()
				{
					translate(v=[182.500, 82.500, 2.000])
					{
						cube(size=[365.000, 15.000, 4.000], center=true);
					}
					translate(v=[182.500, -82.500, 2.000])
					{
						cube(size=[365.000, 15.000, 4.000], center=true);
					}
					translate(v=[20.000, 0.000, 2.000])
					{
						cube(size=[40.000, 180.000, 4.000], center=true);
					}
					translate(v=[75.000, 0.000, 2.000])
					{
						cube(size=[70.000, 25.000, 4.000], center=true);
					}
					translate(v=[187.500, 0.000, 2.000])
					{
						cube(size=[155.000, 180.000, 4.000], center=true);
					}
					translate(v=[298.000, 0.000, 2.000])
					{
						cube(size=[66.000, 25.000, 4.000], center=true);
					}
					translate(v=[348.000, 0.000, 2.000])
					{
						cube(size=[34.000, 180.000, 4.000], center=true);
					}
				}
				translate(v=[61.000, 0.000, 6.000])
				{
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -4.000])
						{
							cylinder(8.100, 2.000, 2.000, true);
						}
					}
				}
				translate(v=[287.000, 0.000, 6.000])
				{
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, -4.000])
						{
							cylinder(8.100, 2.000, 2.000, true);
						}
					}
				}
			}
			translate(v=[61.000, 0.000, 0.000])
			{
				union()
				{
					translate(v=[0.000, 0.000, 1.500])
					{
						cube(size=[12.000, 53.000, 3.000], center=true);
					}
					translate(v=[0.000, 20.500, 0.000])
					{
						translate(v=[0.000, 0.000, 4.500])
						{
							cylinder(3.000, 6.000, 6.000, true);
						}
					}
					translate(v=[0.000, -20.500, 0.000])
					{
						translate(v=[0.000, 0.000, 4.500])
						{
							cylinder(3.000, 6.000, 6.000, true);
						}
					}
				}
			}
			translate(v=[180.000, 0.000, 0.000])
			{
				translate(v=[0.000, 0.000, 2.000])
				{
					cube(size=[22.500, 180.000, 4.000], center=true);
				}
			}
		}
		translate(v=[61.000, 0.000, 0.000])
		{
			union()
			{
				translate(v=[0.000, 20.500, 0.000])
				{
					translate(v=[0.000, 0.000, 3.000])
					{
						rotate(a=[180.000, 0.000, 0.000])
						{
							union()
							{
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 2.250])
									{
										cylinder(4.500, 4.000, 4.000, true, $fn=6);
									}
								}
								color(c=[1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -2.250])
									{
										cylinder(4.600, 2.000, 2.000, true);
									}
								}
							}
						}
					}
				}
				translate(v=[0.000, -20.500, 0.000])
				{
					translate(v=[0.000, 0.000, 3.000])
					{
						rotate(a=[180.000, 0.000, 0.000])
						{
							union()
							{
								color(c=[0.000, 1.000, 0.000])
								{
									translate(v=[0.000, 0.000, 2.250])
									{
										cylinder(4.500, 4.000, 4.000, true, $fn=6);
									}
								}
								color(c=[1.000, 0.000, 0.000])
								{
									translate(v=[0.000, 0.000, -2.250])
									{
										cylinder(4.600, 2.000, 2.000, true);
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v=[180.000, 0.000, 0.000])
		{
			color(c=[1.000, 0.000, 0.000])
			{
				union()
				{
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 45.000, 2.000])
						{
							rotate(a=[0.000, 90.000, 0.000])
							{
								cylinder(15.000, 1.300, 1.300, true);
							}
						}
					}
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, 0.000, 2.000])
						{
							rotate(a=[0.000, 90.000, 0.000])
							{
								cylinder(15.000, 1.300, 1.300, true);
							}
						}
					}
					color(c=[1.000, 0.000, 0.000])
					{
						translate(v=[0.000, -45.000, 2.000])
						{
							rotate(a=[0.000, 90.000, 0.000])
							{
								cylinder(15.000, 1.300, 1.300, true);
							}
						}
					}
				}
			}
		}
	}
	translate(v=[590.000, 0.000, 0.000])
	{
		cube(size=[820.000, 2000.000, 2000.000], center=true);
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


