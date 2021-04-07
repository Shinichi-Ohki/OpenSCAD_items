module hexagon(r = 10) {
    polygon([[0,r],[sqrt(3)*r/2,r/2],[sqrt(3)*r/2,-(r/2)],[0,-r],[-(sqrt(3)*r/2),-(r/2)],[-(sqrt(3)*r/2),r/2]]);
}
module pencil(h = 10,r = 6.2/2*sqrt(3)) {
    linear_extrude(h) {
        hexagon(r);
    }
}

module bit_holder() {
    difference() {
        cube([16,10,9.5]);
        translate([4,10.005,4.5]) rotate([90,0,0]) pencil(10.02,6.6*sqrt(3)/3);
        translate([12,10.005,4.5]) rotate([90,0,0]) pencil(10.02,6.6*sqrt(3)/3);
    }
}

module grip_waku() {
    r = 31;
    difference() {
        union() {
//            cylinder(7,r/2,r/2);
            pencil(7,(r+6)/2);
        }
        translate([0,0,1]) pencil(7,(r-2)/2);
        for (i = [0 : 5]) {
            translate([cos(i*60)*29.5,sin(i*60)*29.5,-0.1]) cylinder(7.2,r/2,r/2);
        }
    }
}

module holder() {
    translate([-8,-5,-9]) {
        difference() {
            union() {
                bit_holder();
                translate([14.5,0,9.1]) rotate([0,45,0]) cube([2,10,2]);
                translate([-1.4,0,9.1]) rotate([0,45,0]) cube([2,10,2]);
            }
        translate([-2,-0.1,9]) cube([20,12,4]);
        }
    }
    grip_waku();
}

holder();