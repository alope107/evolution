var points;

show_debug_message("TRIANGLE SIDE LENGTHS TEST");

points[0, 0] = 5;
points[0, 1] = 1;
points[1, 0] = 2;
points[1, 1] = 9;
points[2, 0] = 5;
points[2, 1] = 3;

sides = triangle_side_lengths(points);

show_debug_message("Expected: (6.708, 2, 8.544)")
show_debug_message("Actual: (" + string(sides[0]) + ", " + string(sides[1]) + ", " + string(sides[2]) + ")");
