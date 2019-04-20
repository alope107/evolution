// Finds the location for a tail given the body coordinates.
// The tail is located where one of the sides passes through the x axis where x < 0.
// Expects origin to be centroid.

var triangle, xi, yi, crosses_axis, j, slope, result;

// X-index and Y-index
xi = 0;
yi = 1;

triangle = argument0;

result[xi] = 0;
result[yi] = 0;

// iterate through all pairs of points
for(var i = 0; i < 3; i++) {
    j = (i + 1) mod 3;
    // This line segment crosses the x axis iff the y coordinates are of opposite signs.
    crosses_axis = sign(triangle[i, yi]) != sign(triangle[j, yi]);
    if (crosses_axis) {
        // Solve for the intersection of the line segment and the x axis.
        slope = (triangle[i, yi] - triangle[j, yi]) / 
                (triangle[i, xi] - triangle[j, xi]);
        tail_x = triangle[i, xi] - (triangle[i, yi] / slope);
        
        // We want the tail to be at the intersection to the left of the origin.
        if (tail_x < 0) {
            result[xi] = tail_x;
        }
    }
}

return result;
