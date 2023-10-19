$fn=63;

module dial_hole() {
    cylinder(10,45/2,45/2);
}

module base() {
    cube([50,50,3],center=true);
    rotate([0,0,45]) cube([50,50,3],center=true);
}

difference() {
    translate([0,0,1.5]) base();
    translate([0,0,-1]) dial_hole();
    translate([0,30,-1]) cylinder(10,4/2,4/2);
    translate([20,20,-1]) cylinder(10,4/2,4/2);
    translate([-20,20,-1]) cylinder(10,4/2,4/2);
}
