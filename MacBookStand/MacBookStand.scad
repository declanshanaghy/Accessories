
stand_thick=30;
wall_thick=3;
brace_thick=10;
pads=true;
pad_h=1;

//all();
stand();
//brace();
//joint();

module two_sides() {
  union() {
    color([1,0,0])
      translate([1, 115, 0])
      side(left=true);
    color([0,1,0])
      side(left=false);
  }
}

module all() {
  two_sides();
  color([0, 0, 0])
    translate([15, 22, 0.1])
    joint();
}

module side(left=false) {
  union() {
    stand();
    if ( left ) {
      translate([80, 8.5, 0])
        rotate([0, 0, 180])
        brace();
    }
    else {
      translate([15, 22, 0])
      brace();
    }
  }
}

module joint() {
  difference() {
    union() {
      translate([33, 34.5, 0])
        rotate([0, 0, 45])
        cube([brace_thick+2, brace_thick+2, wall_thick]);
      translate([33, 50, 0])
        rotate([0, 0, 45])
        cube([brace_thick+2, brace_thick+2, wall_thick]);
      translate([28, 40, 0])
        cube([10, 15, wall_thick]);
    }

    translate([33, 34.4, -wall_thick/2])
      rotate([0, 0, 45])
      cube([brace_thick, brace_thick, wall_thick]);

    translate([33, 53, -wall_thick/2])
      rotate([0, 0, 45])
      cube([brace_thick, brace_thick, wall_thick]);
  }

}

module pillar(support=true) {
  union() {
    translate([20, 0, 0])
      rotate([0, -100, 0])
      cube([100, stand_thick, wall_thick]);

    if ( support ) {
      translate([3, 0, 0])
        rotate([0, -85, 0])
        cube([64, stand_thick, wall_thick]);

      translate([44.8, 0, 0])
        rotate([0, -90, 0])
        cube([57.5, stand_thick, wall_thick]);

      translate([18, stand_thick, 0.75])
        rotate([90, 0, 0])
        linear_extrude(height=stand_thick)
        polygon([[0,0],[25,0],[25,4]]);

      translate([0, stand_thick, 0.75])
        rotate([90, 0, 0])
        linear_extrude(height=stand_thick)
        polygon([[2,0],[19,0],[7.5,58]]);
    }
    else {
      translate([50, 0, 0])
        rotate([0, -100, 0])
        cube([30, stand_thick, wall_thick]);

      translate([44.8, 0, 29])
        rotate([0, -90, 0])
        cube([28, stand_thick, wall_thick]);

      translate([18, stand_thick, 0.75])
        rotate([90, 0, 0])
        linear_extrude(height=stand_thick)
        polygon([[0,0],[29.5,0],[29.5,4]]);

      translate([5.5, stand_thick, 0.75])
        rotate([90, 0, 0])
        linear_extrude(height=stand_thick)
        polygon([[2,0],[13,0],[4,48]]);
     }
  }
}

module stand() {
  union() {
    cube([95, stand_thick, wall_thick]);
    translate([5, 0, 2])
      pillar(support=true);
    translate([40, 0, 2])
      pillar(support=False);
    if ( pads ) {
      translate([0, pad_h, 0])
        rotate([90, 0, 0])
        cube([95, 15, pad_h]);
      translate([0, pad_h, 87])
        rotate([90, 0, 0])
        cube([75, 15, pad_h]);
      translate([65, pad_h, 0])
        rotate([90, 0, 0])
        cube([10, 95, pad_h]);
      #translate([40, pad_h, 47])
        rotate([90, 0, 0])
        cube([55, 15, pad_h]);
    }
  }
}

module brace() {
  difference() {
    union() {
      translate([-2, 0, 0])
        rotate([0, 0, 45])
        cube([59.5, brace_thick, wall_thick]);
      translate([28, 40, 0])
        rotate([0, 0, -45])
        cube([60, brace_thick, wall_thick]);
      translate([80, 8.1, 0])
        rotate([0, 0, 180])
        cube([95, stand_thick, wall_thick]);
    }
    //SQUARE CUTOUT
    translate([33, 34.5, wall_thick/2])
      rotate([0, 0, 45])
      cube([brace_thick+0.5, brace_thick+0.5, wall_thick]);
    //HOLES
    translate([-3, -7.5, -1])
      cylinder(r=6.5, h=10);
    translate([67, -7.5, -1])
      cylinder(r=6.5, h=10);
    //CYLINDER CUT OUT
    translate([15.5, -7.5, -1])
      cylinder(r=8, h=10);
    translate([48, -7.5, -1])
      cylinder(r=8, h=10);
    translate([15, -15.5, -2])
      cube([33, 16, wall_thick+2]);
    translate([82, 8.15, wall_thick/2])
      rotate([0, 0, 180])
      cube([100, stand_thick+2, wall_thick]);
  }
}