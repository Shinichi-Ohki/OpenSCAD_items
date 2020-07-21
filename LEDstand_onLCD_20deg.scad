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


linear_extrude(height = 30) {
  translate([0,0,0]) {
    square([1,19],center = false);
  }
  
  translate([-6.5,0,0]) {
    rotate([0,0,-20]) {
      translate([-24,19,0]) {
        translate([24,0,0]) {
          square([1,11],center = false);
        }
        square([25,1],center = false);
        square([1,11],center = false);
      }
        translate([-17,11,0]) {
          square([17,8],center = false);
      }
    }
  }

  *rotate([0,0,0]) {
    translate([-24,19,0]) {
      translate([24,0,0]) {
        square([1,11],center = false);
      }
      square([25,1],center = false);
      square([1,11],center = false);
    }
  }
  
  
  translate([-17,10,0]) {
    square([17,9],center = false);
  }
    
  translate([-26,19,0]) {
    *square([1,11],center = false);
  }
  
  translate([-18,10,0]) {
    square([1,9],center = false);
  }
  
  polygon(points=[[-17,10],[-19,0],[-20,0],[-18,10]]);
}