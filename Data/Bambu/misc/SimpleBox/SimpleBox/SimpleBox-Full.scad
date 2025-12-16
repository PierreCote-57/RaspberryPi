$fs = 1.000;
$fa=1.000;
$fn=36.000;


// SimpleBox/SimpleBox-Full
union()
{
// SimpleBox/SimpleBox-Blue
	color([0.000, 0.000, 1.000])
	{
		difference()
		{
// HollowBox
			intersection()
			{
				difference()
				{
					translate(v=[0.000, 0.000, 15.000])
					{
						translate(v=[0.000, 0.000, 0.000])
						{
							minkowski()
							{
								cube(size=[94.000, 44.000, 24.000], center=true);
								sphere(3.000);
							}
						}
					}
					translate(v=[0.000, 0.000, 15.000])
					{
						translate(v=[0.000, 0.000, 0.000])
						{
							minkowski()
							{
								cube(size=[90.000, 40.000, 20.000], center=true);
								sphere(3.000);
							}
						}
					}
				}
				translate(v=[0.000, 0.000, 10.000])
				{
					cube(size=[2000.000, 2000.000, 20.000], center=true);
				}
			}
// Union-White
			union()
			{
				translate(v=[0.000, -25.000, 15.000])
				{
					rotate(a=[90.000, 0.000, 0.000])
					{
						translate(v=[45.000, -10.000, -0.500])
						{
							linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
							{
								text(text="by Pierre", size=3.000, , font="Arial:style=Regular", , halign="right", , valign="bottom");
							}
						}
					}
				}
// CoverInsert
				intersection()
				{
					difference()
					{
						translate(v=[0.000, 0.000, 15.000])
						{
							translate(v=[0.000, 0.000, 0.000])
							{
								minkowski()
								{
									cube(size=[94.000, 44.000, 24.000], center=true);
									sphere(3.000);
								}
							}
						}
						translate(v=[0.000, 0.000, 15.000])
						{
							translate(v=[0.000, 0.000, 0.000])
							{
								minkowski()
								{
									cube(size=[90.000, 40.000, 20.000], center=true);
									sphere(3.000);
								}
							}
						}
					}
					translate(v=[0.000, 0.000, 40.000])
					{
						cube(size=[2000.000, 2000.000, 40.000], center=true);
					}
				}
			}
			translate(v=[0.000, 0.000, 30.000])
			{
				translate(v=[-45.000, 20.000, -0.500])
				{
					linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
					{
						text(text="UpperLeft", size=5.000, , font="Arial:style=Regular", , halign="left", , valign="top");
					}
				}
			}
// Union-Green
			union()
			{
				union()
				{
					translate(v=[-8.500, 30.550, 20.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							difference()
							{
								cylinder(7.500, 5.550, 5.550, true);
								cylinder(7.510, 1.850, 1.850, true);
							}
						}
					}
					translate(v=[8.500, 30.550, 20.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							difference()
							{
								cylinder(8.000, 5.550, 5.550, true);
								cylinder(8.010, 1.850, 1.850, true);
							}
						}
					}
				}
// Union-Green
				union()
				{
					translate(v=[0.000, 30.550, 20.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							difference()
							{
								cylinder(8.500, 5.550, 5.550, true);
								cylinder(8.510, 1.850, 1.850, true);
							}
						}
					}
					translate(v=[0.000, 0.000, 30.000])
					{
						translate(v=[0.000, 0.000, -0.500])
						{
							linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
							{
								text(text="Center", size=10.000, , font="Arial:style=Bold", , halign="center", , valign="center");
							}
						}
					}
				}
			}
			translate(v=[0.000, 0.000, 30.000])
			{
				translate(v=[45.000, -20.000, -0.500])
				{
					linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
					{
						text(text="BottomRight", size=5.000, , font="Arial:style=Italic", , halign="right", , valign="bottom");
					}
				}
			}
		}
	}
// SimpleBox/SimpleBox-White
	color([1.000, 1.000, 1.000])
	{
		difference()
		{
// Union-White
			union()
			{
				translate(v=[0.000, -25.000, 15.000])
				{
					rotate(a=[90.000, 0.000, 0.000])
					{
						translate(v=[45.000, -10.000, -0.500])
						{
							linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
							{
								text(text="by Pierre", size=3.000, , font="Arial:style=Regular", , halign="right", , valign="bottom");
							}
						}
					}
				}
// CoverInsert
				intersection()
				{
					difference()
					{
						translate(v=[0.000, 0.000, 15.000])
						{
							translate(v=[0.000, 0.000, 0.000])
							{
								minkowski()
								{
									cube(size=[94.000, 44.000, 24.000], center=true);
									sphere(3.000);
								}
							}
						}
						translate(v=[0.000, 0.000, 15.000])
						{
							translate(v=[0.000, 0.000, 0.000])
							{
								minkowski()
								{
									cube(size=[90.000, 40.000, 20.000], center=true);
									sphere(3.000);
								}
							}
						}
					}
					translate(v=[0.000, 0.000, 40.000])
					{
						cube(size=[2000.000, 2000.000, 40.000], center=true);
					}
				}
			}
			translate(v=[0.000, 0.000, 30.000])
			{
				translate(v=[-45.000, 20.000, -0.500])
				{
					linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
					{
						text(text="UpperLeft", size=5.000, , font="Arial:style=Regular", , halign="left", , valign="top");
					}
				}
			}
// Union-Green
			union()
			{
				union()
				{
					translate(v=[-8.500, 30.550, 20.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							difference()
							{
								cylinder(7.500, 5.550, 5.550, true);
								cylinder(7.510, 1.850, 1.850, true);
							}
						}
					}
					translate(v=[8.500, 30.550, 20.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							difference()
							{
								cylinder(8.000, 5.550, 5.550, true);
								cylinder(8.010, 1.850, 1.850, true);
							}
						}
					}
				}
// Union-Green
				union()
				{
					translate(v=[0.000, 30.550, 20.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							difference()
							{
								cylinder(8.500, 5.550, 5.550, true);
								cylinder(8.510, 1.850, 1.850, true);
							}
						}
					}
					translate(v=[0.000, 0.000, 30.000])
					{
						translate(v=[0.000, 0.000, -0.500])
						{
							linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
							{
								text(text="Center", size=10.000, , font="Arial:style=Bold", , halign="center", , valign="center");
							}
						}
					}
				}
			}
			translate(v=[0.000, 0.000, 30.000])
			{
				translate(v=[45.000, -20.000, -0.500])
				{
					linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
					{
						text(text="BottomRight", size=5.000, , font="Arial:style=Italic", , halign="right", , valign="bottom");
					}
				}
			}
		}
	}
// SimpleBox/SimpleBox-Red
	color([1.000, 0.000, 0.000])
	{
		difference()
		{
			translate(v=[0.000, 0.000, 30.000])
			{
				translate(v=[-45.000, 20.000, -0.500])
				{
					linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
					{
						text(text="UpperLeft", size=5.000, , font="Arial:style=Regular", , halign="left", , valign="top");
					}
				}
			}
// Union-Green
			union()
			{
				union()
				{
					translate(v=[-8.500, 30.550, 20.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							difference()
							{
								cylinder(7.500, 5.550, 5.550, true);
								cylinder(7.510, 1.850, 1.850, true);
							}
						}
					}
					translate(v=[8.500, 30.550, 20.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							difference()
							{
								cylinder(8.000, 5.550, 5.550, true);
								cylinder(8.010, 1.850, 1.850, true);
							}
						}
					}
				}
// Union-Green
				union()
				{
					translate(v=[0.000, 30.550, 20.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							difference()
							{
								cylinder(8.500, 5.550, 5.550, true);
								cylinder(8.510, 1.850, 1.850, true);
							}
						}
					}
					translate(v=[0.000, 0.000, 30.000])
					{
						translate(v=[0.000, 0.000, -0.500])
						{
							linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
							{
								text(text="Center", size=10.000, , font="Arial:style=Bold", , halign="center", , valign="center");
							}
						}
					}
				}
			}
			translate(v=[0.000, 0.000, 30.000])
			{
				translate(v=[45.000, -20.000, -0.500])
				{
					linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
					{
						text(text="BottomRight", size=5.000, , font="Arial:style=Italic", , halign="right", , valign="bottom");
					}
				}
			}
		}
	}
// SimpleBox/SimpleBox-Green
	color([0.000, 1.000, 0.000])
	{
		difference()
		{
// Union-Green
			union()
			{
				union()
				{
					translate(v=[-8.500, 30.550, 20.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							difference()
							{
								cylinder(7.500, 5.550, 5.550, true);
								cylinder(7.510, 1.850, 1.850, true);
							}
						}
					}
					translate(v=[8.500, 30.550, 20.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							difference()
							{
								cylinder(8.000, 5.550, 5.550, true);
								cylinder(8.010, 1.850, 1.850, true);
							}
						}
					}
				}
// Union-Green
				union()
				{
					translate(v=[0.000, 30.550, 20.000])
					{
						rotate(a=[0.000, 90.000, 0.000])
						{
							difference()
							{
								cylinder(8.500, 5.550, 5.550, true);
								cylinder(8.510, 1.850, 1.850, true);
							}
						}
					}
					translate(v=[0.000, 0.000, 30.000])
					{
						translate(v=[0.000, 0.000, -0.500])
						{
							linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
							{
								text(text="Center", size=10.000, , font="Arial:style=Bold", , halign="center", , valign="center");
							}
						}
					}
				}
			}
			translate(v=[0.000, 0.000, 30.000])
			{
				translate(v=[45.000, -20.000, -0.500])
				{
					linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
					{
						text(text="BottomRight", size=5.000, , font="Arial:style=Italic", , halign="right", , valign="bottom");
					}
				}
			}
		}
	}
// SimpleBox/SimpleBox-Yellow
	color([1.000, 1.000, 0.000])
	{
		difference()
		{
			translate(v=[0.000, 0.000, 30.000])
			{
				translate(v=[45.000, -20.000, -0.500])
				{
					linear_extrude(height=0.500, center=false, scale=[1.000, 1.000])
					{
						text(text="BottomRight", size=5.000, , font="Arial:style=Italic", , halign="right", , valign="bottom");
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


