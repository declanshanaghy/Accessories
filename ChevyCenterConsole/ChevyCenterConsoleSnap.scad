
body();

translate([0,-18,0])
  latch();

!translate([-23,10,0])
  recessed_handle();

module body() {
  union() {
    anchor();
    translate([23,2,2.5])
      rotate([0,-51,0])
      difference() {
        bridge();
      }
  }
}

module recessed_handle() {
  difference() {
      handle();
      translate([-2,2.5,2.5])
        scale([0.9,0.9,0.9]) 
        handle();
      translate([2,3.5,-3])
        rotate([0,-51,0])
        scale([1.1,1.1,1.1])
        cube([8,40,2.5]);
  }
}

module handle() {
  $fn=24;
  difference() {
    minkowski() {
      cube([10,50,2.5]);
      cylinder(r=10, h=2.5);
    }
    translate([-20,-20,-2])
      cube([20,90,10]);
  }
}

module bridge() {
  difference() {
    union() {
      difference() {
        cube([25,40,2.5]);
        translate([-1,12.5,-1])
          cube([8,15,5]);
      }
      translate([25,0,0])
        rotate([0,-15,0])
        cube([8,40,2.5]);
    }
    translate([28.5,-5,7])
      rotate([0,51,0])
      cube([10,50,10]);
    translate([6.9,12.5,1.51])
      latch();
  }
}

module latch() {
  difference() {
    union() {
      cube([14,15,1]);
      translate([1,3,0])
        cube([2.5,8,12]);
      translate([0,8.25,0])
        rotate([90,0,0])
        linear_extrude(height=2.5)
          polygon(points=[[1,0],[11,0],[1,10]],
                  paths=[[0,1,2]]);
      translate([0,11,8])
        catch();
    }
    translate([-6,1,12])
      cube([10,12,4]);
  }
}

module catch() {
  translate([0,0,0])
    rotate([270,180,180])
      linear_extrude(height=8)
      polygon(points=[[2.5,0],[-4,0],[2.5,7]],
              paths=[[0,1,2]]);
}

module anchor() {
  difference() {
    cube([23,44,5]);
    translate([8.5,8,-2]) 
      cylinder(r=4, h=9);
    translate([8.5,36,-2]) 
      cylinder(r=4, h=9);
    translate([-5,14.5,-3])
      cube([30,15,10]);
  }
}

