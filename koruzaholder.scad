
module koruzaholder()
{
   translate([0,0,0]) {
		difference() {
			cube([10, 30, 10]);
			translate([1,-1,1]) {
				cube([10, 32, 10]);
			}
         translate([0,0,0.5]) {
				linear_extrude(height = 2, center = true) {
					polygon(points=[[1,-1],[11,-1],[11,27],[1,27]], paths=[[0,1,2,3]]);
				}
			}
			translate([0.5,0,-1]) {
				rotate([0,270,0]) {
					linear_extrude(height = 2, center = true) {
						polygon(points=[[0,-1],[9,-1],[0,11]], paths=[[0,1,2]]);
					}
				}
			}
			translate([0.5,20,0]) {
				rotate([0,270,0]) {
					linear_extrude(height = 2, center = true) {
						polygon(points=[[11,-1],[11,11],[1,11]], paths=[[0,1,2]]);
					}
				}
			}
			translate([1.5,10,2]) {
				rotate([0,270,0]) {
					cylinder(h=2,r=1,$fn=100);
				}
			}
			translate([1.5,10,8]) {
				rotate([0,270,0]) {
					cylinder(h=2,r=1,$fn=100);
				}
			}
			translate([1.5,18,2]) {
				rotate([0,270,0]) {
					cylinder(h=2,r=1,$fn=100);
				}
			}
			translate([1.5,18,8]) {
				rotate([0,270,0]) {
					cylinder(h=2,r=1,$fn=100);
				}
			}
		}
		translate([4,0,7]) {
			difference() {
				cube([8, 30, 8]);
				translate([1,-1,1]) {
					cube([6, 32, 6]);
				}
				translate([-0.5,-1,4]) {
					cube([9, 32, 9]);
				}
			}
		}
		translate([3.5,-4,-2]) {
			difference() {
				cube([9, 30, 9]);
				translate([0,-0.5,-0.5]) {
					rotate([0,270,0]) {
						linear_extrude(height = 19, center = true) {
							polygon(points=[[10,0],[0,10],[0,0]], paths=[[0,1,2]]);
						}
					}
				}
			}
		}
		translate([15,1.5,9]) {
			rotate([0,270,0]) {
				cylinder(h=16,r=0.5,$fn=100);
			}
      }
		translate([8,28.5,-1]) {
			rotate([0,0,0]) {
				cylinder(h=11,r=0.5,$fn=100);
			}
      }
	}
}

koruzaholder();
