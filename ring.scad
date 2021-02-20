$fn = 30;

diameter = 16.52; //actual
thick    = 1.5;   //actual

step = 10;


for(i=[0 : step : 179]){
	hull(){
		rotate([0,0,i]){
			translate([diameter/2,0,0]){
				ring_slice(i);
			}
		}
		rotate([0,0,i+step]){
			translate([diameter/2,0,0]){
				ring_slice(i+step);
			}
		}
	}
}
for(i=[0 : -step : -180]){
	hull(){
		rotate([0,0,i]){
			translate([diameter/2,0,0]){
				ring_slice(i);
			}
		}
		rotate([0,0,i+step]){
			translate([diameter/2,0,0]){
				ring_slice(i+step);
			}
		}
	}
}


module ring_slice(expand){
	expand = abs(expand);
	spread = 1*(expand/180);
	
	hull(){
		sphere(1);
		translate([0,0,+spread])
			sphere(1);
		
		translate([spread,0,+spread])
			sphere(1);
		
		translate([0,0,-spread])
			sphere(1);
		
		translate([spread,0,-spread])
			sphere(1);
	}
}