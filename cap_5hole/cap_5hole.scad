$fn = $preview ? 32 : 300;
hole = 1;

module cap() {
    difference() {
        translate([0,0,5/2]) cylinder(5,32/2,32/2,center=true);
        intersection() {
            translate([0,0,5/2+2]) cylinder(5,30/2,30/2,center=true);
            translate([0,0,142.98]) rotate([90,0,0]) sphere(141);
        }
    }
}

difference() {
    cap();
    translate([0,0,1])  cylinder(6,hole,hole,center=true);
    translate([8,0,1])  cylinder(6,hole,hole,center=true);
    translate([0,8,1])  cylinder(6,hole,hole,center=true);
    translate([-8,0,1]) cylinder(6,hole,hole,center=true);
    translate([0,-8,1]) cylinder(6,hole,hole,center=true);
    cube([20,0.01,10],center=true); // 穴を開けるときのおまじない
    cube([0.01,20,10],center=true); // 穴を開けるときのおまじない
}