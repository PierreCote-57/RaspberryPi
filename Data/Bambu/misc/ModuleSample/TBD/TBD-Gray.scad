$fs = 1.000;
$fa=1.000;
$fn=36.000;


// TBD/TBD-Gray
color([0.502, 0.502, 0.502])
{
	difference()
	{
		difference()
		{
			cube(size=[40.000, 40.000, 5.000], center=true);
// TBD
			union()
			{
				translate(v=[7.500, 7.500, 0.000])
				{
					color([1.000, 0.784, 0.000])
					{
						union()
						{
							color([0.000, 1.000, 0.000])
							{
								translate(v=[0.000, 0.000, 2.500])
								{
									cylinder(5.100, 2.950, 2.950, true, $fn=6);
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[0.000, 0.000, -2.500])
								{
									cylinder(5.100, 1.600, 1.600, true);
								}
							}
						}
					}
				}
				translate(v=[7.500, -7.500, 0.000])
				{
					color([1.000, 0.784, 0.000])
					{
						union()
						{
							color([0.000, 1.000, 0.000])
							{
								translate(v=[0.000, 0.000, 2.500])
								{
									cylinder(5.100, 2.950, 2.950, true, $fn=6);
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[0.000, 0.000, -2.500])
								{
									cylinder(5.100, 1.600, 1.600, true);
								}
							}
						}
					}
				}
				translate(v=[-7.500, 7.500, 0.000])
				{
					color([1.000, 0.784, 0.000])
					{
						union()
						{
							color([0.000, 1.000, 0.000])
							{
								translate(v=[0.000, 0.000, 2.500])
								{
									cylinder(5.100, 2.950, 2.950, true, $fn=6);
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[0.000, 0.000, -2.500])
								{
									cylinder(5.100, 1.600, 1.600, true);
								}
							}
						}
					}
				}
				translate(v=[-7.500, -7.500, 0.000])
				{
					color([1.000, 0.784, 0.000])
					{
						union()
						{
							color([0.000, 1.000, 0.000])
							{
								translate(v=[0.000, 0.000, 2.500])
								{
									cylinder(5.100, 2.950, 2.950, true, $fn=6);
								}
							}
							color([1.000, 0.000, 0.000])
							{
								translate(v=[0.000, 0.000, -2.500])
								{
									cylinder(5.100, 1.600, 1.600, true);
								}
							}
						}
					}
				}
			}
		}
		translate(v=[0.000, 0.000, 2.600])
		{
			union()
			{
				difference()
				{
					translate(v=[0.000, 0.000, 0.000])
					{
						minkowski()
						{
							cube(size=[17.000, 17.000, 0.200], center=true);
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
							cube(size=[15.500, 15.500, 0.300], center=true);
							rotate(a=[0.000, 0.000, 90.000])
							{
								cylinder(0.010, 3.000, 3.000, false);
							}
						}
					}
				}
				translate(v=[0.000, 0.000, -0.100])
				{
					linear_extrude(height=0.200, center=false, scale=[1.000, 1.000])
					{
						text(text="T", size=8.000, , font="LiberationSans:style=Bold", , halign="center", , valign="center");
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

// ***** Module OpenScad.BOSL2/thread
use <BOSL2/thread.scad>


