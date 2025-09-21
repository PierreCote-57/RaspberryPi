/*
   Boat hull toolbox - a 3d carving method

   Author: Guillaume Fougnies   (sailboat@w0.yt)
   License: GNU GPL
   URL: https://www.thingiverse.com/thing:3707731



   Copyright (C) 2019  Guillaume Fougnies

   This program is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License
   as published by the Free Software Foundation; either version 2
   of the License, or (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.



   Honeycomb credits to: Gael Lafond 2017
   https://www.thingiverse.com/thing:2484395
 */


processing	= 0;		/* Processing:
				   - 0 : raw solid hull  (for design or molding)
				   - 1 : rounded solid hull
				   - 2 : rounded empty hull
				   - 3 : bulkheads (for splicing bulkheads)
				   - 4 : stem
				   - 5 : deck
				 */

phi_steps	= 1.00;		/* precision (phi step increment in range 0-90 )	*/
filled		= 1;		/* filled hull (0/1) - only for processing:0		*/
rounded		= 0;		/* rounded hull - 0 to radius (cpu intensive)		*/
length		= 500 -rounded;	/* hull: length  					*/
width		= 130 -rounded;	/* hull: width   					*/
height		= 70 -rounded;	/* hull: height - for a circle, set it to: (width/2) 	*/

hull_thickness		= 3;    /* for empty hull rendering */
bulkhead_thickness	= 2.5;
mesh_thickness		= 2;

spacer			= 0.3;

$fn			= 100;

/*
   The shape:
 
   - step: 1 .. 100 - from 0 to 'length'. (1 and 100 are mandatory)
   - height_factor / width_factor:
             minimum - 0.01 .. 1.00 - maximum 'height' / 'width'
   - shape_factor:
             0.00 .. 1.00 - circle to ridge
 
 */
shape = [
        // step , [ height_factor, width_factor, shape_factor ]
	[1,   [ 0.02, 	0.02, 1.00 ]],
	[3,   [ 0.17, 	0.10, 1.00 ]],
	[6,   [ 0.34, 	0.22, 1.00 ]],
	[9,   [ 0.48, 	0.33, 1.00 ]],
	[12,  [ 0.60, 	0.43, 1.00 ]],
	[15,  [ 0.71, 	0.52, 1.00 ]],
	[18,  [ 0.80, 	0.61, 0.80 ]],
	[21,  [ 0.87, 	0.69, 0.60 ]],
	[24,  [ 0.92, 	0.76, 0.60 ]],
	[28,  [ 0.963, 	0.84, 0.60 ]],
	[33,  [ 0.985, 	0.91, 0.30 ]],
	[40,  [ 1.00,	0.97, 0.10 ]],
	[45,  [ 1.00,	0.99, 0.10 ]],
	[50,  [ 1.00,	1.00, 0.04 ]],
	[55,  [ 0.98,	0.98, 0.02 ]],
	[60,  [ 0.935,	0.95, 0.02 ]],
	[65,  [ 0.86,	0.91, 0.01 ]],
	[75,  [ 0.68,	0.78, 0.01 ]],
	[80,  [ 0.57,	0.71, 0.00 ]],
	[85,  [ 0.46,	0.64, 0.00 ]],
	[90,  [ 0.355,	0.56, 0.00 ]],
	[95,  [ 0.25,	0.48, 0.00 ]],
	[100, [ 0.15,	0.40, 0.00 ]]
];

/*
   Stem:
   step to split - or empty if no split
 */
stemsplit = [ 30, 65 ];


/*
   Helper for 'do.sh'
 */

if (processing == 66) {
	/* execute order 66 */
	echo( len(shape) );
}
if (processing == 67) {
	/* execute order 67 */
	echo( len(stemsplit) );
}


/*
   Computing
 */

bhid = 0;
stid = 0;

if (processing == 2) { filled = 0; }

function mcorrectX( radius, phi, fx, roundratio ) = radius * cos(phi/(1+roundratio)) * fx;

function mcorrectY( radius, phi, fy ) = radius * sin(phi) * fy;

function mcorrectXaligned( radius, phi, fx, roundratio ) =
	mcorrectX( radius, phi, fx, roundratio )      /* the curve */
	- mcorrectX( radius, 90, fx, roundratio )     /* regulate position */
	;

