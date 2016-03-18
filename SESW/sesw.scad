$fn=24;
THICKNESS=3;
SESW02_CHOP=31;
SESW02_CHOP_GAP=1.5;
SESW02_EXTEND=false;
HOLE_SIZE=3.5;
HOLE_R=HOLE_SIZE/2;
SESW01_SPLIT=false;

translate([0,40.5,0])
  sesw02_complete();

sesw01_complete();

/*
translate([10,91,0])
  20mm_spacers();

translate([70,16,0])
  8mm_spacers();
*/

module 20mm_spacers() {
  SPC = 20.5;
  20mm_spacer();
  translate([SPC,0,0])
    20mm_spacer();
  translate([SPC*2,0,0])
    20mm_spacer();
  translate([SPC*3,0,0])
    20mm_spacer();
}

module 20mm_spacer() {
  difference() {
    cylinder(r=10, h=THICKNESS);
    translate([0,0,-THICKNESS/2])
      cylinder(r=1.75, h=THICKNESS*2);
  }
}

module 8mm_spacers() {
  SPC = 8.5;  
  8mm_spacer();
  translate([0,SPC,0])
    8mm_spacer();
  translate([SPC,SPC,0])
    8mm_spacer();
  translate([SPC,0,0])
    8mm_spacer();
  translate([SPC*2,SPC,0])
    8mm_spacer();
  translate([SPC*2,0,0])
    8mm_spacer();
  translate([SPC*3,SPC,0])
    8mm_spacer();
  translate([SPC*3,0,0])
    8mm_spacer();
}

module 8mm_spacer() {
  difference() {
    cylinder(r=4, h=THICKNESS);
    translate([0,0,-THICKNESS/2])
      cylinder(r=HOLE_R, h=THICKNESS*2);
  }
}

module sesw01_complete() {
  if ( SESW01_SPLIT ) {
    sesw01_bottom();
    translate([41,0,0])
      sesw01_top();
  }
  else {
    difference() {
	  // Main body
      cube([118, 40, THICKNESS]);

	  // Switch access      
      translate([65,9,-THICKNESS/2])
        cube([35, 22, THICKNESS*2]);

      //Attachment to wall
      translate([53,20,-THICKNESS/2])
        cylinder(r=HOLE_R, h=THICKNESS*2);
      translate([113,20,-THICKNESS/2])
        cylinder(r=HOLE_R, h=THICKNESS*2);

	  //Servo holes
      translate([7,13,-THICKNESS/2])
        cube([24, 14, THICKNESS*2]);

      translate([4,20,-THICKNESS/2])
        cylinder(r=HOLE_R, h=THICKNESS*2);
      translate([34,20,-THICKNESS/2])
        cylinder(r=HOLE_R, h=THICKNESS*2);
    }
  }
}

module sesw01_top() {
  difference() {
    cube([82, 40, THICKNESS]);
    translate([28,9,-THICKNESS/2])
      cube([35, 22, THICKNESS*2]);
  }
}

module sesw01_bottom() {
  difference() {
    cube([40, 40, THICKNESS]);
    translate([8,13,-THICKNESS/2])
      cube([24, 14, THICKNESS*2]);
  }
}

module sesw02_complete() {
  sesw02_body();
  if (SESW02_EXTEND) {
    translate([12,45,0])
      sesw02_connectors();
  }
}

module sesw02_body() {
  if (SESW02_EXTEND) {
    translate([1,0,0])
      sesw02A();
    sesw02B();
  }
  else {
    union() {
      translate([-0.01,0,0])
        sesw02A();
      sesw02B();
    }
  }
}

module sesw02_connectors() {
  sesw02_connector();

  translate([0,10,0])
    sesw02_connector();
}

module sesw02_connector() {
  difference() {
    cube([63, 7, THICKNESS]);
    translate([58,3.5,-THICKNESS/2])
      cylinder(r=HOLE_R, h=THICKNESS*2);
    translate([48,3.5,-THICKNESS/2])
      cylinder(r=HOLE_R, h=THICKNESS*2);
    translate([10,3.5,-THICKNESS/2])
      cylinder(r=HOLE_R, h=THICKNESS*2);
    translate([5,3.5,-THICKNESS/2])
      cylinder(r=HOLE_R, h=THICKNESS*2);
  }
}

module sesw02B() {
  difference() {
    sesw02();
    translate([83-SESW02_CHOP+SESW02_CHOP_GAP,-2,-THICKNESS/2])
      cube([86, 44, THICKNESS*2]);
  }
}

module sesw02A() {
  difference() {
    sesw02();
    translate([-SESW02_CHOP-SESW02_CHOP_GAP,-2,-THICKNESS/2])
      cube([86, 44, THICKNESS*2]);
    if (SESW02_EXTEND) {
      translate([70,6.5,-THICKNESS/2])
        cylinder(r=HOLE_R, h=THICKNESS*2);
      translate([60,6.5,-THICKNESS/2])
        cylinder(r=HOLE_R, h=THICKNESS*2);
      translate([70,34,-THICKNESS/2])
        cylinder(r=HOLE_R, h=THICKNESS*2);
      translate([60,34,-THICKNESS/2])
        cylinder(r=HOLE_R, h=THICKNESS*2);
    }
  }
}

module sesw02() {
  difference() {
    cube([83, 40, THICKNESS]);
    translate([20,16,-THICKNESS/2])
      sesw02_slideA();
    translate([5,3,-THICKNESS/2])
      sesw02_slideB();
    if (SESW02_EXTEND) {
      translate([15,5,0])
        sesw02_slideC();
      translate([15,32.5,0])
        sesw02_slideC();
    }
    translate([55,16,-THICKNESS/2])
      sesw02_switch();
  }
}

module sesw02_slideA() {
  union() {
    translate([4,0,0])
      cube([24, 8, THICKNESS*2]);
    translate([4,4,0])
      cylinder(r=4, h=THICKNESS*2);
    translate([28,4,0])
      cylinder(r=4, h=THICKNESS*2);
  }
}

module sesw02_slideB() {
  union() {
    translate([0,2,0])
      cube([4, 14, THICKNESS*2]);
    translate([2,2,0])
      cylinder(r=2, h=THICKNESS*2);
    translate([2,16,0])
      cylinder(r=2, h=THICKNESS*2);
  }
}

module sesw02_slideC() {
  rotate([0,0,-90])
    translate([-3,0,-THICKNESS/2])
      union() {
        translate([0,1.5,0])
          cube([3, 29, THICKNESS*2]);
        translate([1.5,1.5,0])
          cylinder(r=1.5, h=THICKNESS*2);
        translate([1.5,31,0])
          cylinder(r=1.5, h=THICKNESS*2);
      }
}

module sesw02_switch() {
  cube([21, 8, THICKNESS*2]);
}
