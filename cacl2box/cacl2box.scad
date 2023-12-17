module rcube(width, depth, height, radius, center){
    points = [
        for (p = [
            [radius, radius],
            [radius, depth - radius],
            [width - radius, radius],
            [width - radius, depth - radius]
        ])
        if (center) [p[0] - width / 2, p[1] - depth / 2]
        else p
    ];
    hull(){
        for (p = points) translate(p) cylinder(r=radius, h=height, $fn=50);
    }
}

difference() {
    union() {
        difference() {
            cube ([160, 50, 202]);
            translate([2, 2, 2]) cube ([156, 46, 202]);
            
            
            for(i=[1:1:14]) {
                translate([11 * i, 3, 115])
                rotate([90, -90, 0])
                rcube(40, 6, 4, 3, false);
                
                translate([11 * i, 3, 157.5])
                rotate([90, -90, 0])
                rcube(40, 6, 4, 3, false);
                
                translate([11 * i, 51, 115])
                rotate([90, -90, 0])
                rcube(40, 6, 4, 3, false);
                
                translate([11 * i, 51, 157.5])
                rotate([90, -90, 0])
                rcube(40, 6, 4, 3, false);
            }

            
            for(i=[1:1:4]) {
                rotate([0, 0, 90])
                translate([0.5, 1, 115])
                translate([11 * i, 0, 0])
                rotate([90, -90, 0])
                rcube(40, 6, 4, 3, false);
                
                rotate([0, 0, 90])
                translate([0.5, 1, 157.5])
                translate([11 * i, 0, 0])
                rotate([90, -90, 0])
                rcube(40, 6, 4, 3, false);
                
                rotate([0, 0, 90])
                translate([0.5, -157, 115])
                translate([11 * i, 0, 0])
                rotate([90, -90, 0])
                rcube(40, 6, 4, 3, false);
                
                rotate([0, 0, 90])
                translate([0.5, -157, 157.5])
                translate([11 * i, 0, 0])
                rotate([90, -90, 0])
                rcube(40, 6, 4, 3, false);
            }
        }

        translate([0, 25, 0])
        scale([0.8, 1, 1])
        difference() {
            cylinder(100, 0, 25, $fn=4);
            translate([0, -25, 0])
            cube(50);
        }
    }
    translate([2, 25, 2])
    scale([0.8, 1, 1])
    cylinder(100, 0, 25, $fn=4);
}



difference() {
    translate([0, 0, 100])
    cube ([160, 50, 4]);
    translate([4, 4, 99])
    cube ([152, 42, 6]);
    
    translate([80, 25, 99])
    resize([100, 50, 5])
    rotate([0, 0, 45])
    cylinder(6, 50, 42, $fn=4);
    translate([133, 25, 99])
    resize([55, 50, 5])
    rotate([0, 0, 45])
    cylinder(6, 50, 42, $fn=4);
    translate([27, 25, 99])
    resize([55, 50, 5])
    rotate([0, 0, 45])
    cylinder(6, 50, 42, $fn=4);
}



