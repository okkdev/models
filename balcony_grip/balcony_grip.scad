difference() {
    union() {
        cylinder(h=100, d1=25, d2=22, $fn=10);
        cylinder(h=1, d1=25, $fn=20);
        translate([0, 0, 100]) cylinder(h=1, d=19, $fn=20);
        translate([0, 0, 100]) cylinder(h=1, d=20, $fn=10);
    }
    translate([0, 0, -1]) cylinder(h=105, d=17, $fn=20);
}
rotate_extrude($fn=10) translate([10, 100, 0]) circle(1, $fn=50);

rotate_extrude($fn=50) translate([12, 2, 0]) circle(2, $fn=50);

rotate_extrude() translate([9, 90, 0]) circle(1, $fn=50);

rotate_extrude() translate([9, 86, 0]) circle(1, $fn=50);

rotate_extrude() translate([9, 15, 0]) circle(1.5, $fn=50);