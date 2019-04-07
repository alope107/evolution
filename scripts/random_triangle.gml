// Creates a triangle and returns its points as a 2D array in clockwise order.
// The centroid of the triangle is located at the origin.
// scale is the maximum x or y value for each point.
var scale, num_points, pts, max_angle, valid, angles;

scale = argument[0];

min_angle = -1;
if (argument_count == 2) {
    max_angle = argument[1];
}

num_points = 3;
valid = false;

while (!valid) {
    // Create three random cartesian points.
    for (i = 0; i < num_points; i++) {
        for (j = 0; j < 2; j++) {
            // Set the cartesian points.
            //pts[i, j] = scale - random(2 * scale);
            pts[i, j] = scale + rand_norm(0, scale);
        }
    }
    
    angles = inner_angles(pts);
    valid = true;
    for (i= 0; i < num_points; i++) {
        valid = valid && (angles[i] >= max_angle); 
    }
}

return sort_clockwise_and_center(pts);
