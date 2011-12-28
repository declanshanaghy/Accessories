//import_stl("../TomTomReceiver.stl");

union() {
translate([-45, 0, 0])
rotate([0, 0, 90])
import_stl("galaxys-holder-main.stl");

translate([-55, 38, 0])
cylinder(r=8, h=0.5);

translate([-38.8, -41.15, 20])
cube([2.1, 40, 20]);

translate([-38, -38, 0])
cylinder(r=8, h=0.5);
}

union() {
translate([-23, 0, 0])
rotate([0, 0, -90])
import_stl("galaxys-holder-sides.stl");

translate([-17, 33, 0])
cylinder(r=8, h=0.5);

translate([-17, -33, 0])
cylinder(r=8, h=0.5);
}

