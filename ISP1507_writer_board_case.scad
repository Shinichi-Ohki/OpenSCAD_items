$fn = 63;

board_w = 31+1;
board_h = 49+1;

p = 1.3;

translate([0,0,2]) {
  translate([3+.5,3+.5,0]) {
    cylinder(h = 2, r = 2.5);
    difference() {
      cylinder(h = 4, r = p);
      cube([p,0.1,4]);
    }
  }
  translate([3+.5,board_h-3-.5,0]) {
    cylinder(h = 2, r = 2.5);
    difference() {
      cylinder(h = 4, r = p);
      cube([p,0.1,4]);
    }
  }
  translate([board_w-3-.5,3+.5,0]) {
    cylinder(h = 2, r = 2.5);
    difference() {
      cylinder(h = 4, r = p);
      cube([p,0.1,4]);
    }
  }
  translate([board_w-3-.5,board_h-3-.5,0]) {
    cylinder(h = 2, r = 2.5);
    difference() {
      cylinder(h = 4, r = p);
      cube([p,0.1,4]);
    }
  }
}

translate([0,0,0]) {
  #cube([board_w,board_h,2]);
}

difference() {
  translate([-2,-2,0]) {
    cube([board_w+4,2,6]);
  }
  translate([(board_w+4)/2-(board_w+4)/4-2,-2,2]) {
    cube([(board_w+4)/2,2,4]);
  }
}

difference() {
  translate([-2,board_h,0]) {
    cube([board_w+4,2,6]);
  }
  translate([(board_w+4)/2-(board_w+4)/4-2,board_h,2]) {
    cube([(board_w+4)/2,2,4]);
  }
}

difference() {
  translate([-2,-2,0]) {
    cube([2,board_h+4,6]);
  }
  translate([-2,(board_h+4)/2-(board_h+4)/4-2,2]) {
    #cube([2,board_h/2,4]);
  }
}

difference() {
  translate([board_w,-2,0]) {
    cube([2,board_h+4,6]);
  }
  translate([board_w,(board_h+4)/2-(board_h+4)/4-2,2]) {
    #cube([2,board_h/2,4]);
  }
}
