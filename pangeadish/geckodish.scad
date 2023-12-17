$fn = 64;

module rcube(size, radius, center = false){
    points = [
        for (p = [
            [radius, radius],
            [radius, size.y - radius],
            [size.x - radius, radius],
            [size.x - radius, size.y - radius]
        ])
        if (center) [p[0] - size.x / 2, p[1] - size.y / 2]
        else p
    ];
    hull(){
        for (p = points) translate(p) cylinder(r=radius, h=size.z);
    }
}


difference() {
    union() {
        cube([100, 20, 2]);
        rcube([100, 50, 2], 20);
    }
    
    translate([25, 25])
    cylinder(h=30, d=37.1, center=true);
    
    translate([75, 25])
    cylinder(h=30, d=37.1, center=true);
}

difference() {
    rotate([90, 0, 0])
    union() {
        cube([100, 10, 3.5]);
        rcube([100, 25, 3.5], 10);
    }

    translate([9, -0.5, 17])
    rotate([90, 0, 0])
    cylinder(h=3.1, d=8.05);
    
    translate([91, -0.5, 17])
    rotate([90, 0, 0])
    cylinder(h=3.1, d=8.05);
    
    translate([50, -0.5, 17])
    rotate([90, 0, 0])
    cylinder(h=3.1, d=8.05);
}