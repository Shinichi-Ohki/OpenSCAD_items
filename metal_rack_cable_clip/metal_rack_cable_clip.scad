/*
The MIT License (MIT)

Copyright (c) 2021 Shinichi Ohki.

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

$fn = 31;
R = 19; // パイプの直径
h = 15; // 高さ
r = R/2; // パイプの半径
T1 = 1.5; // 内側の肉厚
T2 = 1; // 外側の肉厚
c = 4; // ケーブルを挟む幅

// 外側の殻の部分
module shell() {
    difference() {
        cylinder(h,r+T2+T2+c,r+T2+T2+c); // 外側
        translate([0,0,-0.001]) {
            cylinder(h+0.002,r+T2+c,r+T2+c); // 内側
        }
        translate([-r*2,-2,-0.001]) {
            cube([r*4,r*2,h+0.002]); // 半円形にするため
        }
    }
    translate([-(r+c+T2-0.2),-T2-1,0]) cylinder(h,T2,T2); // コードが外れないようにする部分
    translate([(r+c+T2-0.2),-T2-1,0]) cylinder(h,T2,T2); // コードが外れないようにする部分
}

// 内側のパイプ部分
module pipe() {
    translate([0,0,5]) difference() { // ストッパーとなる内側出っぱりを作る
        cylinder(0.8,r+T1,r+T1); // 外側
        translate([0,0,-0.001]) {
            cylinder(0.81,r-0.2,r-0.2); // 内側
        }
    }
    difference() {
        cylinder(h,r+T1,r+T1); // 外側
        translate([0,0,-0.001]) {
            cylinder(h+0.002,r,r); // 内側
        }
    }
}

// 内側のパイプ部分から入り口を削る
module grip() {
    rotate([0,0,34]) { // 外側と角度を合わせるために回す
        difference() {
            pipe();
            translate([0,0,-0.001]) {
                cube([r+3,r+3,h+0.002]);
                rotate([0,0,26]) cube([r+3,r+3,h+0.002]);
            }
        }
    }
}

module unit() {
    shell();
    grip();
    translate([-(T1+3)/2,0-(r+T1+c),0]) cube([T1+3,T1+c,h]); // 内外をつなぐための柱
}

unit();