function mcorrectXnormalized( radius, phi, fx, roundratio ) =
	mcorrectXaligned( radius, phi, fx, roundratio )
	/* Normalize depending on the roundratio */
	* (mcorrectXaligned( radius, 180, fx, 1 ) / mcorrectXaligned( radius, 180, fx, roundratio ))
	/* Normalize depending on the resulting height */
	* (height / mcorrectXaligned( height, 180, 1, 1 ))
	;

function mcorrect(r_x, r_y, fx, fy, roundratio) = [
	for (phi=[(filled?0:90) : phi_steps : 180]) [
		mcorrectXnormalized( r_x, phi, fx, roundratio ),
		mcorrectY( r_y, phi, fy )
	]
];

/* a step - w/ targeted: h / w */
module _cockpit_step( step, h, w ) {
	difference() {
		linear_extrude(height=0.01)
			polygon(mcorrect( h, w, step[0],
						step[1],
						step[2] ));
		translate([-width*5,0,0])
			cube([width*10,width*10,10], center=true);
	}
}

/* a step */
module cockpit_step( step ) {
	_cockpit_step( step, height, width/2 );
}

/* a step bulkhead */
module cockpit_step_bh( step ) {
	difference() {
		cockpit_step( step );
		/* scale/translate to make openscad preview happy */
		translate([0,0,-0.1]) scale([1,1,100])
			_cockpit_step( step, height*.7, (width/2)*.7 );
	}
}

/* a slice between two steps */
module cockpit_slice( b ) {
	for (p=[b:1:b+1]) {
		/* Move it to z axis */
		translate([0,0,((shape[p][0]-1)/99)*length]) {
			cockpit_step( shape[p][1] );
		}
	}
}

/* half of the hull */
module cockpit_half() {
	for (b=[0:1:len(shape)-2]) {
		hull() {
			cockpit_slice( b );
		}
	}
}

/* full hull */
module cockpit() {
	union() {
		cockpit_half();
		mirror([0,1,0]) cockpit_half();
	}
}

/* rounded (minkowski) hull */
module cockpit_rounded() {
	if (rounded)
		minkowski() {
			cockpit();
			sphere(r=rounded);
		}
	else
		cockpit();
}

function sc_reductor( sz, wall ) = ((sz - wall*2)/sz);

module cockpit_mask( wall ) {
	translate( [-0.02, 0, wall] )   /* 0.02 for openscad preview */
		scale([ sc_reductor( height, wall/2 ),
				sc_reductor( width, wall ),
				sc_reductor( length, wall ) ])
		cockpit_rounded();
}

module cockpit_empty( wall ) {
	difference() {
		cockpit_rounded();
		cockpit_mask( wall );
	}
}

/*
   bulkhead
 */
module hexagon(d) { circle(d=d, $fn=6); }
module honeycomb(dia,wall,x,y) {
	sdia = dia * cos(30);
	pwall = wall * cos(30);
	yStep = sdia + wall;
	xStep = dia*3/2 + pwall*2;
	linear_extrude(length)  {
		for (yOffset = [0:yStep:y+yStep], xOffset = [0:xStep:x+xStep]) {
			translate([xOffset, yOffset]) {
				hexagon(dia);
			}
			translate([xOffset + dia*3/4 + pwall, yOffset + (sdia+wall)/2]) {
				hexagon(dia);
			}
		}
	}
}

module bh_cockpit_mask_mesh() {
	translate([mesh_thickness*2,0,0])
		honeycomb( mesh_thickness*3, mesh_thickness, height, width );
}

module bh_cockpit_mesh( nomesh ) {
	difference() {
		cockpit_rounded();
		intersection() {
			cockpit_mask( bulkhead_thickness );
			if (! nomesh) {
				union() {
					bh_cockpit_mask_mesh();
					mirror([0,1,0]) bh_cockpit_mask_mesh();
				}
			}
		}
		stemdeck_cockpit_solid( bulkhead_thickness / 2 + spacer );
	}
}

function mask_bh_decal( x ) = ((shape[x][0] == 1)?0:((shape[x][0] == 100)?-bulkhead_thickness:bulkhead_thickness/2));
function mask_bh_pos( x ) = ((shape[x][0]-1)/99)*length + mask_bh_decal(x);
function mask_bh_pos_top( x ) = mask_bh_pos(x) + bulkhead_thickness;

