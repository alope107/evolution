// Creates a polygon fixture from a 2D array of points.
// Points must be ordered clockwise and be non-concave.

points = argument0;

len = array_height_2d(points);

fix = physics_fixture_create();
physics_fixture_set_polygon_shape(fix);

// Add points to fixture in clockwise order.
for (i = 0; i < len; i++) {
    physics_fixture_add_point(fix, points[i, 0], points[i, 1]);
}

return fix;
