$fn = 50;

diameter = 16.52; //actual
radius   = dai/2;
thick    = 1.5; //actual


	linear_extrude(5){
		difference(){
			circle(r=radius+thick);
			circle(r=radius);
		}
	}

