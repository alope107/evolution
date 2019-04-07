// Takes an array of x/y points, translates them so that the centroid
// is at the origin and returns them sorted in clockwise order.
var in_points, t_idx, x_idx, y_idx, num_points, poly, trans_x, trans_y;

in_points = argument0;

num_points = array_height_2d(in_points);

t_idx = 0;
x_idx = 1;
y_idx = 2;

points = ds_grid_create(3, num_points);

for (i = 0; i < num_points; i++) {
    for (j = 1; j < 3; j++) {
        // Set the cartesian points.
        // Subtract 1 from j to account for the fact that we're shifting the
        // cartesian points one over to make room for the theta.
        ds_grid_add(points, j, i, in_points[i, j-1]);
    }
}

centroid = triangle_centroid(in_points);


for (i = 0; i < num_points; i++) {
    // Set the theta values in degrees.
    t = point_direction(centroid[0], centroid[1], 
                        ds_grid_get(points, x_idx, i), ds_grid_get(points, y_idx, i));
    t = normalize_degrees(t);
    ds_grid_add(points, t_idx, i, t);
}


// Sorts the points clockwise (decreasing theta).
ds_grid_sort(points, t_idx, false);

// Add points to fixture in clockwise order.
for (i = 0; i < num_points; i++) {
    // Translate the points so the centroid is at the origin.
    trans_x = ds_grid_get(points, x_idx, i) - centroid[0];
    trans_y = ds_grid_get(points, y_idx, i) - centroid[1];
    poly[i, 0] = trans_x;
    poly[i, 1] = trans_y;
}

ds_grid_destroy(points);
return poly;

/*

// Takes an array of x/y points, translates them so that the centroid
// is at the origin and returns them sorted in clockwise order.
var in_points, t_idx, x_idx, y_idx, sums, num_points, poly, trans_x, trans_y;

in_points = argument0;

num_points = array_height_2d(in_points);

t_idx = 0;
x_idx = 1;
y_idx = 2;

// Mapping of column to value held: theta (in degrees), x, y.
sums[x_idx] = 0;
sums[y_idx] = 0;

points = ds_grid_create(3, num_points);

for (i = 0; i < num_points; i++) {
    for (j = 1; j < 3; j++) {
        // Set the cartesian points.
        // Subtract 1 from j to account for the fact that we're shifting the
        // cartesian points one over to make room for the theta.
        ds_grid_add(points, j, i, in_points[i, j-1]);
        
        sums[j] += in_points[i, j-1];
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

// Add points to fixture in clockwise order.
for (i = 0; i < num_points; i++) {
    // Translate the points so the centroid is at the origin.
    trans_x = ds_grid_get(points, x_idx, i) - centroid[x_idx];
    trans_y = ds_grid_get(points, y_idx, i) - centroid[y_idx];
    poly[i, 0] = trans_x;
    poly[i, 1] = trans_y;
}

ds_grid_destroy(points);
return poly;*/
