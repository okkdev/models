module drop() {
    scale([1, 1, 50])
    union() {
        cylinder(10, r=10, center=true);

        difference() {
            translate([0, 3.5, 0])
            resize([18.8, 30, 10])
            rotate([0, 0, 45])
            cube(20, center=true);
            translate([0, -10, 0])
            cube(15, center=true);
        }
    }
}


difference() {
    // base tray
    difference() {
        
        cube([110, 220, 76]);
        
        translate([2, -1, 2])
        cube([106, 222, 35]);
        
        translate([2, -1, 39])
        cube([106, 222, 35]);
    }
    
    translate([29, 47, 0])
    for(x = [0 : 1 : 2])
    for(i = [0 : 1 : 2])
    translate([26 * i, 58 * x, 0])
    drop();
    
    translate([16, 20, 0])
    for(x = [0 : 1 : 3])
    for(i = [0 : 1 : 3])
    translate([26 * i, 58 * x, 0])
    drop();
    
    translate([16, 20, 18])
    rotate([0, 90, 0])
    for(i = [0 : 1 : 3])
    translate([0, 58 * i, 0])
    drop();
    
    translate([16, 20, 58])
    rotate([0, 90, 0])
    for(i = [0 : 1 : 3])
    translate([0, 58 * i, 0])
    drop();
}