$fn = 63;

// クリアランス
C = 0.5;

// 壁の厚さ、高さ
T = 2;
H = 6;

// 基板サイズ
board_w = 31+C*2;
board_h = 49+C*2;

  // 基板固定ピン配置
module pin_place() {
  // 基板固定用ピン半径
  pin_dia = 1.3;
  pin_hight = 4;
  // 基板固定用ピン部品
  module board_pin() {
    cylinder(h = 2, r = 2.5);
    difference() {
      cylinder(h = pin_hight, r = pin_dia);
      cube([pin_dia,0.1,pin_hight]); // スリットを入れておく
    }  
  }
  translate([0,0,T]) {
    translate([3+C,3+C,0]) board_pin();
    translate([3+C,board_h-3-C,0]) board_pin();
    translate([board_w-3-C,3+C,0]) board_pin();
    translate([board_w-3-C,board_h-3-C,0]) rotate([0,0,-180]) board_pin();
  }  
}

// X方向壁
module X_wall(x,y,z) {
  translate([x,y,z]) {
    difference() {
      cube([board_w+T*2,T,H]);
      translate([(board_w+T*2)/2-(board_w+T*2)/4,-0.002,T]) {
        scale([1,1.004,1.001]) cube([(board_w+4)/2,T,H-T]);
      }
    }
  }
}

// Y方向壁
module Y_wall(x,y,z) {
  translate([x,y,z]) {
    difference() {
      cube([T,board_h+T*2,H]);
      translate([-0.002,(board_h+T*2)/2-(board_h+T*2)/4,T]) {
        scale([1.004,1,1.001]) cube([T,board_h/2,H-T]);
      }
    }
  }
}

// 角丸モジュール
module rCutOut(radius=T, height=1, rotate=0) {
  D = 0.1;
  h = height + D * 2;
  rotate([0, 0, 180 + rotate])
    translate([-radius, -radius, 0])
      difference() {
        translate([0, 0, -D]) cube([radius + D, radius + D, h]);
        translate([0, 0, -D * 2]) cylinder(r=T, h=h + D * 2, $fn=60);
      }
}

module base_body() {
  pin_place();
  difference() {
    union() {
      // 底面
      translate([0,0,0]) {
        cube([board_w,board_h,T]);
      }
      X_wall(-T,-T,0);      // 手前壁
      X_wall(-T,board_h,0); // 奥壁
      Y_wall(-T,-T,0);      // 左手壁
      Y_wall(board_w,-T,0); // 右手壁
    }
    // 角丸カット
    translate([-T,-T,0])               rCutOut(T,H,0);
    translate([board_w+T,-T,0])        rCutOut(T,H,90);
    translate([board_w+T,board_h+T,0]) rCutOut(T,H,180);
    translate([-T,board_h+T,0])        rCutOut(T,H,270);
  }
}

base_body();
