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
//cube([155, 50, 2]);
difference() {
    rcube(155, 45, 3, 2, false);

    translate([1.5, 2.5, -1])
    for(i=[1:1:25])
    translate([6 * i, 0, 0])
    rotate([0, 0, 90])
    rcube(40, 4, 5, 2, false);
}