TOLERANCE = 0.5;
MIRROR_D = 76.2;
MIRROR_HOLE_D = 3.5;
INSET_H = 4;
WALL_T = 6;

mirror_mount();

module mirror_mount() {
  difference() {
    cylinder(r=MIRROR_D/2 + WALL_T + TOLERANCE, h=WALL_T+INSET_H);
    translate([0, 0, WALL_T])
      cylinder(r=MIRROR_D/2 + TOLERANCE, h=INSET_H+TOLERANCE);
    translate([0, 0, -TOLERANCE])
      cylinder(r=MIRROR_HOLE_D/2, h=WALL_T+TOLERANCE*2);
    translate([0, 0, WALL_T/2])
      cutout();
  }
}

module cutout() {
  difference() {
    cylinder(r=MIRROR_D/2.5 + TOLERANCE, h=WALL_T+INSET_H+TOLERANCE*2);
    translate([0, 0, -TOLERANCE])
      cylinder(r=MIRROR_D/8, h=WALL_T+INSET_H+TOLERANCE*4);
  }
}