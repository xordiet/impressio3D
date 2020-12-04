x=0;
y=0;
z=0;
lt=10;
gr=0;

for(i=[0:100]){
    if(i%lt){
        translate([x,y+i,z]){
            color([1,0,0])
            cube(1);
        }
        gr=gr+1;
    } else {
        translate([x,y+i,z]){
            color([0,1,0])
            cube(1);
        }
    }
    echo(gr);
    z=z+i;
}
