for(i=[0:1]){
for (y=[0:9]){
    z=i;
    translate([0,y-1,((z*40)+(y-1))]){
        color([1,0,0])
        cube([1,2,1]);
    }
    y=y+1;
}
for (x=[0:9]){
    z=i;
    translate([x-1,10,((z*40)+(9+x))]){
        color([0,1,0])
        cube([2,1,1]);
    }
    x=x+1;
}

for (y=[0:9]){
    z=i;
    translate([10,9-y,((z*40)+(20+y))]){
        color([0,0,1])
        cube([1,2,1]);
    }
    i=i+3;
}

for (x=[0:9]){
    z=i;
    translate([10-x,0,((z*40)+(29+x))]){
        color([1,1,0])
        cube([2,1,1]);
    }
    x=x+1;
}
}

//columna 1
translate([1,1,0]){
    color([0,1,1])
    cube([2,1,80]);
}
translate([1,1,0]){
    color([0,1,1])
    cube([1,2,80]);
}

//columna 2
translate([1,9,0]){
    color([0,1,1])
    cube([2,1,80]);
}
translate([1,8,0]){
    color([0,1,1])
    cube([1,2,80]);
}

//colunba 3
translate([9,8,0]){
    color([0,1,1])
    cube([1,2,80]);
}
translate([8,9,0]){
    color([0,1,1])
    cube([2,1,80]);
}

//colunba 4
translate([9,1,0]){
    color([0,1,1])
    cube([1,2,80]);
}
translate([8,1,0]){
    color([0,1,1])
    cube([2,1,80]);
}