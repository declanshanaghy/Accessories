//jaw = cube([116,8,11]);

difference() {
  union() {
    cube([120,4,20]);
    translate([0,4,0])
      rotate([90,00,0])
      cube([120,4,15]);
  }
  #translate([30,2,12])
    rotate([90,90,0])
    cylinder(r=6, h=3);
  #translate([90,2,12])
    rotate([90,90,0])
    cylinder(r=6, h=3);
}
