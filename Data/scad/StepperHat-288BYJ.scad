$fn=36;

hole_height = 5.0;
hole_width = 5.5;
hole_length = 5.4;
hole_radius = hole_length / 2;
arrow_height = 3.0;
full_height = 8.0;

union()
{
    translate([0, 0, -1])
    {
        union()
        {
            difference()
            {
                cylinder(full_height, 5.0, 5.0, true);
                cylinder(full_height + 0.1, hole_radius, hole_radius, true);
            }
            translate([0, -hole_width / 2, 0])
            {
                cube([6.0, 2.0, full_height], true);
            }
            translate([0, hole_width / 2, 0])
            {
                cube([6.0, 2.0, full_height], true);
            }
        }
    }

    translate([-2, 0, 1.5])
    {
        color("Blue")
        cube([10, 5, 3], true);
    }
    
    translate([-8.25, 0, 1.5])
    {
        scale([1.0, 1.0, 1.0])
        color("Green")
        rotate([0,0,180])
        cylinder(3,2.9,2.9,$fn=3, true);
    }
}