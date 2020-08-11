$fn = 63;

p = 1.4;

translate([0.18,0.18,2]) {
  translate([2.54,2.54,0]) {
    cylinder(h = 2, r = 2.5);
    cylinder(h = 4, r = p);
  }
  translate([2.54,38.1,0]) {
    cylinder(h = 2, r = 2.5);
    cylinder(h = 4, r = p);
  }
  translate([38.1,2.54,0]) {
    cylinder(h = 2, r = 2.5);
    cylinder(h = 4, r = p);
  }
  translate([38.1,38.1,0]) {
    cylinder(h = 2, r = 2.5);
    cylinder(h = 4, r = p);
  }
}

translate([0,0,0]) {
  cube([41,41,2]);
}
translate([-2,-2,0]) {
  cube([45,2,6]);
}
translate([-2,41,0]) {
  cube([45,2,6]);
}
translate([-2,-2,0]) {
  cube([2,45,6]);
}
translate([41,-2,0]) {
  cube([2,45,6]);
}
