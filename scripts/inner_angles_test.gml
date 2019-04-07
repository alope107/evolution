var points;

show_debug_message("INNER ANGLES TEST");

points[0, 0] = 5;
points[0, 1] = 1;
points[1, 0] = 2;
points[1, 1] = 9;
points[2, 0] = 5;
points[2, 1] = 3;

angles = inner_angles(points);

show_debug_message("Expected: (153.43, 20.56, 6.01) (order unimportant)");
show_debug_message("Actual: (" + string(angles[0]) + ", " + string(angles[1]) + ", " + string(angles[2]) + ")");
