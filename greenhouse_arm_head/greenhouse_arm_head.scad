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

maleBaseWidth = 33;
maleBaseThick = 6;
maleMiddleWidth = 26;
maleMiddleThick = 3;
maleTopWidth = 33;
maleTopThick = 3;

$fn = 63;

module HeadMale(BaseWidth=maleBaseWidth,BaseThick=maleBaseThick,MiddleWidth=maleMiddleWidth,MiddleThick=maleMiddleThick,TopWidth=maleTopWidth,TopThick=maleTopThick) {
    translate([0,0,0]){
        cube([BaseWidth,BaseWidth,BaseThick]);
    }

    translate([(BaseWidth-MiddleWidth)/2,(BaseWidth-MiddleWidth)/2,BaseThick]){
        cube([MiddleWidth,MiddleWidth,MiddleThick]);
    }

    translate([0,0,BaseThick+MiddleThick]){
        cube([TopWidth,TopWidth,TopThick]);
    }
}

module  tokki() {
    // 突起
    difference() {
        rotate([0,90,0]) {
            cylinder(3,7,7);
        }
        translate([-0.1,-10,-8.3]){
            cube([3.2, 20, 15]);
        }
    }
}