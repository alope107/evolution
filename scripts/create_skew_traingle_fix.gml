// Creates a physics fixture in the shape of a triangle.
// scale is the maximum x or y value for each point.

scale = argument0;

num_points = 3;

// Mapping of column to value held: theta (in degrees), x, y.
t_idx = 0;
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

origin[x_idx] = sums[x_idx] / num_points;
origin[y_idx] = sums[y_idx] / num_points;

for (i = 0; i < num_points; i++) {
    // Set the theta values in degrees.
    t = point_direction(origin[x_idx], origin[y_idx], ds_grid_get(points, x_idx, i), ds_grid_get(points, y_idx, i));
    show_debug_message("Before: " + string(t));
    t = normalize_degrees(t);
    show_debug_message("After: " + string(t));
    ds_grid_add(points, t_idx, i, t);
}


// Sorts the points clockwise (decreasing theta).
ds_grid_sort(points, t_idx, false);

for (i = 0; i < num_points; i++) {
    show_debug_message("(" + string(ds_grid_get(points, t_idx, i)) + "," +
                             string(ds_grid_get(points, x_idx, i)) + "," +
                             string(ds_grid_get(points, x_idx, i)) + ")");
}

fix = physics_fixture_create();
physics_fixture_set_polygon_shape(fix);

// Add points to fixture in clockwise order.
for (i = 0; i < num_points; i++) {
    physics_fixture_add_point(fix, ds_grid_get(points, x_idx, i), ds_grid_get(points, y_idx, i));
}

ds_grid_destroy(points);
return fix;
