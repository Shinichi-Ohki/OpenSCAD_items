/*
The MIT License (MIT)

Copyright (c) 2020 Shinichi Ohki.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

w = 25;
$fn=32;

module kadomaru(w,dir) {
  rotate(dir*90) {
    intersection() {
      translate([2,0,0]) {
        cylinder(h=w,r=2);
      }
      cube([2,2,w]);
    }
  }
}

kadomaru(w,0);
translate([18,2,0]) {
  kadomaru(w,3);
}
translate([20,-50,0]) {
  kadomaru(w,1);
}
translate([65,-48,0]) {
  kadomaru(w,2);
}

translate([2,0,0]) {
  cube([16,2,w]);
}

translate([0,-20,0]) {
  cube([2,20,w]);
  translate([1,0,0]) {
    cylinder(h=w,r=1);
  }
}

translate([18,-48,0]) {
  cube([2,48,w]);
}

translate([20,-50,0]) {
  cube([43,2,w]);
}

translate([63,-48,0]) {
  cube([2,8,w]);
  translate([1,8,0]) {
    cylinder(h=w,r=1);
  }
}

translate([20,-50,w/2]) {
  difference() {
    cube([10,10,2]);
    translate([10,10,1]) {
      rotate([0,0,-45]) {
        cube([14.14,14.14,2],center=true);
      }
    }
  }
}

translate([20,-50,w/2]) {
  cube([43,5,2]);
}

