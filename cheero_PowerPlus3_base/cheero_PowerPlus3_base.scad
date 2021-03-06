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


wall_height = 20;

module half_circle() {
  difference() {
    cylinder(h = 2, r=20);
    translate([0, 0, -0.001]) {
      cylinder(h = 2.002, r=15);
    }
    translate([-20, -20, -0.001]) {
      cube(size = [40,20,2.002], center = false);
    }
  }
}

translate ([0, 11.5, 0]) {
  half_circle();
}

translate ([0, -11.5, 0]) {
  rotate([0,0,180]) {
    half_circle();
  }
}

translate ([0, 0, 1]) {
  cube(size = [10,60,2], center = true);
  difference() {
    cube(size = [40,23,2], center = true);
    cube(size = [30,18,2.002], center = true);
  }
}

translate ([-20, -13.5, 0]) {
  cube(size = [40,2,wall_height], center = false);
}
translate ([-20, 11.5, 0]) {
  cube(size = [40,2,wall_height], center = false);
}

