$fn = 50;

diameter = 16.52; //actual
thick    = 1.5;   //actual


radius   = diameter/2;


linear_extrude(thick){
	difference(){
		circle(r=radius+thick);
		circle(r=radius);
	}
}

