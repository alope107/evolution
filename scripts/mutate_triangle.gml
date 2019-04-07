// Mutates a given triangle.
// Adds normal noise with the given standard deviation modifier.
// Ensures that the smallest angle is at least the gien number of degrees.
// Returns the points in clockwise order and with the centroid at the origin.

var triangle, mut_triangle, std_dev_mod, min_angle, valid, angles;

triangle = argument0;
std_dev_mod = argument1;
min_angle = argument2;

valid = false;
while (!valid) {
    for (var i = 0; i < 3; i++) {
        for (var j = 0; j < 2; j++) {
            mut_triangle[i, j] = triangle[i, j] + 
                                 rand_norm(0, triangle[i, j] / std_dev_mod);
        }
    }
    angles = inner_angles(mut_triangle);
    valid = true;
    for (i= 0; i < 3; i++) {
        valid = valid && (angles[i] >= min_angle); 
    }
}

mut_triangle = sort_clockwise_and_center(mut_triangle);

return mut_triangle;
