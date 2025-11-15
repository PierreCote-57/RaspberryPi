$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TrackingBracket
union()
{
	translate(v=[44.000, 0.000, 0.000])
	{
		difference()
		{
			cube(size=[90.000, 9.000, 2.000], center=true);
			union()
			{
				color(c=[0.000, 0.000, 1.000])
				{
					cube(size=[80.000, 3.000, 3.000], center=true);
				}
				translate(v=[40.000, 0.000, 1.500])
				{
					color(c=[0.000, 1.000, 0.000])
					{
						color(c=[1.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -1.500])
							{
								cylinder(3.100, 1.500, 1.500, true);
							}
						}
					}
				}
				translate(v=[-40.000, 0.000, 1.500])
				{
					color(c=[0.000, 1.000, 0.000])
					{
						color(c=[1.000, 0.000, 0.000])
						{
							translate(v=[0.000, 0.000, -1.500])
							{
								cylinder(3.100, 1.500, 1.500, true);
							}
						}
					}
				}
			}
		}
	}
	rotate(a=[0.000, 90.000, 0.000])
	{
		translate(v=[19.000, 0.000, 0.000])
		{
			difference()
			{
				cube(size=[40.000, 9.000, 2.000], center=true);
				union()
				{
					color(c=[0.000, 0.000, 1.000])
					{
						cube(size=[30.000, 3.000, 3.000], center=true);
					}
					translate(v=[15.000, 0.000, 1.500])
					{
						color(c=[0.000, 1.000, 0.000])
						{
							color(c=[1.000, 0.000, 0.000])
							{
								translate(v=[0.000, 0.000, -1.500])
								{
									cylinder(3.100, 1.500, 1.500, true);
								}
							}
						}
					}
					translate(v=[-15.000, 0.000, 1.500])
					{
						color(c=[0.000, 1.000, 0.000])
						{
							color(c=[1.000, 0.000, 0.000])
							{
								translate(v=[0.000, 0.000, -1.500])
								{
									cylinder(3.100, 1.500, 1.500, true);
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


