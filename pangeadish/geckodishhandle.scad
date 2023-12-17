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
    rotate([90, 0, 0])
    rcube([100, 12, 3.5], 6);

    translate([9, -0.5, 6])
    rotate([90, 0, 0])
    cylinder(h=3.1, d=8.05);
    
    translate([91, -0.5, 6])
    rotate([90, 0, 0])
    cylinder(h=3.1, d=8.05);
    
    translate([50, -0.5, 6])
    rotate([90, 0, 0])
    cylinder(h=3.1, d=8.05);
}