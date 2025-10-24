$fs = 1.000;
$fa=1.000;
$fn=36.000;


// DisplayTray
intersection()
{
	rotate(a=[40.000, 0.000, 0.000])
	{
		difference()
		{
			union()
			{
				translate(v=[0.000, 0.000, 0.000])
				{
					minkowski()
					{
						cube(size=[79.000, 34.000, 40.000], center=true);
						rotate(a=[0.000, 0.000, 90.000])
						{
							cylinder(h=0.010, r1=3.000, r2=3.000, center=false);
						}
					}
				}
				translate(v=[39.000, 0.000, 25.000])
				{
					cube(size=[7.000, 20.000, 15.000], center=true);
				}
			}
			translate(v=[0.000, 0.000, 0.000])
			{
				minkowski()
				{
					cube(size=[75.000, 17.000, 63.000], center=true);
					rotate(a=[0.000, 0.000, 90.000])
					{
						cylinder(h=0.010, r1=3.000, r2=3.000, center=false);
					}
				}
			}
			translate(v=[0.000, 0.000, 0.000])
			{
				minkowski()
				{
					cube(size=[59.000, 29.000, 60.000], center=true);
					rotate(a=[0.000, 0.000, 90.000])
					{
						cylinder(h=0.010, r1=3.000, r2=3.000, center=false);
					}
				}
			}
			color(c=[1.000, 0.000, 0.000])
			{
				translate(v=[-9.500, 15.100, 15.000])
				{
					cube(size=[49.000, 20.000, 20.000], center=true);
				}
			}
			translate(v=[-45.000, 0.000, 8.000])
			{
				cube(size=[15.000, 17.000, 9.000], center=false);
			}
			translate(v=[37.500, 15.500, 18.000])
			{
				union()
				{
					color(c=[0.000, 1.000, 0.000])
					{
						translate(v=[0.000, 0.000, 1.000])
						{
							cylinder(h=2.100, r1=3.000, r2=3.000, center=true, $fn=6);
						}
					}
					translate(v=[0.000, 0.000, -2.000])
					{
						color(c=[1.000, 0.000, 0.000])
						{
							cylinder(h=6.000, r1=1.500, r2=1.500, center=true);
						}
					}
				}
			}
			translate(v=[37.500, -15.500, 18.000])
			{
				union()
				{
					color(c=[0.000, 1.000, 0.000])
					{
						translate(v=[0.000, 0.000, 1.000])
						{
							cylinder(h=2.100, r1=3.000, r2=3.000, center=true, $fn=6);
						}
					}
					translate(v=[0.000, 0.000, -2.000])
					{
						color(c=[1.000, 0.000, 0.000])
						{
							cylinder(h=6.000, r1=1.500, r2=1.500, center=true);
						}
					}
				}
			}
			translate(v=[-37.500, 15.500, 18.000])
			{
				union()
				{
					color(c=[0.000, 1.000, 0.000])
					{
						translate(v=[0.000, 0.000, 1.000])
						{
							cylinder(h=2.100, r1=3.000, r2=3.000, center=true, $fn=6);
						}
					}
					translate(v=[0.000, 0.000, -2.000])
					{
						color(c=[1.000, 0.000, 0.000])
						{
							cylinder(h=6.000, r1=1.500, r2=1.500, center=true);
						}
					}
				}
			}
			translate(v=[-37.500, -15.500, 18.000])
			{
				union()
				{
					color(c=[0.000, 1.000, 0.000])
					{
						translate(v=[0.000, 0.000, 1.000])
						{
							cylinder(h=2.100, r1=3.000, r2=3.000, center=true, $fn=6);
						}
					}
					translate(v=[0.000, 0.000, -2.000])
					{
						color(c=[1.000, 0.000, 0.000])
						{
							cylinder(h=6.000, r1=1.500, r2=1.500, center=true);
						}
					}
				}
			}
		}
	}
	translate(v=[0.000, 0.000, 49.000])
	{
		cube(size=[2000.000, 2000.000, 102.000], center=true);
	}
}


// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module resources.name
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


