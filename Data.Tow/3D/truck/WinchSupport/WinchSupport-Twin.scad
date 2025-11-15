$fs = 1.000;
$fa=1.000;
$fn=36.000;


// WinchSupport-Twin
union()
{
// WinchSupport
	difference()
	{
		union()
		{
			translate(v=[26.000, 0.000, -1.000])
			{
				cube(size=[52.000, 36.000, 2.000], center=true);
			}
			intersection()
			{
				translate(v=[1.500, 0.000, -8.313])
				{
					scale(v=[1.000, 1.000, 2.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							cylinder(3.000, 16.625, 16.625, true);
						}
					}
				}
				translate(v=[0.000, 0.000, 33.250])
				{
					cube(size=[2000.000, 2000.000, 66.500], center=true);
				}
			}
			union()
			{
				translate(v=[43.000, 0.000, 4.750])
				{
					cube(size=[5.000, 11.800, 9.500], center=true);
				}
				translate(v=[0.000, 6.500, 0.000])
				{
					color(c=[0.000, 0.000, 1.000])
					{
						translate(v=[43.000, 0.000, 9.250])
						{
							cube(size=[5.000, 1.200, 18.500], center=true);
						}
					}
				}
				translate(v=[0.000, -6.500, 0.000])
				{
					color(c=[0.000, 0.000, 1.000])
					{
						translate(v=[43.000, 0.000, 9.250])
						{
							cube(size=[5.000, 1.200, 18.500], center=true);
						}
					}
				}
			}
		}
		translate(v=[2.000, 0.000, 14.500])
		{
			rotate(a=[0.000, 90.000, 0.000])
			{
				cylinder(2.100, 4.250, 4.250, true);
			}
		}
	}
	rotate(a=[0.000, 0.000, 180.000])
	{
// WinchSupport
		difference()
		{
			union()
			{
				translate(v=[26.000, 0.000, -1.000])
				{
					cube(size=[52.000, 36.000, 2.000], center=true);
				}
				intersection()
				{
					translate(v=[1.500, 0.000, -8.313])
					{
						scale(v=[1.000, 1.000, 2.000])
						{
							rotate(a=[0.000, 90.000, 0.000])
							{
								cylinder(3.000, 16.625, 16.625, true);
							}
						}
					}
					translate(v=[0.000, 0.000, 33.250])
					{
						cube(size=[2000.000, 2000.000, 66.500], center=true);
					}
				}
				union()
				{
					translate(v=[43.000, 0.000, 4.750])
					{
						cube(size=[5.000, 11.800, 9.500], center=true);
					}
					translate(v=[0.000, 6.500, 0.000])
					{
						color(c=[0.000, 0.000, 1.000])
						{
							translate(v=[43.000, 0.000, 9.250])
							{
								cube(size=[5.000, 1.200, 18.500], center=true);
							}
						}
					}
					translate(v=[0.000, -6.500, 0.000])
					{
						color(c=[0.000, 0.000, 1.000])
						{
							translate(v=[43.000, 0.000, 9.250])
							{
								cube(size=[5.000, 1.200, 18.500], center=true);
							}
						}
					}
				}
			}
			translate(v=[2.000, 0.000, 14.500])
			{
				rotate(a=[0.000, 90.000, 0.000])
				{
					cylinder(2.100, 4.250, 4.250, true);
				}
			}
		}
	}
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


