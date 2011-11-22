
difference() {
  cube([35,16,4]);
  translate([22,7,-1]) cylinder(6,3.75,3.75);
}

translate([22,7,0])
difference() {
    cylinder(14,5.75,5.75);
    translate([0,0,-1]) cylinder(16,3.75,3.75);
};