/* bulkheads processing */
module cockpit_bh( x, nomesh ) {
	intersection()
	{
		translate([0,0, - mask_bh_pos( x )]) {
			bh_cockpit_mesh( nomesh );
		}
		/* mask */
		translate([0,0,bulkhead_thickness/2])
			cube([ length, length, bulkhead_thickness ], center=true);
	}
}
module cockpit_bh_inplace(x) {
	translate([0,0, mask_bh_pos( x )])
		cockpit_bh( x, 1 );

}
module cockpit_mask_bhs() {
	difference()
	{
		bh_cockpit_mesh( 1 );
		translate([-length/2,-length/2,bulkhead_thickness])
			cube([length, length, mask_bh_pos(1)-mask_bh_pos_top(0) ]);
		for (b=[2:1:len(shape)-1]) {
			translate([-length/2,-length/2,mask_bh_pos_top(b-1)])
				cube([length, length, mask_bh_pos(b)-mask_bh_pos_top(b-1) ]);
		}
	}
}
module cockpit_bhs( x ) {
	if (x<0) {
		for (b=[0:1:len(shape)-1]) {
			translate([ b*width, 0, 0 ]) {
				cockpit_bh( b );
			}
		}
	}
	else {
		cockpit_bh( x );
	}
}


/*
   Stem & Deck
 */
module stemdeck_cockpit_solid( thickness ) {
	difference() {
		intersection() {
			cockpit_rounded();
			union() {
				cube([ height*3, bulkhead_thickness, length*3 ], center=true);
				cube([ bulkhead_thickness*2, height*2, length*3 ], center=true);
			}
		}
		cockpit_mask( thickness );
	}
}
/*
   Stem
 */
module stem_cockpit( thickness ) {
	difference() {
		intersection() {
			cockpit_empty( thickness );
			cube([ height*3, bulkhead_thickness, length*3 ], center=true);
		}
		cockpit_mask_bhs();
	}
}
module stem_cockpit_part( thickness, id ) {
	difference() {
		stem_cockpit( thickness );
		/* down */
		if (id>0)
			translate([-length/2,-length/2,0])
				cube([length,length, bulkhead_thickness+((stemsplit[id-1]-1)/99) * length]);
		/* up */
		if (id<len(stemsplit))
			translate([-length/2,-length/2,bulkhead_thickness+((stemsplit[id]-1)/99) * length])
				cube([length,length,length]);
	}
}

/*
   Deck
 */
module deck_cockpit( thickness ) {
	difference() {
		intersection() {
			cockpit_empty( thickness );
			cube([ bulkhead_thickness*2, height*2, length*3 ], center=true);
		}
		cockpit_mask_bhs();
		cube([ height*3, bulkhead_thickness, length*3 ], center=true);
	}
}
module deck_cockpit_part( thickness, id ) {
	difference() {
		deck_cockpit( thickness );
		/* down */
		if (id>0)
			translate([-length/2,-length/2,0])
				cube([length,length, bulkhead_thickness+((stemsplit[id-1]-1)/99) * length]);
		/* up */
		if (id<len(stemsplit))
			translate([-length/2,-length/2,bulkhead_thickness+((stemsplit[id]-1)/99) * length])
				cube([length,length,length]);
	}
}


/* Generate */
if (processing == 0) {
	cockpit();
}
else if (processing == 1) {
	cockpit_rounded();
}
else if (processing == 2) {
	cockpit_empty( hull_thickness );
}
else if (processing == 3) {
	if (bhid) {
		// bhid for automation
		cockpit_bhs( bhid - 1 );
	}
	else {
		cockpit_bhs( -1 ); /* -1 for all, or (0 .. X) for a step */
	}
}
else if (processing == 4) {
	if (stid) {
		stem_cockpit_part( bulkhead_thickness, stid - 1 );
	}
	else {
		stem_cockpit( bulkhead_thickness );
	}
}
else if (processing == 5) {
	if (stid) {
		deck_cockpit_part( bulkhead_thickness, stid - 1 );
	}
	else {
		deck_cockpit( bulkhead_thickness );
	}
}


else if (processing == 6) {
	stemdeck_cockpit_solid( bulkhead_thickness / 2 );
	cockpit_mask_bhs();
}
