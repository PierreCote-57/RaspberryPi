
// Truck: 345 x 253
// Under bar: 270x40

x = 130;
y = 100;
track= 40;
clearance = 35;
cutout=10;

baseX = 25;
baseY = 2 * track;
t = 5;


union()
{

	color("green")
	translate([0, 0, -t / 2])
		cube([x, track / 2, t], true);
	Support(+x / 2);
	Support(-x / 2);

	color("magenta")
	triangle(track, track, track / 4);
}

module Support(deltaX) {
	translate([deltaX, 0, -t / 2])
		union()
		{
			// Base
			color("blue")
			cube([baseX, baseY, t], true);

			difference()
			{
				// Pillar
				color("green")
				translate([0, 0, clearance / 2])
					cube([track / 2, track * 1.2, clearance + 5], true);

				// Hole where track fits
				color("red")
				translate([0, 0, clearance])
					cube([track, track, 5.1], true);

				// Slim down the pillars
				height = clearance - cutout;
				width = track;
				color("cyan")
				union()
				{
					translate([0, -(width / 2 + cutout), height / 2])
						cube([track, width, height], true);
					translate([0, +(width / 2 + cutout), height / 2])
						cube([track, width, height], true);
				}
			}
		}
}

module triangle(x, y, z)
{
	scale([1.0, 1.0, 0.5])
	translate([0, 0, z / 2])
	difference()
	{
		cube([x, y, z], true);
		rotate([0, 45, 0])
		translate([0, 0, z])
			cube([3 * x, 3 * y, 3 * z], true);
	}
}