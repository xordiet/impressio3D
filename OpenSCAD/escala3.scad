for(i=[0:10]){
for (y=[0:9]){
    z=i;
    translate([0,y-1,((z*40)+(y-1))]){
        color([1,0,0])
        cube(1);
    }
    y=y+1;
}
for (x=[0:9]){
    z=i;
    translate([x-1,10,((z*40)+(9+x))]){
        color([0,1,0])
        cube(1);
    }
    x=x+1;
}

for (y=[0:9]){
    z=i;
    translate([10,10-y,((z*40)+(20+y))]){
        color([0,0,1])
        cube(1);
    }
    i=i+3;
}

for (x=[0:9]){
    z=i;
    translate([11-x,0,((z*40)+(29+x))]){
        color([1,1,0])
        cube(1);
    }
    x=x+1;
}
}