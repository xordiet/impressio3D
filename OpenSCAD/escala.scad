for (i=[0:33]){
    translate([0,i-3,0]){
        color([1,0,1/i*3])
        cube([8,3,i]);
    }
    i=i+3;
}
