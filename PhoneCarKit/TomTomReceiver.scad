
difference() {
  cube([45,40,6]);

  translate([7.25, -0.1, 1])
    cube([30.5, 30.5, 2.5]);

  translate([7.25, -0.1, 1])
    cube([30.5, 20.5, 7]);

  translate([22.5, 16, 4])
    cylinder(r=14.5, h=10);
}
