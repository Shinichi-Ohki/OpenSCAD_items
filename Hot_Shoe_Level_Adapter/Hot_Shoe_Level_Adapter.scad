module ColdShueMale() {
	cube([ 18, 18, 2 ]);
	translate([ (18 - 12.5) / 2, 0, 0 ]) {
		cube([ 12.5, 18, 7 ]);
	}
}

module Level() {
	R = 32;
	difference() {
		cylinder(5, (R + 2) / 2, (R + 2) / 2);
		translate([ 0, 0, 1 ]) cylinder(5.1, (R / 2), (R / 2));
	}
}

module HotShoeLevelAdapter() {
	ColdShueMale();
	translate([ 9, 9, 6.1 ]) Level();
}

HotShoeLevelAdapter();
