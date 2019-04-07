// Returns the centroid of the given triangle.

var triangle, sums, centroid, num_points;

triangle = argument0;

sums[0] = 0;
sums[1] = 0;

num_points = array_height_2d(triangle)

for (i = 0; i < num_points; i++) {
    for (j = 0; j < 2; j++) {
        sums[j] += triangle[i, j];
    }
}

centroid[0] = sums[0] / num_points;
centroid[1] = sums[1] / num_points;

return centroid;
