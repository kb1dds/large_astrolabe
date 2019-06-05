/* Pointer for astrolabe 
 * Copyright (c) 2019 Michael Robinson
 * 
 * This work is licensed under the Creative Commons Attribution 4.0
 *   International License. 
 * To view a copy of this license, visit
 *   http://creativecommons.org/licenses/by/4.0/ 
 */
 
module pointer(hole_diameter, boss_diameter, inner_thickness,  outer_thickness, rete_thickness, rete_diameter, astrolabe_diameter) {
    difference(){
        union(){
            translate([0,0,rete_thickness]) cylinder(d1=boss_diameter,d2=boss_diameter,h=inner_thickness);
            translate([0,-boss_diameter/4,rete_thickness+inner_thickness/2]) cube([astrolabe_diameter,boss_diameter/2,inner_thickness],center=true);
            translate([0,-boss_diameter/4,(outer_thickness+rete_thickness)/2]) cube([astrolabe_diameter,boss_diameter/2,outer_thickness+rete_thickness],center=true);
        }
        union(){
            translate([0,0,rete_thickness/2]) cylinder(d1=hole_diameter,d2=hole_diameter,h=outer_thickness);
            translate([astrolabe_diameter/4,-boss_diameter*1.5,-outer_thickness]) rotate(atan2(boss_diameter*2,astrolabe_diameter)) cube([astrolabe_diameter*1.5,boss_diameter,(outer_thickness+rete_thickness)*3]);
            translate([-astrolabe_diameter/4,-boss_diameter*1.5,-outer_thickness]) mirror([1,0,0]) rotate(atan2(boss_diameter*2,astrolabe_diameter)) cube([astrolabe_diameter*1.5,boss_diameter,(outer_thickness+rete_thickness)*3]);
            translate([0,0,inner_thickness]) cylinder(d1=rete_diameter,d2=rete_diameter,h=outer_thickness);
        }
    }
}
 
$fn=20;
scale(25.4) pointer( 0.15625, 0.375, 0.125, 0.375, 0, 2, 7.5);