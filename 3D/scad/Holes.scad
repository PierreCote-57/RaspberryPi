$fn=10;

rList =
		[
			1.0, 1.1, 1.2, 1.3, 1.5, 1.75, 2.0
//			2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0
		];

h = 10;
w = 40;

difference()
{
	union()
	{
		color("green")
			cube([10 * (len(rList) + 1), w, h], false);

		for (i = [0 : (len(rList) - 1)])
		{
			x = (i + 1) * 10;
			r = rList[i];
			echo(str("Printing ", i, " width = ", r));
			createLabel(x, r);
		}
	}
	for (i = [0 : (len(rList) - 1)])
	{
		x = 10 + i * 10;
		r = rList[i];
		createHole(x, r);
	}
}

	module createHole(x, radius)
	{
		translate([x, w * 0.25, -0.1])
			cylinder(h * 1.1, radius, radius);
	}

	module createLabel(x, radius)
	{
		translate([x, w * 0.65, h])
			linear_extrude(height=1, convexity=4)
			{
				rotate([0, 0, 90])
					text(str(radius), size=9, font="OpenSymbol", halign="center", valign="center");
			};
	}

