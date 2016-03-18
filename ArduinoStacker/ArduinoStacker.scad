ARDUINO_ACTUAL=[53,69,15];
ARDUINO=[70,85,20];
CENTER=[ARDUINO[0]/2, ARDUINO[1]/2, 0];
WALL_T=2;
CLEAR=0.5;
N_ARDUINOS=3;
TOP_T=ARDUINO[2]/2;
BOX_H=ARDUINO[2]*N_ARDUINOS+ARDUINO[2]/3+WALL_T;

POWER_H=[10+CLEAR, WALL_T*3, 12+CLEAR];
USB_H=[13+CLEAR, WALL_T*3, 12+CLEAR];
ETHER_H=[17+CLEAR, WALL_T*3, 14+CLEAR];

!box();
translate([0, 0, -TOP_T*2])
	top();

module box() {
	union() {
		difference() {
			cube([ARDUINO[0]+WALL_T*2, ARDUINO[1]+WALL_T*2, BOX_H+WALL_T]);
			translate([WALL_T, WALL_T, WALL_T])
				cube([ARDUINO[0], ARDUINO[1], BOX_H+WALL_T+1]);
			translate([WALL_T+CENTER[0]+14.5, -WALL_T, WALL_T+10])
				cube(POWER_H);
			translate([WALL_T+CENTER[0]-4-USB_H[0], -WALL_T, WALL_T+10])
				cube(USB_H);
			translate([WALL_T+CENTER[0]-3-ETHER_H[0], -WALL_T, WALL_T+27])
				cube(ETHER_H);
		}
		cylinder(r=10, h=WALL_T-0.1);
		translate([ARDUINO[0]+WALL_T*2,0,0])
			cylinder(r=10, h=WALL_T-0.1);
		translate([ARDUINO[0]+WALL_T*2,ARDUINO[1]+WALL_T*2,0])
			cylinder(r=10, h=WALL_T-0.1);
		translate([0,ARDUINO[1]+WALL_T*2,0])
			cylinder(r=10, h=WALL_T-0.1);
	}
}

module top() {
	union() {
		difference() {
			translate([-WALL_T, -WALL_T, 0])
				cube([ARDUINO[0]+WALL_T*4, ARDUINO[1]+WALL_T*4, TOP_T+WALL_T]);
			translate([-CLEAR/2, -CLEAR/2, WALL_T])
				cube([ARDUINO[0]+WALL_T*2+CLEAR/2, ARDUINO[1]+WALL_T*2+CLEAR/2, TOP_T+1]);
		}
		cylinder(r=10, h=WALL_T-0.1);
		translate([ARDUINO[0]+WALL_T*2,0,0])
			cylinder(r=10, h=WALL_T-0.1);
		translate([ARDUINO[0]+WALL_T*2,ARDUINO[1]+WALL_T*2,0])
			cylinder(r=10, h=WALL_T-0.1);
		translate([0,ARDUINO[1]+WALL_T*2,0])
			cylinder(r=10, h=WALL_T-0.1);
	}
}
