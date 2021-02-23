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

include <greenhouse_arm_head.scad>

femaleBaseWidth = 42;
femaleBaseLength = 50;
femaleBaseThick = maleBaseThick+maleMiddleThick+2.7;

module HeadFemale() {
    difference() {
        // 全体
        translate([-2,0,0]){
            cube([femaleBaseWidth,femaleBaseLength,femaleBaseThick]);
        }
        // 中の空間
        translate([(femaleBaseWidth-(maleBaseWidth+2))/2,5,3]){
            cube([maleBaseWidth+2,femaleBaseLength,maleBaseThick+1.2]);
        }
        // 横の空間
        translate([(femaleBaseWidth-(maleBaseWidth+2))/2-2,5,3]){
            #cube([maleBaseWidth+2,femaleBaseLength-(maleMiddleThick+2)-1,maleBaseThick+1.2]);
        }
        // 上の空間
        translate([(femaleBaseWidth-(maleMiddleWidth+1))/2,5,10-1]){
            cube([maleMiddleWidth+1,femaleBaseLength,maleMiddleThick+2]);
        }
        // 上横の空間
        translate([(femaleBaseWidth-(maleMiddleWidth+1))/2-2,5,10-1]){
            #cube([maleMiddleWidth+1,femaleBaseLength-(maleMiddleThick+2)-5,maleMiddleThick+2]);
        }
    }
    translate([3,femaleBaseWidth-4+10,-3.8]) {
        tokki();
    }
    translate([maleBaseWidth+1,femaleBaseWidth-4+10,-3.8]) {
        tokki();
    }
    translate([3+3,femaleBaseWidth-4+10,femaleBaseThick+5.3]) {
        rotate([0,180,0]) {
            tokki();
        }
    }
    translate([maleBaseWidth+1+3,femaleBaseWidth-4+10,femaleBaseThick+5.3]) {
        rotate([0,180,0]) {
            tokki();
        }
    }
}

module Adaptor() {
    translate([(femaleBaseWidth-maleBaseWidth)/2,(femaleBaseLength-maleBaseWidth)/2,-(maleBaseThick+maleMiddleThick)]){
        rotate([0,0.001,0]) {
            HeadMale();
        }
    }
    HeadFemale();
}

rotate([90,0,0]) {
    Adaptor();
}