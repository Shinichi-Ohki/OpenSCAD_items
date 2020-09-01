$fn = 63;

p = 1.3;

translate([0.18,0.18,2]) {
  translate([2.54+.5,2.54+.5,0]) {
    cylinder(h = 2, r = 2.5);
    cylinder(h = 4, r = p);
  }
  translate([2.54+.5,38.1+.5,0]) {
    cylinder(h = 2, r = 2.5);
    cylinder(h = 4, r = p);
  }
  translate([38.1+.5,2.54+.5,0]) {
    cylinder(h = 2, r = 2.5);
    cylinder(h = 4, r = p);
  }
  translate([38.1+.5,38.1+.5,0]) {
    cylinder(h = 2, r = 2.5);
    cylinder(h = 4, r = p);
  }
}

translate([0,0,0]) {
  cube([42,42,2]);
}

difference() {
  translate([-2,-2,0]) {
    cube([46,2,6]);
  }
  translate([46/2-12-2,-2,2]) {
    cube([24,2,4]);
  }
}

difference() {
  translate([-2,42,0]) {
    cube([46,2,6]);
  }
  translate([46/2-12-2,42,2]) {
    cube([24,2,4]);
  }
}

difference() {
  translate([-2,-2,0]) {
    cube([2,46,6]);
  }
  translate([-2,46/2-12-2,2]) {
    #cube([2,24,4]);
  }
}

difference() {
  translate([42,-2,0]) {
    cube([2,46,6]);
  }
  translate([42,46/2-12-2,2]) {
    #cube([2,24,4]);
  }
}
