cylinder(250, d=10, $fn=50);

translate([0, 0, 50])
for(i = [0:1:9])
rotate([0, 0, i * 36])
translate([0, 0, i * 19.5])
rotate([0, 90, 0])
cylinder(50, d=10, $fn=30);


translate([0, 0, 2.5])
cube([10, 100, 5], center=true);

rotate([0, 0, 90])
translate([0, 0, 2.5])
cube([10, 100, 5], center=true);