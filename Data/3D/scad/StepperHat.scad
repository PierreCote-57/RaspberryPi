$fn=36;

union()
{
    translate([0, 0, -1])
    {
        union()
        {
            difference()
            {
                cylinder(8, 5.0, 5.0, true);
                cylinder(8.1, 2.75, 2.75, true);
            }
            translate([0, -2.5, 0])
            {
                cube([6.0, 2.0, 8.0], true);
            }
            translate([0, 2.5, 0])
            {
                cube([6.0, 2.0, 8.0], true);
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