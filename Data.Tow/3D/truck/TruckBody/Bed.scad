$fs = 1.000;
$fa=1.000;
$fn=36.000;


// Bed
translate(v=[0.000, 0.000, 1.500])
{
	cube(size=[180.000, 150.000, 3.000], center=true);
}


// ***** Module MyModules.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/MyModules.scad>

// ***** Module Thread_Library.scad
use </Users/pierrecote/src/aws/LogicielCote.COM/RetiredServer/out/production/resources/scad/Screw_Library/Thread_Library.scad>


