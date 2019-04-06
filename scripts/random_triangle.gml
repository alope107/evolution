// Creates a triangle and returns its points as a 2D array in clockwise order.
// The centroid of the triangle is located at the origin.
// scale is the maximum x or y value for each point.
var scale, num_points, pts;

scale = argument0;

num_points = 3;

// Create three random cartesian points.
for (i = 0; i < num_points; i++) {
    for (j = 0; j < 2; j++) {
        // Set the cartesian points.
        pts[i, j] = scale - random(2 * scale);
        //ds_grid_add(points, j, i, val);
    }
}

return sort_clockwise_and_center(pts);

// Mapping of column to value held: theta (in degrees), x, y.
/*t_idx = 0;
x_idx = 1;
y_idx = 2;

sums[x_idx] = 0;
sums[y_idx] = 0;

points = ds_grid_create(3, num_points);

for (i = 0; i < num_points; i++) {
    for (j = 1; j < 3; j++) {
        // Set the cartesian points.
        val = scale - random(2 * scale);
        ds_grid_add(points, j, i, val);
        
        sums[j] += val;
    }
}

centroid[x_idx] = sums[x_idx] / num_points;
centroid[y_idx] = sums[y_idx] / num_points;

for (i = 0; i < num_points; i++) {
    // Set the theta values in degrees.
    t = point_direction(centroid[x_idx], centroid[y_idx], ds_grid_get(points, x_idx, i), ds_grid_get(points, y_idx, i));
    t = normalize_degrees(t);
    ds_grid_add(points, t_idx, i, t);
}


// Sorts the points clockwise (decreasing theta).
ds_grid_sort(points, t_idx, false);

/*for (i = 0; i < num_points; i++) {
    show_debug_message("(" + string(ds_grid_get(points, t_idx, i)) + "," +
                             string(ds_grid_get(points, x_idx, i)) + "," +
                             string(ds_grid_get(points, y_idx, i)) + ")");
}*/

// Add points to fixture in clockwise order.
/*for (i = 0; i < num_points; i++) {
    // Translate the points so the centroid is at the origin.
    trans_x = ds_grid_get(points, x_idx, i) - centroid[x_idx];
    trans_y = ds_grid_get(points, y_idx, i) - centroid[y_idx];
    poly[i, 0] = trans_x;
    poly[i, 1] = trans_y;
}

ds_grid_destroy(points);
return poly;*/
