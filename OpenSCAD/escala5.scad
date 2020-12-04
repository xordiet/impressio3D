for(i=[0:10]){
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
translate([-1,-1,0]){
    color([0,1,1])
    cube([2,1,440]);
}
translate([-1,-1,0]){
    color([0,1,1])
    cube([1,2,440]);
}

//columna 2
translate([-1,11,0]){
    color([0,1,1])
    cube([2,1,440]);
}
translate([-1,10,0]){
    color([0,1,1])
    cube([1,2,440]);
}

//colunba 3
translate([11,10,0]){
    color([0,1,1])
    cube([1,2,440]);
}
translate([10,11,0]){
    color([0,1,1])
    cube([2,1,440]);
}

//colunba 4
translate([11,-1,0]){
    color([0,1,1])
    cube([1,2,440]);
}
translate([10,-1,0]){
    color([0,1,1])
    cube([2,1,440]);
}