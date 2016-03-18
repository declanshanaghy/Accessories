$fn=24;
part_space=2;
r_hole=1.8;
thk_material=5;
thk_base=1;
thk_mouldcap=2;
r_base=6;
s_clearance=1.05;

h_peg=thk_base*2+thk_material;
r_ctr_peg=r_hole*2;
h_block=h_peg+thk_mouldcap;

x_mould = r_base*5.5;
y_mould = r_base*3.4;
z_mould = h_peg+thk_mouldcap*4;

s_peg = 3;
l_peg = 5;

do_parts=false;

if (do_parts) {
  two_parts();
}
else {
  mould_parts();
}

module mould_parts() {
  translate([0, -part_space, 0])
    rotate([90,0,0])
    mould_a();
  translate([0, part_space, 0])
    rotate([-90,0,0])
    mould_b();
}

module mould_a() {
  union() {
    difference() {
        translate([-r_base*1.6, -r_base*1.7, 0])
          cube([x_mould,y_mould/2, z_mould]);
        translate([0, 0, thk_mouldcap])
          two_parts();
      translate([0,0, -h_peg/3])
        cylinder(r=s_peg/2, h=l_peg);
      translate([r_base*2 + part_space, 0, -l_peg/2])  
        cylinder(r=s_peg/2, h=l_peg);
    }
    translate([-r_base-s_peg/4, l_peg-0.01, z_mould-s_peg])
      rotate([90, 0, 0])
      cylinder(r=s_peg/2, h=l_peg);
    translate([r_base*2+part_space, l_peg-0.01, z_mould-s_peg])
      rotate([90, 0, 0])
      cylinder(r=s_peg/2, h=l_peg);
  }
}

module mould_b() {
  difference() {
      translate([-r_base*1.6, 0, 0])
        cube([x_mould,y_mould/2, z_mould]);
      translate([0, 0, thk_mouldcap])
        two_parts();
    translate([0, -0.5, 0])
      mould_a();
    translate([0, 0, -l_peg/3])
      cylinder(r=s_peg/2, h=l_peg);
    translate([r_base*2 + part_space, 0, -l_peg/2])
      cylinder(r=s_peg/2, h=l_peg);
  }
}

module two_parts() {
  part_a();

  translate([r_base*2+part_space,0,0])
    part_b();
}

module part_b() {
  cylinder(r=r_base, h=thk_base*2);
}

module part_a() {
  union() {
    cylinder(r=r_base, h=thk_base);
    cylinder(r=r_ctr_peg, h=h_peg);
  }
}
