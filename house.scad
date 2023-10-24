roof = false;

difference() {
    if(!roof) {
        union() {
            // floor
            difference() {
                cube([150, 100, 2]);
                
                translate([150, 100, 0])
                cylinder(6, r=40, center=true, $fn=50);
            }

            // left wall
            difference() {
                cube([2, 100, 80]);
                
                // large hole
                translate([0, 30, 30])
                rotate([90, 0, 90])
                cylinder(6, d=35, center=true, $fn=50);
                
                // small hole
                translate([0, 80, 60])
                rotate([90, 0, 90])
                cylinder(6, d=30, center=true, $fn=50);
            }
            
            translate([0, 70, 30])
            rotate([0, -90, 0])
            cylinder(25, d=5, $fn=50);

            // right wall
            translate([148, 0, 0])
            cube([2, 100, 60]);
            
            // front wall
            base_points = [
                [0, 0, 0], //btm left
                [150, 0, 0], //btm right
                [0, 0, 80], //top left
                [150, 0, 60], //top right
            ];
            
            thickness = [0, 2, 0];
            
            points = [
                base_points[0],
                base_points[1],
                base_points[1] + thickness,
                base_points[0] + thickness,
                base_points[2],
                base_points[3],
                base_points[3] + thickness,
                base_points[2] + thickness,
            ];
            
            faces = [
                [0,1,2,3], // bottom
                [4,5,1,0], // front
                [7,6,5,4], // top
                [5,6,2,1], // right
                [6,7,3,2], // back
                [7,4,0,3], // left
            ];
            
            difference() {
                polyhedron(points, faces);
                
                // window
                translate([60, 0, 32])
                difference() {
                    rotate([90, 0, 0])
                    cylinder(6, d=30, center=true, $fn=50);
                    cube([30, 7, 2], center=true);
                    rotate([0, 90, 0])
                    cube([30, 7, 2], center=true);
                }
            }

            
            // back wall
            difference() {
                translate([0, 98, 0])
                polyhedron(points, faces);
                
                // mounting holes
                translate([10, 97, 35])
                cube([15, 4, 10]);
                
                translate([125, 97, 35])
                cube([15, 4, 10]);
            }
        }
    }
    
    union() {
        // roof
        translate([75, 50, 71])
        rotate([0, 7.5, 0])
        cube([154, 102, 3], center=true);
        
        // left lip
        translate([2.2, 2.2, 76.5])
        cube([2, 95.6, 3]);
        
        // right lip
        translate([145.8, 2.2, 57.5])
        cube([2, 95.6, 3]);
        
        // front lip
        translate([75, 3.2, 68.5])
        rotate([0, 7.5, 0])
        cube([146, 2, 3], center=true);
        
        // back lip
        translate([75, 96.8, 68.5])
        rotate([0, 7.5, 0])
        cube([146, 2, 3], center=true);
    }
}
