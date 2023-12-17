difference() {
    cube([14, 7, 9.25]);

    translate([-0.1, 1.6, 2])
    cube([15, 3, 9]);
    
    translate([7, -1, 5.5]) 
    rotate([-90, 0, 0])
    cylinder(4, d=6, $fn=30);
    
    translate([7, 4.5, 5.5]) 
    rotate([-90, 0, 0])
    cylinder(2.6, d1=7, d2=3.2, $fn=30);
}