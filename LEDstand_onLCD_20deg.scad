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

LED_Width = 25+1;
Display_Width = 17;

linear_extrude(height = 30) {

  translate([1,19,0]) {
    rotate([0,0,-20]) {
      translate([-(LED_Width+2),0,0]) {
        translate([LED_Width+1,0,0]) {
          square([1,11],center = false);
        }
        square([LED_Width+2,1],center = false);
        square([1,11],center = false);
      }
    }
  }
  
  translate([0,0,0]) {
    square([1,19],center = false);
  }
  
  hull() {
    translate([1,19,0]) {
      translate([-19,0,0]) {
        square([19,0.01],center = false);
      }
      rotate([0,0,-20]) {
        translate([-17,0,0]) {
          square([17,0.01],center = false);
        }
      }
    }
  }

  translate([-(Display_Width),10,0]) {
    square([Display_Width,9],center = false);
  }
  
  translate([-(Display_Width+1),10,0]) {
    square([1,9],center = false);
  }
  
  polygon(points=[[-17,10],[-19,0],[-20,0],[-18,10]]);
}
