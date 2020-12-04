for (i=[0:10]){
    translate([0,i-3,i-3]){
        //color([1,0,1/i*3])
        cube(1);
    }
    i=i+3;
}

for (i=[0:10]){
    translate([i-3,10,i+7]){
        //color([1,0,1/i*3])
        cube(1);
    }
    i=i+3;
}

j=13;
for (i=[0:10]){
    translate([10,j-i,i+17]){
        //color([1,0,1/i*3])
        cube(1);
    }
    i=i+3;
}

j=13;
for (i=[0:10]){
    translate([j-i,0,i+27]){
        //color([1,0,1/i*3])
        cube(1);
    }
    i=i+3;
}
