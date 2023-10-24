difference() {
    cube([14.8, 6, 9.8]);

    translate([-0.1, 2, 2])
    cube([15, 2.1, 9]);
    
    translate([7.4, -1, 5.5]) 
    rotate([-90, 0, 0])
    cylinder(4, d=6, $fn=30);
    
    translate([7.4, 4, 5.5]) 
    rotate([-90, 0, 0])
    cylinder(2.2, d1=6, d2=3, $fn=30);
}