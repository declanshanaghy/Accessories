hid=8.3;
bod=15.875;
sod=22;
ht=8.55;

difference() {
  cylinder(r=sod/2, h=ht);
  translate([0,0,-0.5])
    cylinder(r=bod/2, h=ht+1);
}
